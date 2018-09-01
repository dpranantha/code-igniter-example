<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pages extends CI_Controller {

        public function view($page = 'home')
        {
            if ( ! file_exists(APPPATH.'views/pages/'.$page.'.php')) {
                    // go back to main page
                    redirect('pages/view/home');
            }

            $data['title'] = ucfirst($page); // Capitalize the first letter

            $this->load->view('templates/header', $data);
            $this->load->view('templates/menu', $data);
            $this->load->view('pages/'.$page, $data);
            if ($page == 'contact') {
                $this->load->view('templates/footer_contact', $data);
            } else {
                $this->load->view('templates/footer', $data);
            }
        }
}