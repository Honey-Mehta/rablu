<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
require_once(FUEL_PATH . 'models/Base_module_model.php');

class About_model extends Base_module_model
{
    public $required = ['admission','mission','vision','objective','published'];
    public $record_class = 'About_model_item';


    public function __construct()
    {
        parent::__construct('about'); // Table name
    }

    public function list_items($limit = NULL, $offset = 0, $col = 'admission', $order = 'asc', $just_count = false)
    {
        $this->db->select('id, admission, mission, vision, objective, published');
        return parent::list_items($limit, $offset, $col, $order, $just_count);
    }

    public function form_fields($values = [], $related = [])
    {
        $fields = parent::form_fields($values, $related);
        return $fields;
    }


    public function on_before_validate($values)
   {
    // Fields to validate
    $fields_to_validate = ['admission', 'mission', 'vision', 'objective'];

    foreach ($fields_to_validate as $field) {
        if (!empty($values[$field])) {
            // Check for character limit (max 250 characters)
            if (mb_strlen($values[$field], 'UTF-8') > 250) {
                $this->add_error(
                    ucfirst($field) . ' must not exceed 250 characters.',
                    $field
                );
            }
        }
    }

    return $values;
}




    public  function _common_query($display_unpublished_if_logged_in = NULL)
    {
        parent::_common_query($display_unpublished_if_logged_in);
        $this->db->order_by('admission', 'asc');
    }
}
class About_model_item extends Base_module_record
{
    
}
