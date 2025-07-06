<?php if (!defined('BASEPATH'))
	exit ('No direct script access allowed');
require_once ('Base_module_model.php');
class Imp_links_model extends Base_module_model
{

	public $required = array('headline');
	
	public $record_class = 'Imp_links_item_model';
	
	function __construct()
	{
		parent::__construct('imp_links'); // table name
	}

	function list_items($limit = NULL, $offset = NULL, $col = 'release_date', $order = 'desc', $just_count = false)
	{
		$this->db->select('id, release_date, image, headline, published, link');
		$data = parent::list_items($limit, $offset, $col, $order);
		foreach ($data as $key => $value) {
			$data[$key]['image'] = '<img src="' . img_path('svgs/' . $value['image']) . '" alt="" />';
		}
        
		foreach ($data as $key => $value) {
			$data[$key]['link'] = '<a href="' . site_url($value['link']) . '" target="_blank">View Link</a>';
		}

		return $data;
	}


	//function on_before_clean($values)
	//{
		//if (empty ($values['slug']))
		//	$values['slug'] = url_title($values['headline'], 'dash', TRUE);
	//	if (!intval($values['release_date']))
		//	$values['release_date'] = datetime_now();
	//	return $values;
	//}

	function on_before_clean($values)
	{
        if (empty ($values['slug']))
			$values['slug'] = url_title($values['headline'], 'dash', TRUE);
		
		if (empty($values['release_date']))
        {
            $values['release_date'] = date('Y-m-d');
           
        }

        if (!empty($values['release_date']))
        {
    
            echo $a = str_replace('/', '-',$values['release_date']) ; echo '<br>';

            echo $b = date('Y-m-d', strtotime($a)); ; echo '<br>';
          
        $values['release_date'] = $b ;
           

        }
            return $values;
		
			
	}




	function form_fields($values = array(), $related = array())
	{
		$fields = parent::form_fields();
		

		// $fields['pdf'] = array(
		// 	'ignore_representative' => TRUE,
		// 	'type' => 'asset',
		// 	'multiple' => FALSE,
		// 	'folder' => 'imp_links',
		// 	'hide_options' => TRUE,
		// 	'comment' => 'Provide a link of attachment (Optional)'
		// );
		//$fields['test_image'] = array('upload' => TRUE);

       $fields['image'] = array(
           'ignore_representative' => TRUE,
           'type' => 'asset',
           'multiple' => FALSE,
           'folder' => 'images/svgs',
           'hide_options' => TRUE,
           'comment' => 'Provide a link of Image (Size: width:1600px & height:600px)'
       );

		
		return $fields;
	}

	function _common_query($display_unpublished_if_logged_in = NULL)
	{
		parent::_common_query(); // to do active and published
		$this->db->order_by('release_date desc');
	}
	public function on_before_validate($values)
	{
		



     // Fields to validate
    $fields_to_validate = ['headline'];

    foreach ($fields_to_validate as $field) {
        if (!empty($values[$field])) {
            // Check for character limit (max 30 characters)
            if (mb_strlen($values[$field], 'UTF-8') > 30) {
                $this->add_error(
                    ucfirst($field) . ' must not exceed 30 characters.',
                    $field
                );
            }
        }
    }


        
       if (!empty($values['image'])) {
		
		$image = $values['image'];

		
		if (!preg_match('/^[a-zA-Z0-9_\/-]+(?:\.[a-zA-Z0-9]{1,5})?$/', $image)) {
			$this->add_error('Only alphanumeric, slash characters, and single dot extension allowed in image', 'image');
			return;
		}
		$temp = explode(".", $image);
		if (count($temp) != 2) {
			$this->add_error('Double extensions not allowed!', 'image');
			return;
		}
		$ext = $temp[1];
		if (!in_array($ext, ['svg'])) {
			$this->add_error('Only svg extensions are allowed', 'image');
			return;
		}
	}




		if (!empty ($values['headline'])) {
			$headline = $values['headline'];
			if (!preg_match('/^[A-Za-z0-9\x{0900}-\x{097F}\-\/, ]+$/u', $headline)) {
				$this->add_error('Only alphabetical and hindi characters allowed in headline', 'headline');
				return;
			}
		}

		// if(!empty($values['link'])){
		// 	$link = $values['link'];
		// 	if(!preg_match('/^[a-zA-Z0-9_\/-]+(?:\.[a-zA-Z0-9]{1,5})?$/', $link)) {
		// 		$this->add_error('Only alphanumeric,slash characters and sigle dot extension allowed in link', 'link');
		// 		return;
		// 	}
		// }

	
		
		$published = $values['published'];
		if (!in_array($published, ['yes', 'no'])) {
			$this->add_error('Invalid published.', 'published');
			return;
		}
		
		return $values;
	}
}

class Imp_links_item_model extends Base_module_record
{


}
?>
