<?php if (!defined('BASEPATH'))
	exit('No direct script access allowed');
require_once('Base_module_model.php');
class Mission_vision_model extends Base_module_model
{

	public $required = array('mission','vision','published');

	public $record_class = 'Mission_vision_model_item';
	//public $filters = array('published'=>'yes'); // the default list view group value for filtering

	function __construct()
	{
		parent::__construct('mission_vision'); // table name
		// echo 'bharat'; die;
	}

	function list_items($limit = NULL, $offset = NULL, $col = 'mission', $order = 'desc', $just_count = false)
    {
    $this->db->select('id, mission, vision, published');
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
     $fields_to_validate = ['mission', 'vision'];
 
     foreach ($fields_to_validate as $field) {
         if (!empty($values[$field])) {
             // Check for character limit (max 550 characters)
             if (mb_strlen($values[$field], 'UTF-8') > 550) {
                 $this->add_error(
                     ucfirst($field) . ' must not exceed 550 characters.',
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


class Mission_vision_model_item extends Base_module_record
{

	public function get_image_path()
	{
		return img_path('vc_message/' . $this->image);
	}
}
?>
