function overrideCss(id) {
    $('#' + id).wrap('<div id="wrapper_' + id + '"><div class="container_content_codemirror"></div> </div>');
    $('#wrapper_' + id).append('<div class="handle-tool-drag" id="tool-drag_' + id + '"></div>');
    CodeMirror.fromTextArea(document.getElementById(id), {
        extraKeys: {'Ctrl-Space': 'autocomplete'},
        lineNumbers: true,
        mode: 'css',
        autoRefresh: true,
        lineWrapping: true,
    });
}

function onDragTool(e) {
    ele = '#' + $('body').attr('data-dragtool');
    container = $(ele).parent().find('.CodeMirror');
    start_h = parseInt($(ele).attr('data-start_h'));

    $(ele).parent().find('.CodeMirror').css('height', Math.max(200, start_h + e.pageY - $(ele).attr('data-start_y')));
}

function onReleaseTool() {
    $('body').off('mousemove', onDragTool);
    $(window).off('mouseup', onReleaseTool);
}

$(document).ready(function () {
    overrideCss('custom_css');

    $('.handle-tool-drag').mousedown(function (e) {
        $(this).attr('data-start_h', $(this).parent().find('.CodeMirror').height()).attr('data-start_y', e.pageY);
        $('body').attr('data-dragtool', $(this).attr('id')).on('mousemove', onDragTool);
        $(window).on('mouseup', onReleaseTool);
    });
});