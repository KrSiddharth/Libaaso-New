<?php
class ControllerAccountRegisterAs extends Controller {
    private $error = array();

    public function index() {

        if ($this->customer->isLogged()) {
            $this->response->redirect($this->url->link('account/account', '', 'SSL'));
        }

        $this->load->language('account/register'); //Optional. This calls for your language file

        $this->document->setTitle($this->language->get('heading_title')); //Optional. Set the title of your web page.

        $data['register'] = $this->url->link('account/register', '', 'SSL');
        $data['register_seller']=$this->url->link('account/register-seller', '', 'SSL');
        $data['heading_title'] = $this->language->get('register_as_heading'); //Get "heading title" from language file.
        $data['text_seller'] = $this->language->get('text_seller');
        $data['text_buyer'] = $this->language->get('text_buyer');
        $data['text_or'] = $this->language->get('text_or');
        $data['template']=$this->config->get('config_template');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/register-as.tpl')) { //if file exists in your current template folder
            $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/account/register-as.tpl',$data)); //get it
        } else {
            $this->response->setOutput($this->load->view($this->template = 'default/template/account/register-as.tpl',$data)); //or get the file from the default folder
        }


    }
}
?>
