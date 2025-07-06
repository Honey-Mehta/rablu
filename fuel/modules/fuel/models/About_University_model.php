<?php if (!defined('BASEPATH'))
	exit('No direct script access allowed');
require_once('Base_module_model.php');
class About_University_model extends Base_module_model
{

	public $required = array('about_university','published');

	public $record_class = 'About_University_model_item';
	//public $filters = array('published'=>'yes'); // the default list view group value for filtering

	function __construct()
	{
		parent::__construct('about_university'); // table name
		// echo 'bharat'; die;
	}

	function list_items($limit = NULL, $offset = NULL, $col = 'about_university', $order = 'desc', $just_count = false)
    {
    $this->db->select('id, about_university,  published');
    $data = parent::list_items($limit, $offset, $col, $order);

    
    
    return $data;
   }


   function form_fields($values = array(), $related = array())
   {
       $fields = parent::form_fields();

    

       return $fields;
   }

   function _common_query($display_unpublished_if_logged_in = NULL)
   {
       parent::_common_query();
       $this->db->order_by('id desc');
   }

   public function on_before_validate($values)
   {
      
      // Fields to validate
    $fields_to_validate = ['about_university'];

    foreach ($fields_to_validate as $field) {
        if (!empty($values[$field])) {
            // Check for character limit (max 1000 characters)
            if (mb_strlen($values[$field], 'UTF-8') > 1000) {
                $this->add_error(
                    ucfirst($field) . ' must not exceed 1000 characters.',
                    $field
                );
            }
        }
    }




       $published = $values['published'];
       if (!in_array($published, ['yes', 'no'])) {
           $this->add_error('Invalid published.', 'published');
           return;
       }
       return $values;
   }
}


class About_University_model_item extends Base_module_record
{

	
}
?>
