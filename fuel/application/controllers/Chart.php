<?php
class Chart extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Sales_data_model');
    }

    // public function index() {
    //     $data['sales_data'] = $this->Sales_data_model->get_sales_data();
    //     $this->load->view('chart_view', $data);
    // }

    public function get_chart_data() {
        $sales_data = $this->Sales_data_model->get_sales_data();
        $labels = [];
        $sales = [];

        foreach ($sales_data as $row) {
            $labels[] = $row->month;
            $sales[] = $row->sales;
        }

        echo json_encode(['labels' => $labels, 'sales' => $sales]);
    }
}
?>
