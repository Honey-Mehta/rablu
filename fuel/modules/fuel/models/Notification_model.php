<?php if (!defined('BASEPATH'))
	exit ('No direct script access allowed');
require_once ('Base_module_model.php');
class Notification_model extends Base_module_model
{

	public $required = array('headline');
	
	public $record_class = 'notification_item';

   
	function __construct()
	{
		parent::__construct('notification'); // table name
		//echo 'notification'; die;
	}

	function list_items($limit = NULL, $offset = NULL, $col = 'id', $order = 'desc', $just_count = false)
	{
		$this->db->select('id, headline, pdf, release_date, published');
		$data = parent::list_items($limit, $offset, $col, $order);
		
		return $data;
	}


	



    function on_before_clean($values)
	{
        // if (empty ($values['slug']))
		// 	$values['slug'] = url_title($values['headline'], 'dash', TRUE);
		
		if (empty($values['release_date']))
        {
            $values['release_date'] = date('Y-m-d');
            // return $values;

        }

    

        if (!empty($values['release_date']))
        {
           

            echo $a = str_replace('/', '-',$values['release_date']) ; echo '<br>';

            echo $b = date('Y-m-d', strtotime($a)); ; echo '<br>';

          
        $values['release_date'] = $b ;
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
			'folder' => 'notification',
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



              // Fields to validate
    $fields_to_validate = ['content'];

    foreach ($fields_to_validate as $field) {
        if (!empty($values[$field])) {
            // Check for character limit (max 200 characters)
            if (mb_strlen($values[$field], 'UTF-8') > 200) {
                $this->add_error(
                    ucfirst($field) . ' must not exceed 200 characters.',
                    $field
                );
            }
        }
    }

	$fields_to_validate = ['headline'];

    foreach ($fields_to_validate as $field) {
        if (!empty($values[$field])) {
            // Check for character limit (max 30 characters)
            if (mb_strlen($values[$field], 'UTF-8') > 50) {
                $this->add_error(
                    ucfirst($field) . ' must not exceed 50 characters.',
                    $field
                );
            }
        }
    }



	
		if (!empty ($values['headline'])) {
			$headline = $values['headline'];
			if (!preg_match('/^[A-Za-z0-9\x{0900}-\x{097F}\-\/, ]+$/u', $headline)) {
				$this->add_error('Only alphabetical and hindi characters allowed in headline', 'headline');
				return;
			}
		}


	
		// if (!empty($values['slug'])) {
		// 	$slug=$values['slug'];
		// 	if (!preg_match('/^[A-Za-z0-9-]+$/', $slug)) {
		// 		$this->add_error('Only alphanumerical and slash characters allowed in slug', 'slug');
		// 		return;
		// 	}
		// }
		$published = $values['published'];
		if (!in_array($published, ['yes', 'no'])) {
			$this->add_error('Invalid published.', 'published');
			return;
		}
		$release_date = $values['release_date'];
		$is_dateValid=(bool)strtotime($release_date);
		if(!$is_dateValid){
			$this->add_error('Release date is invalid! Enter a valid date format.', 'release_date');
			return;
		}
		return $values;
	}
}

class Notification_item_model extends Base_module_record
{

	
}
?>
