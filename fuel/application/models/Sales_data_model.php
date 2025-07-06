<?php
class Sales_data_model extends CI_Model {
    
    public function get_sales_data() {
        $query = $this->db->get('sales_data');
        return $query->result();
    }
}
?>
