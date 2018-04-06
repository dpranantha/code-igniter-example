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
                $tree[$row['child_name']] = array($row['parent_name'], $row['id']);
            }        
            $data['tree'] = json_encode(parseTree($tree, array(), NULL));
            
            //retrieve all products 
            $data['products'] = $this->product_model->find_products_by_category_id();
            
            $this->load->view('templates/header', $data);
            $this->load->view('templates/menu', $data);    
            $data['sidemenu'] = $this->load->view('templates/sidemenu', $data, TRUE);
            $data['productlist'] = $this->load->view('pages/product_list', $data, TRUE);
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
            
            //all selected nodes
            $sub_tree = $this->category_model->get_sub_category_tree($id);
            $nodes = array($id);
            foreach($sub_tree as $node) {
                $nodes[] = $node['id'];
            }
        
            //get category tree
            $category_tree = $this->category_model->get_category_tree();
            foreach($category_tree as $row){
                $tree[$row['child_name']] = array($row['parent_name'], $row['id']);
            }        
            $data['tree'] = json_encode(parseTree($tree, $nodes));

            //get all products            
            $data['products'] = $this->product_model->find_products_by_category_id($nodes);

            $this->load->view('templates/header', $data);
            $this->load->view('templates/menu', $data);
            $data['sidemenu'] = $this->load->view('templates/sidemenu', $data, TRUE);
            $data['productlist'] = $this->load->view('pages/product_list', $data, TRUE);
            $this->load->view('pages/products', $data);
            $this->load->view('templates/footer');
        }

        public function filter($filterStr = NULL)
        {
            if ($filterStr === NULL || strlen($filterStr) === 0) {
                $data['products'] = [];        
            } else {
                //prevent sql injection by sanitizing in model
                $filters = explode('~', $filterStr);                
                $data['products'] = $this->product_model->find_products_by_category_id($filters);
            }
            $data['productlist'] = $this->load->view('pages/product_list', $data, TRUE);
            echo $data['productlist'];            
        }

}
