<?php if (!defined('BASEPATH'))
	exit ('No direct script access allowed');
require_once ('Base_module_model.php');
class Tender_model extends Base_module_model
{

	public $required = array('name');
	
	public $record_class = 'Tender_model_item';

   
	function __construct()
	{
		parent::__construct('tender'); // table name
		//echo 'notification'; die;
	}

	function list_items($limit = NULL, $offset = NULL, $col = 'id', $order = 'desc', $just_count = false)
	{
		$this->db->select('id, name, description, tender_date, pdf, published');
		$data = parent::list_items($limit, $offset, $col, $order);
        foreach ($data as $key => $value) {
            // Convert PDF field to a download link
            if (!empty($value['pdf'])) {
                $data[$key]['pdf'] = '<a href="' . site_url('assets/tender/' . $value['pdf']) . '" target="_blank">Download PDF</a>';
            }
        }


		return $data;
	}


	



    function on_before_clean($values)
	{
        if (empty ($values['slug']))
			$values['slug'] = url_title($values['headline'], 'dash', TRUE);
		
		if (empty($values['tender_date']))
        {
            $values['tender_date'] = date('Y-m-d');
            // return $values;

        }

    

        if (!empty($values['tender_date']))
        {
           

            echo $a = str_replace('/', '-',$values['tender_date']) ; echo '<br>';

            echo $b = date('Y-m-d', strtotime($a)); ; echo '<br>';

          
        $values['tender_date'] = $b ;
            //  var_dump($values); die;



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
			'folder' => 'tender',
			'hide_options' => TRUE,
			'comment' => 'Provide a link of attachment (Optional)'
		);

	
		return $fields;
	}

	function _common_query($display_unpublished_if_logged_in = NULL)
	{
		parent::_common_query(); // to do active and published
		$this->db->order_by('id desc');
	}
	public function on_before_validate($values)
	{
	
		if (!empty($values['name'])) {
			$name = $values['name'];
		
			// Ensure only valid characters: English letters, Hindi characters, hyphens, commas, spaces, and slashes
			if (!preg_match('/^[A-Za-z0-9\x{0900}-\x{097F}\-\/, ]+$/u', $name)) {
				$this->add_error('Only alphabetical, Hindi characters, hyphens, commas, spaces, and slashes are allowed in the name.', 'name');
				return;
			}
		
			// Ensure the name does not exceed 30 characters
			if (mb_strlen($name, 'UTF-8') > 30) {
				$this->add_error('The name must not exceed 30 characters.', 'name');
				return;
			}
		}


	
		if (!empty($values['slug'])) {
			$slug=$values['slug'];
			if (!preg_match('/^[A-Za-z0-9-]+$/', $slug)) {
				$this->add_error('Only alphanumerical and slash characters allowed in slug', 'slug');
				return;
			}
		}
		$published = $values['published'];
		if (!in_array($published, ['yes', 'no'])) {
			$this->add_error('Invalid published.', 'published');
			return;
		}
		$release_date = $values['tender_date'];
		$is_dateValid=(bool)strtotime($release_date);
		if(!$is_dateValid){
			$this->add_error('Tender date is invalid! Enter a valid date format.', 'tender_date');
			return;
		}
		return $values;
	}
}

class Tender_model_item extends Base_module_record
{

	
}
?>
