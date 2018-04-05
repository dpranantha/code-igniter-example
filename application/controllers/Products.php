<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Products extends CI_Controller {
        
        public function __construct()
        {
            parent::__construct();
            $this->load->model('category_model');
            $this->load->model('product_model');
            $this->load->helper('url_helper');  
            $this->load->helper('tree');     
        }

        public function index($title = 'All Products')
        {            
            $data['title'] = $title;

            //get category tree
            $category_tree = $this->category_model->get_category_tree();
            foreach($category_tree as $row){
                $tree[$row['child_name']] = $row['parent_name'];
            }        
            $data['tree'] = json_encode(parseTree($tree));
            
            //retrieve all products 
            $data['products'] = $this->product_model->find_products_by_category_id();
            
            $this->load->view('templates/header', $data);
            $this->load->view('templates/menu', $data);    
            $data['sidemenu'] = $this->load->view('templates/sidemenu', $data, TRUE);
            $this->load->view('pages/products', $data);
            $this->load->view('templates/footer');
        }   

        public function view($id = NULL)
        {
            $category = $this->category_model->get_category_by_id($id);
            if (empty($category)) {
                    // redirect to all products
                    redirect('products/index');
            }

            $data['title'] = $category['name']." Products";

            //get category tree
            $category_tree = $this->category_model->get_category_tree();
            foreach($category_tree as $row){
                $tree[$row['child_name']] = $row['parent_name'];
            }        
            $data['tree'] = json_encode(parseTree($tree));

            $this->load->view('templates/header', $data);
            $this->load->view('templates/menu', $data);
            $data['sidemenu'] = $this->load->view('templates/sidemenu', $data, TRUE);
            $this->load->view('pages/products', $data);
            $this->load->view('templates/footer');
        }

}
