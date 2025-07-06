<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
require_once(FUEL_PATH . 'models/Base_module_model.php');

class Contact_model extends Base_module_model
{
    public $required = ['email','location','contact_time','phone_no','published'];
    public $record_class = 'Contact_model_item';


    public function __construct()
    {
        parent::__construct('contact'); // Table name
    }

    public function list_items($limit = NULL, $offset = 0, $col = 'id', $order = 'asc', $just_count = false)
    {
        $this->db->select('id, email, location, contact_time, phone_no, published');
        return parent::list_items($limit, $offset, $col, $order, $just_count);
    }

    public function form_fields($values = [], $related = [])
    {
        $fields = parent::form_fields($values, $related);
        
       

        return $fields;
    }






    public function on_before_validate($values)
    {
        // Email validation
        if (!empty($values['email']) && !filter_var($values['email'], FILTER_VALIDATE_EMAIL)) {
            $this->add_error('Invalid email format.', 'email');
        }

       
            // Fields to validate
            $fields_to_validate = ['location'];

            foreach ($fields_to_validate as $field) {
                if (!empty($values[$field])) {
                    // Check for character limit (max 150 characters)
                    if (mb_strlen($values[$field], 'UTF-8') > 150) {
                        $this->add_error(
                            ucfirst($field) . ' must not exceed 150 characters.',
                            $field
                        );
                    }
                }
            }

       

        // Phone Number validation (allow 10-15 digits)
        if (!empty($values['phone_no'])) {
            if (!preg_match('/^[0-9]{10,15}$/', $values['phone_no'])) {
                $this->add_error('Phone number must contain 10-15 digits.', 'phone_no');
            }
        }

        

        return $values;
    }












    public  function _common_query($display_unpublished_if_logged_in = NULL)
    {
        parent::_common_query($display_unpublished_if_logged_in);
        $this->db->order_by('id', 'asc');
    }
}
class Contact_model_item extends Base_module_record
{
    
}
