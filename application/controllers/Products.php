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
            $this->load->library('pagination');
        }

        public function index($page_idx = NULL)
        {            
            //pagination settings
            $config['base_url'] = site_url('products/');
            $config['total_rows'] = $this->product_model->count_products_by_category_id();
            $config['per_page'] = PRODUCTS_PER_PAGE;
            $config["uri_segment"] = 2;
            $choice = $config["total_rows"] / $config["per_page"];
            $config["num_links"] = floor($choice);
    
            //config for bootstrap pagination class integration
            $config['full_tag_open'] = '<ul class="pagination">';
            $config['full_tag_close'] = '</ul>';
            $config['first_link'] = false;
            $config['last_link'] = false;
            $config['first_tag_open'] = '<li>';
            $config['first_tag_close'] = '</li>';
            $config['prev_link'] = '&laquo';
            $config['prev_tag_open'] = '<li class="prev">';
            $config['prev_tag_close'] = '</li>';
            $config['next_link'] = '&raquo';
            $config['next_tag_open'] = '<li>';
            $config['next_tag_close'] = '</li>';
            $config['last_tag_open'] = '<li>';
            $config['last_tag_close'] = '</li>';
            $config['cur_tag_open'] = '<li class="active"><a href="#">';
            $config['cur_tag_close'] = '</a></li>';
            $config['num_tag_open'] = '<li>';
            $config['num_tag_close'] = '</li>';
            $config['first_url'] = $config['base_url'].'0'; 
    
            $this->pagination->initialize($config);
            $last_uri_segment = $this->uri->segment($config["uri_segment"]);
            $data['page'] = $last_uri_segment ? $last_uri_segment : 0;     
            $data['pagination'] = $this->pagination->create_links();
            
            //retrieve all products 
            $data['products'] = $this->product_model->find_products_by_category_id($config["per_page"], $data['page']);

            if ($last_uri_segment === NULL) {
                //get category tree
                $category_tree = $this->category_model->get_category_tree();
                foreach($category_tree as $row){
                    $tree[$row['child_name']] = array($row['parent_name'], $row['id']);
                }        
                $data['tree'] = json_encode(parseTree($tree, array(), NULL));            
                
                $data['title'] = 'Products';            

                // load header, menu, sidemenu    
                $this->load->view('templates/header', $data);
                $this->load->view('templates/menu', $data);    
                $data['sidemenu'] = $this->load->view('templates/sidemenu', $data, TRUE);
                
            }

            // load product list view
            $data['productlist'] = $this->load->view('pages/product_list', $data, TRUE);       
            
            if ($last_uri_segment === NULL) {
                // load products container and footer
                $this->load->view('pages/products', $data);
                $this->load->view('templates/footer'); 
            } else {
                // render partial update
                echo $data['productlist'];
            }
        }   

        public function view($id)
        {
            $category = $this->category_model->get_category_by_id($id);
            if (empty($category)) {
                    // redirect to all products
                    redirect('products/index');
            }
                    
            //all selected nodes to get the whole products
            $sub_tree = $this->category_model->get_sub_category_tree($id);
            $nodes = array($id);
            foreach($sub_tree as $node) {
                $nodes[] = $node['id'];
            }
            
            //pagination settings
            $config['base_url'] = site_url('products/category/'.$id.'/');
            $config['total_rows'] = $this->product_model->count_products_by_category_id($nodes);            
            $config['per_page'] = PRODUCTS_PER_PAGE;
            $config["uri_segment"] = 4;
            $choice = $config["total_rows"] / $config["per_page"];
            $config["num_links"] = floor($choice);
    
            //config for bootstrap pagination class integration
            $config['full_tag_open'] = '<ul class="pagination">';
            $config['full_tag_close'] = '</ul>';
            $config['first_link'] = false;
            $config['last_link'] = false;
            $config['first_tag_open'] = '<li>';
            $config['first_tag_close'] = '</li>';
            $config['prev_link'] = '&laquo';
            $config['prev_tag_open'] = '<li class="prev">';
            $config['prev_tag_close'] = '</li>';
            $config['next_link'] = '&raquo';
            $config['next_tag_open'] = '<li>';
            $config['next_tag_close'] = '</li>';
            $config['last_tag_open'] = '<li>';
            $config['last_tag_close'] = '</li>';
            $config['cur_tag_open'] = '<li class="active"><a href="#">';
            $config['cur_tag_close'] = '</a></li>';
            $config['num_tag_open'] = '<li>';
            $config['num_tag_close'] = '</li>';
            $config['first_url'] = $config['base_url'].'0'; 

            $this->pagination->initialize($config);
            $last_uri_segment = $this->uri->segment($config["uri_segment"]);
            $data['page'] = $last_uri_segment ? $last_uri_segment : 0;     
            $data['pagination'] = $this->pagination->create_links();
            
            //retrieve all products 
            $data['products'] = $this->product_model->find_products_by_category_id($config["per_page"], $data['page'], $nodes);

            if ($last_uri_segment === NULL) {
                //get category tree
                $category_tree = $this->category_model->get_category_tree();
                foreach($category_tree as $row){
                    $tree[$row['child_name']] = array($row['parent_name'], $row['id']);
                }        
                $data['tree'] = json_encode(parseTree($tree, $nodes));

                $data['title'] = "Products";

                // load header, menu, sidemenu
                $this->load->view('templates/header', $data);
                $this->load->view('templates/menu', $data);
                $data['sidemenu'] = $this->load->view('templates/sidemenu', $data, TRUE);
                
            }

            // load product list view
            $data['productlist'] = $this->load->view('pages/product_list', $data, TRUE);
                
            if ($last_uri_segment === NULL) {
                // load products container and footer
                $this->load->view('pages/products', $data);
                $this->load->view('templates/footer');
            } else {
                // render partial update
                echo $data['productlist'];
            }
        }

        public function filter($filterStr = NULL)
        {            
            //retrieve all products 
            if ($filterStr === NULL || strlen($filterStr) === 0) {
                $data['products'] = [];        
            } else {
                //prevent sql injection by sanitizing in model
                $filters = explode('~', $filterStr);                

                // pagination settings
                $config['base_url'] = site_url('products/filter/'.$filterStr.'/');
                $config['total_rows'] = $this->product_model->count_products_by_category_id($filters);
                $config['per_page'] = PRODUCTS_PER_PAGE;
                $config["uri_segment"] = 4;
                $choice = $config["total_rows"] / $config["per_page"];
                $config["num_links"] = floor($choice);
        
                //config for bootstrap pagination class integration
                $config['full_tag_open'] = '<ul class="pagination">';
                $config['full_tag_close'] = '</ul>';
                $config['first_link'] = false;
                $config['last_link'] = false;
                $config['first_tag_open'] = '<li>';
                $config['first_tag_close'] = '</li>';
                $config['prev_link'] = '&laquo';
                $config['prev_tag_open'] = '<li class="prev">';
                $config['prev_tag_close'] = '</li>';
                $config['next_link'] = '&raquo';
                $config['next_tag_open'] = '<li>';
                $config['next_tag_close'] = '</li>';
                $config['last_tag_open'] = '<li>';
                $config['last_tag_close'] = '</li>';
                $config['cur_tag_open'] = '<li class="active"><a href="#">';
                $config['cur_tag_close'] = '</a></li>';
                $config['num_tag_open'] = '<li>';
                $config['num_tag_close'] = '</li>';
        
                $this->pagination->initialize($config);
                $data['page'] = ($this->uri->segment($config["uri_segment"])) ? $this->uri->segment($config["uri_segment"]) : 0;                
                $data['pagination'] = $this->pagination->create_links();

                //retrieve all products 
                $data['products'] = $this->product_model->find_products_by_category_id($config["per_page"], $data['page'], $filters);                                
            }

            //reload partial page: product list view
            $data['productlist'] = $this->load->view('pages/product_list', $data, TRUE);
            echo $data['productlist'];                
        }        
}
?>
