<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
require_once('Base_module_model.php');

class Syllabus_model extends Base_module_model
{
    public $required = array('headline','description','pdf');
    public $record_class = 'Syllabus_item_model';

    function __construct()
    {
        parent::__construct('syllabus'); // table name
    }

    function list_items($limit = NULL, $offset = NULL, $col = 'id', $order = 'desc', $just_count = false)
    {
        $this->db->select('id, headline, description, release_date, pdf, published');
        $data = parent::list_items($limit, $offset, $col, $order);

        foreach ($data as $key => $value) {
            // Convert PDF field to a download link
            if (!empty($value['pdf'])) {
                $data[$key]['pdf'] = '<a href="' . img_path('syllabus/' . $value['pdf']) . '" target="_blank">Download PDF</a>';
            }
        }

        return $data;
    }


    // function on_before_save($values)
    // {
    //     //   echo 'test'; die;
    //
    //     if (!empty($values['release_date']))
    //       die;
    //         // $values['release_date'] = datetime_now();
    //         $values['release_date'] = date('Y-m-d', strtotime($values['release_date']));
    //     return $values;
    // }

    
	function on_before_clean($values)
	{
      
		
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
        // $CI =& get_instance();
		// // notification group
		// if (empty ($CI->fuel_notification_groups_model)) {
		// 	$CI->load->module_model(FUEL_FOLDER, 'fuel_notification_groups_model');
		// }
		// $group_options = $CI->fuel_notification_groups_model->options_list();

        // PDF upload field
        $fields['pdf'] = array(
            'type' => 'asset',
            'multiple' => FALSE,
            'folder' => 'images/syllabus', // Updated folder path
            'hide_options' => TRUE,
            'comment' => 'Upload a PDF file.'
        );

        // Title field
        // $fields['headline'] = array(
        //     'type' => 'text',
        //     'label' => 'Headline',
        //     'comment' => 'Enter the headline for the admission record.',
        // );

    //    $fields['release_date']['comment'] = 'A release date will automatically be created for you of the current date if left blank';


        // Description field
        // $fields['description'] = array(
        //     'type' => 'textarea',
        //     'label' => 'Description',
        //     'comment' => 'Provide a brief description of the admission details.',
        // );

        // Published field
        // $fields['published'] = array(
        //     'type' => 'enum',
        //     'options' => array('yes' => 'Yes', 'no' => 'No'),
        //     'default' => 'yes',
        //     'label' => 'Published',
        //     'comment' => 'Select whether this record should be published.',
        // );

        return $fields;
    }

    function _common_query($display_unpublished_if_logged_in = NULL)
    {
        parent::_common_query();
        $this->db->order_by('id', 'desc');
    }

    public function on_before_validate($values)
    {
       

        if (!empty($values['headline'])) {
            $headline = $values['headline'];
        
            // Validate headline: allows Hindi, English letters, numbers, spaces, and special characters (., /, [])
            // Limit input to a maximum of 150 characters
            if (!preg_match('/^[A-Za-z0-9\x{0900}-\x{097F}\-\/\.,\[\]\s]{1,150}$/u', $headline)) {
                $this->add_error(
                    'Only Hindi, English letters, numbers, spaces, and ., /, [] characters are allowed in the headline, with a maximum of 150 characters.',
                    'headline'
                );
                return;
            }
        }

        // Validate PDF file
        if (!empty($values['pdf'])) {
            $pdf = $values['pdf'];
            if (!preg_match('/^[a-zA-Z0-9_\/-]+(?:\.[a-zA-Z0-9]{1,5})?$/', $pdf)) {
                $this->add_error('Only alphanumeric, slash characters, and single dot extension are allowed in PDF.', 'pdf');
                return;
            }

            $ext = pathinfo($pdf, PATHINFO_EXTENSION);
            if (strtolower($ext) !== 'pdf') {
                $this->add_error('Only PDF files are allowed.', 'pdf');
                return;
            }
        }

        // Validate published field
        if (isset($values['published']) && !in_array($values['published'], ['yes', 'no'])) {
            $this->add_error('Invalid value for published.', 'published');
            return;
        }

      


        return $values;
    }
}

class Syllabus_item_model extends Base_module_record
{
    
}
