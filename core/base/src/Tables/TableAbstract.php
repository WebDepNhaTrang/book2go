<?php

namespace Botble\Base\Tables;

use Assets;
use Html;
use Illuminate\Contracts\Routing\UrlGenerator;
use Yajra\DataTables\Services\DataTable;
use Yajra\DataTables\DataTables;

abstract class TableAbstract extends DataTable
{

    const TABLE_TYPE_ADVANCED = 'advanced';
    const TABLE_TYPE_SIMPLE = 'simple';

    /**
     * @var bool
     */
    protected $bStateSave = true;

    /**
     * @var DataTables
     */
    protected $table;

    /**
     * @var string
     */
    protected $type = self::TABLE_TYPE_ADVANCED;

    /**
     * @var string
     */
    protected $ajax_url;

    /**
     * @var int
     */
    protected $page_length = 10;

    /**
     * @var string
     */
    protected $view = 'core.base::elements.table';

    /**
     * @var array
     */
    protected $options = [];

    /**
     * @var bool
     */
    protected $has_checkbox = true;

    /**
     * @var bool
     */
    protected $has_operations = true;

    /**
     * TableAbstract constructor.
     * @param DataTables $table
     * @param UrlGenerator $urlGenerator
     */
    public function __construct(Datatables $table, UrlGenerator $urlGenerator)
    {
        $this->table = $table;
        $this->ajax_url = $urlGenerator->current();

        if ($this->type == self::TABLE_TYPE_SIMPLE) {
            $this->page_length = -1;
        }
        if (!$this->getOption('id')) {
            $this->setOption('id', 'table_' . md5(get_class($this)));
        }
    }

    /**
     * @return string
     */
    public function getType(): string
    {
        return $this->type;
    }

    /**
     * @param string $type
     * @return $this
     */
    public function setType(string $type): self
    {
        $this->type = $type;
        return $this;
    }

    /**
     * @return string
     */
    public function getAjaxUrl(): string
    {
        return $this->ajax_url;
    }

    /**
     * @param string $ajax_url
     * @return $this
     */
    public function setAjaxUrl(string $ajax_url): self
    {
        $this->ajax_url = $ajax_url;
        return $this;
    }

    /**
     * @return string
     */
    public function getView(): string
    {
        return $this->view;
    }

    /**
     * @param string $view
     * @return $this
     */
    public function setView(string $view): self
    {
        $this->view = $view;
        return $this;
    }

    /**
     * @return array
     */
    public function getOptions(): array
    {
        return $this->options;
    }

    /**
     * @param $key
     * @return string
     */
    public function getOption($key): string
    {
        $option = array_get($this->options, $key);
        return (string)$option;
    }

    /**
     * @param array $options
     * @return $this
     */
    public function setOptions(array $options): self
    {
        $this->options = array_merge($this->options, $options);
        return $this;
    }

    /**
     * @param $key
     * @param $value
     * @return $this
     */
    public function setOption($key, $value): self
    {
        $this->options[$key] = $value;
        return $this;
    }

    /**
     * @return null|string
     */
    protected function getDom()
    {
        $dom = null;

        switch ($this->type) {
            case self::TABLE_TYPE_ADVANCED:
                $dom = "Brt<'datatables__info_wrap'pli<'clearfix'>>";
                break;
            case self::TABLE_TYPE_SIMPLE:
                $dom = "t<'datatables__info_wrap'<'clearfix'>>";
                break;
        }

        return $dom;
    }

    /**
     * Optional method if you want to use html builder.
     *
     * @return \Yajra\Datatables\Html\Builder
     * @author Sang Nguyen
     * @since 2.1
     * @throws \Throwable
     */
    public function html()
    {
        return $this->builder()
            ->columns($this->getColumns())
            ->ajax(['url' => $this->getAjaxUrl()])
            ->parameters([
                'dom' => $this->getDom(),
                'buttons' => $this->getBuilderParameters(),
                'initComplete' => $this->htmlInitComplete(),
                'drawCallback' => $this->htmlDrawCallback(),
                'paging' => true,
                'searching' => true,
                'info' => true,
                'searchDelay' => 350,
                'bStateSave' => $this->bStateSave,
                'lengthMenu' => [
                    [10, 30, 50, -1],
                    [10, 30, 50, trans('core.base::tables.all')]
                ],
                'pageLength' => $this->page_length,
                'processing' => true,
                'serverSide' => true,
                'bServerSide' => true,
                'bDeferRender' => true,
                'bProcessing' => true,
                'language' => [
                    'aria' => [
                        'sortAscending' => 'orderby asc',
                        'sortDescending' => 'orderby desc',
                        'paginate' => [
                            'next' => trans('pagination.next'),
                            'previous' => trans('pagination.previous'),
                        ],
                    ],
                    'emptyTable' => trans('core.base::tables.no_data'),
                    'info' => '<span class="dt-length-records"><i class="fa fa-globe"></i> <span class="hidden-xs">' . trans('core.base::tables.show_from') . '</span> _START_ ' . trans('core.base::tables.to') . ' _END_ ' . trans('core.base::tables.in') . ' <span class="badge bold badge-dt">_TOTAL_</span> <span class="hidden-xs">' . trans('core.base::tables.records') . '</span></span>',
                    'infoEmpty' => trans('core.base::tables.no_record'),
                    'infoFiltered' => '(' . trans('core.base::tables.filtered_from') . ' _MAX_ ' . trans('core.base::tables.records') . ')',
                    'lengthMenu' => '<span class="dt-length-style">_MENU_</span>',
                    'search' => '',
                    'zeroRecords' => trans('core.base::tables.no_record'),
                    'processing' => '<img src="' . url('/vendor/core/images/loading-spinner-blue.gif') . '" />',
                    'paginate' => [
                        'next' => trans('pagination.next'),
                        'previous' => trans('pagination.previous'),
                    ],
                ],
            ]);
    }

    /**
     * @return string
     * @author Sang Nguyen
     */
    public function htmlInitComplete()
    {
        return 'function () {
                $(".checkboxes").uniform();
                $(".dataTables_wrapper").css({"width": $(this).closest(".dataTable").width()});
                
                var index = 0;
                var totalLength = this.api().columns().count();
                var tr = document.createElement("tr");
                $(tr).prop("role", "row").addClass("dataTable-custom-filter").css({"display": "none"});
                this.api().columns().every(function () {
                    var column = this;
                
                    index++;
                    $(document.createElement("th")).appendTo($(tr));
                    if (index == totalLength) {
                        var searchBtn = document.createElement("a");
                        $(searchBtn).addClass("btn btn-info btn-sm btn-search-table tip").attr("data-original-title", "Search").appendTo($(tr).find("th:nth-child(" + index + ")")).html("<i class=\'fa fa-search\'></i>");
                        var clearBtn = document.createElement("a");
                        $(clearBtn).addClass("btn btn-warning btn-sm btn-reset-table tip").attr("data-original-title", "Clear search").appendTo($(tr).find("th:nth-child(" + index + ")")).html("<i class=\'fa fa-times\'></i>");
                    } else if ($(column.header()).hasClass("searchable")) {
                
                        var input = document.createElement("input");
                        $(input).addClass("form-control input-sm");
                
                        var placeholder = "Search...";
                        if ($(column.header()).hasClass("searchable_id")) {
                            placeholder = "...";
                        }
                        $(input).prop("type", "text").css("width", "100%").prop("placeholder", placeholder).appendTo($(tr).find("th:nth-child(" + index + ")"))
                            .on("keyup", function () {
                                var that = this;
                                setTimeout(function(){ column.search($(that).val()).draw(); }, 1000);
                            });
                    } else if ($(column.header()).hasClass("column-select-search")) {
                        var select = $(\'<select class="form-control input-sm" data-placeholder="Select to filter"><option value="">Select to filter</option></select>\')
                            .appendTo($(tr).find("th:nth-child(" + index + ")"))
                            .on("change", function () {
                                var val = $.fn.dataTable.util.escapeRegex(
                                    $(this).val()
                                );
                
                                column.search(val ? "^" + val + "$" : "", true, false).draw();
                            });
                
                        column.data().unique().sort().each(function (d, j) {
                            var value = $(d).data("value");
                            var text = $(d).data("text");
                            if (column.search() === "^" + value + "$") {
                                select.append(\'<option value="\' + value + \'" selected="selected">\' + text + \'</option>\')
                            } else {
                                select.append(\'<option value="\' + value + \'">\' + text + \'</option>\')
                            }
                        });
                    }
                });
                $(tr).appendTo($(this).closest(".dataTable").find("thead"));
                
                if (jQuery().select2) {
                    $(document).find(".select-multiple").select2({
                        width: "100%",
                        allowClear: true,
                        placeholder: $(this).data("placeholder")
                    });
                    $(document).find(".select-search-full").select2({
                        width: "100%"
                    });
                    $(document).find(".select-full").select2({
                        width: "100%",
                        minimumResultsForSearch: -1
                    });
                }
            }';
    }

    /**
     * @return string
     * @author Sang Nguyen
     */
    public function htmlDrawCallback()
    {
        if ($this->type == self::TABLE_TYPE_SIMPLE) {
            return null;
        }

        return 'function () {
                var pagination = $(this).closest(".dataTables_wrapper").find(".dataTables_paginate");
                pagination.toggle(this.api().page.info().pages > 1);
                
                var data_count = this.api().data().count();
                
                var length_select = $(this).closest(".dataTables_wrapper").find(".dataTables_length");
                var length_info = $(this).closest(".dataTables_wrapper").find(".dataTables_info");
                length_select.toggle(data_count >= 10);
                length_info.toggle(data_count > 0);
                    
                $(".checkboxes").uniform();
                
                $(document).on("click", ".btn-search-table", function () {
                    $(this).closest(".dataTables_wrapper").find("tfoot tr input").trigger("change");
                });
                
                if (jQuery().select2) {
                    $(document).find(".select-multiple").select2({
                        width: "100%",
                        allowClear: true,
                        placeholder: $(this).data("placeholder")
                    });
                    $(document).find(".select-search-full").select2({
                        width: "100%"
                    });
                    $(document).find(".select-full").select2({
                        width: "100%",
                        minimumResultsForSearch: -1
                    });
                }
            }';
    }

    /**
     * @return array
     * @author Sang Nguyen
     * @since 2.1
     * @throws \Throwable
     */
    public function getBuilderParameters()
    {
        if ($this->type == self::TABLE_TYPE_SIMPLE) {
            return [
                'stateSave' => true,
            ];
        }

        $buttons = array_merge($this->getButtons(), $this->getActionsButton());
        return [
            'stateSave' => true,
            'buttons' => array_merge($buttons, $this->getDefaultButtons()),
        ];
    }

    /**
     * @return array
     * @author Sang Nguyen
     */
    public function getActionsButton()
    {
        return [
            [
                'extend' => 'collection',
                'text' => '<span>' . trans('core.base::forms.actions') . ' <span class="caret"></span></span>',
                'buttons' => $this->getActions(),
            ],
        ];
    }

    /**
     * @return array
     * @author Sang Nguyen
     * @throws \Throwable
     */
    public function getDefaultButtons()
    {
        return [
            'export',
            'print',
            [
                'link' => '#',
                'text' => view('core.base::elements.tables.filter')->render(),
            ],
            'reset',
            'reload',
        ];
    }

    /**
     * @return mixed
     * @author Sang Nguyen
     * @since 2.1
     */
    abstract public function columns();

    /**
     * @return mixed
     * @author Sang Nguyen
     * @since 2.1
     */
    abstract public function buttons();

    /**
     * @return mixed
     * @author Sang Nguyen
     * @since 2.1
     */
    abstract public function actions();

    /**
     * @return array
     * @author Sang Nguyen
     * @since 2.1
     */
    public function getButtons()
    {
        $buttons = [];
        foreach ($this->buttons() as $key => $button) {
            if (array_get($button, 'extend') == 'collection') {
                $buttons[] = $button;
            } else {
                $buttons[] = [
                    'className' => 'action-item',
                    'text' => Html::tag('span', $button['text'], [
                        'data-action' => $key,
                        'data-href' => array_get($button, 'link'),
                    ])->toHtml(),
                ];
            }
        }
        return $buttons;
    }

    /**
     * @return array
     * @author Sang Nguyen
     * @since 2.1
     */
    public function getActions()
    {
        if ($this->type == self::TABLE_TYPE_SIMPLE) {
            return [];
        }

        $actions = [];
        foreach ($this->actions() as $key => $action) {
            $actions[] = [
                'className' => 'action-item',
                'text' => '<span data-action="' . $key . '" data-href="' . $action['link'] . '"> ' . $action['text'] . '</span>',
            ];
        }
        return $actions;
    }

    /**
     * Get columns.
     *
     * @return array
     * @author Sang Nguyen
     * @since 2.1
     */
    public function getColumns()
    {
        if ($this->type == self::TABLE_TYPE_SIMPLE) {
            return $this->columns();
        }

        $columns = $this->columns();

        if ($this->has_checkbox) {
            $columns = array_merge($this->getStatusColumnHeading(), $columns);
        }

        $columns = apply_filters(BASE_FILTER_TABLE_HEADINGS, $columns, $this->filename());

        if ($this->has_operations) {
            $columns = array_merge($columns, $this->getOperationsHeading());
        }

        return $columns;
    }

    /**
     * @return array
     * @author Sang Nguyen
     */
    public function getStatusColumnHeading()
    {
        return [
            'checkbox' => [
                'width' => '10px',
                'class' => 'text-left no-sort',
                'title' => '<div class="checkbox checkbox-primary"><input type="checkbox" class="group-checkable" data-set=".dataTable .checkboxes" /></div>',
                'orderable' => false,
                'searchable' => false,
                'exportable' => false,
                'printable' => false,
            ],
        ];
    }

    /**
     * @return array
     * @author Sang Nguyen
     */
    public function getOperationsHeading()
    {
        return [
            'operations' => [
                'title' => trans('core.base::tables.operations'),
                'width' => '134px',
                'class' => 'text-center',
                'orderable' => false,
                'searchable' => false,
                'exportable' => false,
                'printable' => false,
            ]
        ];
    }

    /**
     * @param string $view
     * @param array $data
     * @param array $mergeData
     * @return mixed
     * @author Sang Nguyen
     */
    public function render($view, $data = [], $mergeData = [])
    {
        Assets::addJavascript(['datatables']);
        Assets::addStylesheets(['datatables']);
        Assets::addAppModule(['datatables']);

        $data['id'] = array_get($data, 'id', $this->getOption('id'));
        $data['class'] = array_get($data, 'class', '') . ' table table-striped custom-table m-b-0 datatable';

        $this->setOptions($data);

        return parent::render($view, $data, $mergeData);
    }

    /**
     * @param array $data
     * @param array $mergeData
     * @param string $view
     * @return \Illuminate\Http\JsonResponse|\Illuminate\View\View
     * @since 2.4
     * @author Sang Nguyen
     */
    public function renderTable($data = [], $mergeData = [])
    {
        return $this->render($this->view, $data, $mergeData);
    }
}
