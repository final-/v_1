<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class payment extends CI_Controller {

    function addCreditPage() {

        if ($this->session->userdata('logged_in')) {
            $id = $this->session->userdata('user_id');
            $this->load->view('view_selectBank');
        } else {
            
        }
    }

    function convertFromCreditToShelinat() {
        
          
        
    }

    function okMessage() {
        echo "ok message ";
    }

    function cancelMessage() {
        echo "cancel  message ";
    }

}

?>
