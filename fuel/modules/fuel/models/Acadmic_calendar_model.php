<?php if (!defined('BASEPATH'))
	exit ('No direct script access allowed');
require_once ('Base_module_model.php');
class Acadmic_calendar_model extends Base_module_model
{

	public $required = array('heading');
	
	public $record_class = 'Acadmic_calendar_model_item';
	

	function __construct()
	{
		parent::__construct('acadmic_calendar'); // table name
		//echo 'notification'; die;
	}

	function list_items($limit = NULL, $offset = NULL, $col = 'publish_till', $order = 'desc', $just_count = false)
	{
		$this->db->select('id,heading, message, pdf, publish_till, published');
		$data = parent::list_items($limit, $offset, $col, $order);
		
		return $data;
	}


	



    function on_before_clean($values)
	{
        
		
		if (empty($values['publish_till']))
        {
            $values['publish_till'] = date('Y-m-d');
            
        }

     
    

        if (!empty($values['publish_till']))
        {
           
            echo $a = str_replace('/', '-',$values['publish_till']) ; echo '<br>';

            echo $b = date('Y-m-d', strtotime($a)); ; echo '<br>';

            $values['publish_till'] = $b ;
        

        }
            return $values;
		
			
	}






	function form_fields($values = array(), $related = array())
	{
		$fields = parent::form_fields();
		
		$fields['pdf'] = array(
			'ignore_representative' => TRUE,
			'type' => 'asset',
			'multiple' => FALSE,
			'folder' => 'acadmic_calendar',
			'hide_options' => TRUE,
			'comment' => 'Provide a link of attachment (Optional)'
		);

		
	
		return $fields;
	}

	function _common_query($display_unpublished_if_logged_in = NULL)
	{
		parent::_common_query(); // to do active and published
		$this->db->order_by('publish_till desc');
	}
	public function on_before_validate($values)
	{
		//  validations
		// var_dump($values);
		// die;
		if (!empty ($values['heading'])) {
			$heading = $values['heading'];
			if (!preg_match('/^[A-Za-z0-9\x{0900}-\x{097F}\-\/, ]+$/u', $heading)) {
				$this->add_error('Only alphabetical and hindi characters allowed in heading', 'heading');
				return;
			}
		}

		
		$published = $values['published'];
		if (!in_array($published, ['yes', 'no'])) {
			$this->add_error('Invalid published.', 'published');
			return;
		}
		$publish_till = $values['publish_till'];
		$is_dateValid=(bool)strtotime($publish_till);
		if(!$is_dateValid){
			$this->add_error('Release date is invalid! Enter a valid date format.', 'release_date');
			return;
		}
		return $values;
	}
}

class Acadmic_calendar_model_item extends Base_module_record
{

	
}
?>
