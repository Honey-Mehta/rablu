<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
/*
 * Bootstrap menu helper
 * renders menu and optionally 2 sub menu deep
 * Config array is same as for fuel_nav() 
 */
if (!function_exists('bootstrap_menu'))
{
    function bootstrap_menu($config = NULL, $float = NULL, $toggle = TRUE) {
        $menu = (is_array($config)) ? fuel_nav(array_merge($config, array('render_type' => 'array'))) : fuel_nav(array('render_type' => 'array'));
        if (is_array($menu)) {
            $container_class = isset($config['container_tag_class']) ? 'exo-menu ' . $config['container_tag_class'] : 'exo-menu';
            $container_id = isset($config['container_tag_id']) ? ' id="' . $config['container_tag_id'] . '"' : '';
            if (isset($float))
                $container_class .= ($float == 'left') ? ' menu-left' : ' menu-right';
            $container_start = '<ul class="' . $container_class . '"' . $container_id . '>';
            $container_end = "</ul>\n";
            $list = '';
            $counter = 0;
            $last = 0;
            $data_toggle = $toggle ? ' data-toggle="submenu" ' : NULL;

            // Find number of displayable links
            foreach ($menu as $show) {
                if ($show['hidden'] == 'no')
                    $last++;
            }
            foreach ($menu as $item) {
                if ($item['hidden'] == 'no') {
                    $classes = ($counter == 0) ? 'drop-down ' : '';
                    $classes .= ($counter == ($last - 1)) ? 'drop-down ' : '';
                    $classes .= (strpos('/'.uri_string().'/', $item['location'].'/') === 1 ) ? ' active' : ''; // Good enough for navbar purposes where only top level visible

                    if (isset($item['children'])) {
                        //NB removing data-toggle="dropdown" from the <a> element allows link to be followed
                        $glyphicon = '<i class="fa fa-cogs"></i>';
                        $glyphicon_child = '&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-cogs"></i>';

                        $attributes = empty($item['attributes']) ? ' class=""'.$data_toggle : ' class=""'.$data_toggle.$item['attributes'];
                        $link = '<li class="drop-down' . $classes . '"> <a href="#">'. $glyphicon. $item['label'].' </a>';
                        if (is_array($item['children'])) {
                            $sublist = '';
                            $sub_container_start = '<ul class="drop-down-ul animated fadeIn">';
                            $sub_container_end = $container_end;
                            foreach ($item['children'] as $sub_item) {
                                if (isset($sub_item['children'])) {
                                    $sublist .= '<li class=" ' . $classes . '"><a class="" href="'.base_url($sub_item['location']).'"'.$attributes.'>'. $glyphicon. $sub_item['label'].' </a>';
                                    if (is_array($sub_item['children'])) {
                                        $child_sublist = '';
                                        foreach ($sub_item['children'] as $child_sub_item) {
                                            $child_sublist .= '<li>' . anchor($child_sub_item['location'], $glyphicon_child. $child_sub_item['label'], $child_sub_item['attributes']) . '</li>';
                                        }
                                        $child_sublist = $sub_container_start . $child_sublist . $sub_container_end;
                                        $sublist .= $child_sublist . '</li>';
                                    }                                  
                                } else {
                                    $sublist .= '<li class="">' . anchor($sub_item['location'],   $sub_item['label'], ' class=""') . '</li>';
                                }
                            }
                            $sublist = $sub_container_start . $sublist . $sub_container_end;
                            $link .= $sublist . '</li>';
                        }
                    } else {
                        $link = '<li class="">' . anchor($item['location'], $item['label'], ' class=""') . '</li>';
                    }
                    $list .= $link;                
                    $counter++;
                }
            }

            // Adding the toggle menu button before the closing </ul> tag
            return $container_start . $list . '<a href="#" class="toggle-menu visible-xs-block">|||</a>' . $container_end;
        } else {
            return '<!-- no menu data -->';
        }
    }
}
?>
