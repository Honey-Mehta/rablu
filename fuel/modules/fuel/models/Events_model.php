<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

require_once('Base_module_model.php');

class Events_model extends Base_module_model
{
    public $required = ['headline'];
    public $record_class = 'Events_Item_model';

    public function __construct()
    {
        parent::__construct('events'); // table name
    }

    public function list_items($limit = NULL, $offset = NULL, $col = 'release_date', $order = 'desc', $just_count = false)
    {
        $this->db->select('id, release_date, headline, published');
        return parent::list_items($limit, $offset, $col, $order);
    }

    public function on_before_clean($values)
    {
        // if (empty($values['slug'])) {
        //     $values['slug'] = url_title($values['headline'], 'dash', TRUE);
        // }
        // if (empty($values['release_date'])) {
        //     $values['release_date'] = date('Y-m-d');
        // }
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

    public function form_fields($values = [], $related = [])
    {
        $fields = parent::form_fields();

        $fields['link'] = [
            'ignore_representative' => TRUE,
            'type' => 'asset',
            'multiple' => FALSE,
            'folder' => 'notification',
            'hide_options' => TRUE,
            'comment' => 'Provide a link of attachment (Optional)'
        ];

        // $fields['slug']['comment'] = 'If no slug is provided, one will be generated automatically.';
        $fields['release_date']['comment'] = 'A release date will default to the current date if left blank.';
        return $fields;
    }

    public function _common_query($display_unpublished_if_logged_in = NULL)
    {
        parent::_common_query();
        $this->db->select('*');
        $this->db->order_by('release_date', 'desc');
        return $this->db;
    }

    public function on_before_validate($values)
    {




        $fields_to_validate = ['headline'];

    foreach ($fields_to_validate as $field) {
        if (!empty($values[$field])) {
            // Check for character limit (max 30characters)
            if (mb_strlen($values[$field], 'UTF-8') > 30) {
                $this->add_error(
                    ucfirst($field) . ' must not exceed 30 characters.',
                    $field
                );
            }
        }
    }




        if (!empty($values['headline'])) {
            if (!preg_match('/^[A-Za-z0-9\x{0900}-\x{097F}\-\/, ]+$/u', $values['headline'])) {
                $this->add_error('Only alphabetical and Hindi characters are allowed in the headline.', 'headline');
            }
        }

        if (!empty($values['link'])) {
            if (!preg_match('/^[a-zA-Z0-9_\/-]+(?:\.[a-zA-Z0-9]{1,5})?$/', $values['link'])) {
                $this->add_error('Only alphanumeric, slash characters, and a single dot extension are allowed in the link.', 'link');
            }
        }

        // if (!empty($values['slug'])) {
        //     if (!preg_match('/^[A-Za-z0-9-]+$/', $values['slug'])) {
        //         $this->add_error('Only alphanumeric and hyphen characters are allowed in the slug.', 'slug');
        //     }
        // }

        if (isset($values['published']) && !in_array($values['published'], ['yes', 'no'])) {
            $this->add_error('Invalid value for published. Only "yes" or "no" are allowed.', 'published');
        }

        // if (!empty($values['release_date'])) {
        //     $date = DateTime::createFromFormat('Y-m-d', $values['release_date']);
        //     if (!$date || $date->format('Y-m-d') !== $values['release_date']) {
        //         $this->add_error('Release date is invalid! Enter a valid date in YYYY-MM-DD format.', 'release_date');
        //     }
        // }

        return $values;
    }
}

class Events_Item_model extends Base_module_record
{
    
}
?>
