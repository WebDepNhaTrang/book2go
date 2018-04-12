<?php

namespace Botble\Blog\Supports;

class Template
{
    /**
     * @var array
     */
    protected static $postTemplates = [];

    /**
     * @var array
     */
    protected static $categoryTemplates = [];

    /**
     * @param $templates
     * @return void
     * @author Sang Nguyen
     * @since 16-09-2016
     */
    public static function registerPostTemplate($templates = [])
    {
        foreach ($templates as $key => $template) {
            if (in_array($key, self::getExistsTemplate())) {
                self::$postTemplates[$key] = $template;
            }
        }
    }

    /**
     * @return array
     * @author Sang Nguyen
     * @since 16-09-2016
     */
    protected static function getExistsTemplate()
    {
        $files = scan_folder(public_path() . DIRECTORY_SEPARATOR . config('core.theme.general.themeDir') . DIRECTORY_SEPARATOR . setting('theme') . DIRECTORY_SEPARATOR . config('core.theme.general.containerDir.layout'));
        foreach ($files as $key => $file) {
            $files[$key] = str_replace('.blade.php', '', $file);
        }
        return $files;
    }

    /**
     * @return array
     * @author Sang Nguyen
     * @since 16-09-2016
     */
    public static function getPostTemplates()
    {
        return self::$postTemplates;
    }

    /**
     * @param $templates
     * @return void
     * @author Sang Nguyen
     * @since 16-09-2016
     */
    public static function registerCategoryTemplate($templates = [])
    {
        foreach ($templates as $key => $template) {
            if (in_array($key, self::getExistsTemplate())) {
                self::$categoryTemplates[$key] = $template;
            }
        }
    }

    /**
     * @return array
     * @author Sang Nguyen
     * @since 16-09-2016
     */
    public static function getCategoryTemplates()
    {
        return self::$categoryTemplates;
    }
}
