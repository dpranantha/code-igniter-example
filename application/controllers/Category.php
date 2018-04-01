<?php
class Category extends CI_Controller {

        public function __construct()
        {
            parent::__construct();
            $this->load->model('category_model');
            $this->load->helper('url_helper');
        }

        public function index()
        {
            $data['categories'] = $this->category_model->get_category();
            $data['title'] = 'Categories';

            $this->load->view('templates/header', $data);
            $this->load->view('templates/menu', $data);
            $this->load->view('category/category', $data);
            $this->load->view('templates/footer');
        }

        public function view($id = NULL)
        {
            $data['categories_item'] = $this->category_model->get_category($id);
            if (empty($data['categories_item']))
            {
                    show_404();
            }

            $data['title'] = $data['categories_item']['name'];

            $this->load->view('templates/header', $data);
            $this->load->view('templates/menu', $data);
            $this->load->view('category/products', $data);
            $this->load->view('templates/footer');
        }
}