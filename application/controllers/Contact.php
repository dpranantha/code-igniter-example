<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contact extends CI_Controller {
    public function __construct()
    {
        parent::__construct();         
    }

    // controller for contact
    public function contact()
    {
        if(isset($_POST['email'])) {
            $email_to = "info@milebv.eu";
            
            function died($error, $controller) {
                $data['reply'] = "We are very sorry, but there were error(s) found with the form you submitted.<br/>".
                    "These errors appear below:<br/>".
                    "<font color='red'>".$error."</font>".
                    "Please go back and fix these errors.<br/><br/><br/>";
                $data['subject'] = $_POST['subject'];        
                $data['name'] = $_POST['name']; 
                $data['email'] = $_POST['email']; 
                $data['message'] = $_POST['message']; 
                $data['company'] = $_POST['company']; 
                $controller->load->view('templates/header', $data);
                $controller->load->view('templates/menu', $data);
                $controller->load->view('pages/contact', $data);           
                $controller->load->view('templates/footer');                     
            }
         
            // input validation expected data exists
            if(!isset($_POST['name']) ||
                !isset($_POST['email']) ||
                !isset($_POST['subject']) ||
                !isset($_POST['message'])) {
                died('Either name, email, subject, or message are empty!');       
                return;
            }         
             
            $email_subject = html_escape($this->security->xss_clean($_POST['subject']));        
            $name = html_escape($this->security->xss_clean($_POST['name'])); 
            $email_from = html_escape($this->security->xss_clean($_POST['email'])); 
            $message = html_escape($this->security->xss_clean($_POST['message'])); 
            
            // input validation expected data to follow certain form
            $error_message = "";
            $email_exp = '/^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/';         
            if(!preg_match($email_exp,$email_from)) {
                $error_message .= '- The Email Address you entered does not appear to be valid. It should have this pattern: <address>@<domain>.<extension>.<br />';
            }
            $string_exp = "/^[A-Za-z .'-]+$/";         
            if(!preg_match($string_exp,$name)) {
                $error_message .= '- The Name you entered does not appear to be valid. It should not contain numeric character!<br />';
            }                   
            if(strlen($message) < 2) {
                $error_message .= '- The Message you entered do not appear to be valid. The length should be valid!<br />';
            }         
            if(strlen($error_message) > 0) {
                died($error_message, $this);
                return;
            }         
            
            // email construction
            $email_message = "Form contact details below.\n\n";                      
            function clean_string($string) {
              $bad = array("content-type","bcc:","to:","cc:","href");
              return str_replace($bad,"",$string);
            }                      

            $email_message .= "Name: ".clean_string($name)."\n";
            if (isset($_POST['company'])) {
                $email_message .= "Company: ".clean_string(html_escape($this->security->xss_clean($_POST['company'])))."\n";
            }
            $email_message .= "Email: ".clean_string($email_from)."\n";
            $email_message .= "Message: ".clean_string($message)."\n";
         
            // create email headers
            $headers = 'From: '.$email_from."\r\n".
                'Reply-To: '.$email_from."\r\n".
                'Return-Path: '.$email_from."\r\n".
                'MIME-Version: 1.0\r\n'.
                'Content-type: text/plain; charset=iso-8859-1\r\n'.
                'X-Mailer: PHP/' . phpversion();
            @mail($email_to, $email_subject, $email_message, $headers);           
            // include your own success html here    
            
            $data['reply'] = "<b>Thank you for contacting us. We will be in touch with you very soon.</b></br></br></br>";
            $this->load->view('templates/header', $data);
            $this->load->view('templates/menu', $data);
            $this->load->view('pages/contact', $data);           
            $this->load->view('templates/footer');     
        }        
    }
}

?>