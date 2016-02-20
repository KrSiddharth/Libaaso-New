<?php
class ControllerSellerAccountNotifications extends Controller {
   private $error = array();

   public function index() {
       $this->load->language('multiseller/multiseller'); //Optional. This calls for your language file

       $this->document->setTitle($this->language->get('ms_account_notifications_heading')); //Optional. Set the title of your web page.
	   

       $data['breadcrumbs'] = array();

       $data['breadcrumbs'][] = array(
           'text'      => $this->language->get('text_home'),
           'href'      => $this->url->link('common/home')
       );

       $data['breadcrumbs'][] = array(
           'text'      => $this->language->get('heading_title'),
           'href'      => $this->url->link('information/static')
       );

       $data['heading_title'] = $this->language->get('ms_account_notifications_heading'); //Get "heading title" from language file.

       $data['column_left'] = $this->load->controller('common/column_left');
       $data['column_right'] = $this->load->controller('common/column_right');
       $data['content_top'] = $this->load->controller('common/content_top');
       $data['content_bottom'] = $this->load->controller('common/content_bottom');
       $data['footer'] = $this->load->controller('common/footer');
       $data['header'] = $this->load->controller('common/header');
	   $data['para'] = $this->language->get('ms_account_notifications_para');
	 /*
	   $this->data['breadcrumbs'] = $this->MsLoader->MsHelper->setBreadcrumbs(array(
			array(
				'text' => $this->language->get('text_account'),
				'href' => $this->url->link('account/account', '', 'SSL'),
			),
			array(
				'text' => $this->language->get('ms_account_dashboard_breadcrumbs'),
				'href' => $this->url->link('seller/account-dashboard', '', 'SSL'),
			),
			array(
				'text' => $this->language->get('ms_account_dashboard_breadcrumbs_notifications'),
				'href' => $this->url->link('seller/account-notifications', '', 'SSL'),
			)
		));
		*/
       if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/multiseller/account-product-notifications.tpl')) { //if file exists in your current template folder
           $this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/multiseller/account-product-notifications.tpl',$data)); //get it
       } else {
           $this->response->setOutput($this->load->view($this->template = 'default/template/multiseller/account-product-notifications.tpl',$data)); //or get the file from the default folder
       }


   }
}
?>

