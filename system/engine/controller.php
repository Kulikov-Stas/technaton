<?php 
 	/**
	* @property string $id
	* @property string $template
	* @property array $children
	* @property array $data
	* @property string $output
	* @property Loader $load
	* @property User $user
	* @property Url $url
	* @property Log $log
	* @property Request $request
	* @property Response $response
	* @property Cache $cache
	* @property Session $session
	* @property Language $language
	* @property Document $document
	* @property Customer $customer
	* @property Affiliate $affiliate
	* @property Currency $currency
	* @property Tax $tax
	* @property Weight $weight
	* @property Length $length
	* @property Cart $cart
	* @property Encryption $encryption
	* @property Openbay $openbay
	* @property Event $event
	* @property ModelAccountActivity $model_account_activity
	* @property ModelAccountAddress $model_account_address
	* @property ModelAccountApi $model_account_api
	* @property ModelAccountCustomField $model_account_custom_field
	* @property ModelAccountCustomer $model_account_customer
	* @property ModelAccountCustomerGroup $model_account_customer_group
	* @property ModelAccountDownload $model_account_download
	* @property ModelAccountOrder $model_account_order
	* @property ModelAccountRecurring $model_account_recurring
	* @property ModelAccountReturn $model_account_return
	* @property ModelAccountReward $model_account_reward
	* @property ModelAccountSearch $model_account_search
	* @property ModelAccountTransaction $model_account_transaction
	* @property ModelAccountWishlist $model_account_wishlist
	* @property ModelAffiliateActivity $model_affiliate_activity
	* @property ModelAffiliateAffiliate $model_affiliate_affiliate
	* @property ModelAffiliateTransaction $model_affiliate_transaction
	* @property ModelCatalogCategory $model_catalog_category
	* @property ModelCatalogInformation $model_catalog_information
	* @property ModelCatalogManufacturer $model_catalog_manufacturer
	* @property ModelCatalogProduct $model_catalog_product
	* @property ModelCatalogReview $model_catalog_review
	* @property ModelCheckoutMarketing $model_checkout_marketing
	* @property ModelCheckoutOrder $model_checkout_order
	* @property ModelCheckoutRecurring $model_checkout_recurring
	* @property ModelDesignBanner $model_design_banner
	* @property ModelDesignLayout $model_design_layout
	* @property ModelDesignTheme $model_design_theme
	* @property ModelDesignTranslation $model_design_translation
	* @property ModelExtensionEvent $model_extension_event
	* @property ModelExtensionExtension $model_extension_extension
	* @property ModelExtensionModule $model_extension_module
	* @property ModelLocalisationCountry $model_localisation_country
	* @property ModelLocalisationCurrency $model_localisation_currency
	* @property ModelLocalisationLanguage $model_localisation_language
	* @property ModelLocalisationLocation $model_localisation_location
	* @property ModelLocalisationReturnReason $model_localisation_return_reason
	* @property ModelLocalisationZone $model_localisation_zone
	* @property ModelModuleRevslideropencart $model_module_revslideropencart
	* @property ModelNewsblogArticle $model_newsblog_article
	* @property ModelNewsblogCategory $model_newsblog_category
	* @property ModelSettingApi $model_setting_api
	* @property ModelSettingSetting $model_setting_setting
	* @property ModelSettingStore $model_setting_store
	* @property ModelToolImage $model_tool_image
	* @property ModelToolOnline $model_tool_online
	* @property ModelToolUpload $model_tool_upload
	* @property ModelCatalogAttribute $model_catalog_attribute
	* @property ModelCatalogAttributeGroup $model_catalog_attribute_group
	* @property ModelCatalogDownload $model_catalog_download
	* @property ModelCatalogFilter $model_catalog_filter
	* @property ModelCatalogOption $model_catalog_option
	* @property ModelCatalogRecurring $model_catalog_recurring
	* @property ModelCatalogUrlAlias $model_catalog_url_alias
	* @property ModelCustomerCustomField $model_customer_custom_field
	* @property ModelCustomerCustomer $model_customer_customer
	* @property ModelCustomerCustomerGroup $model_customer_customer_group
	* @property ModelDesignLanguage $model_design_language
	* @property ModelDesignMenu $model_design_menu
	* @property ModelExtensionExchange1c $model_extension_exchange1c
	* @property ModelExtensionModification $model_extension_modification
	* @property ModelLocalisationGeoZone $model_localisation_geo_zone
	* @property ModelLocalisationLengthClass $model_localisation_length_class
	* @property ModelLocalisationOrderStatus $model_localisation_order_status
	* @property ModelLocalisationReturnAction $model_localisation_return_action
	* @property ModelLocalisationReturnStatus $model_localisation_return_status
	* @property ModelLocalisationStockStatus $model_localisation_stock_status
	* @property ModelLocalisationTaxClass $model_localisation_tax_class
	* @property ModelLocalisationTaxRate $model_localisation_tax_rate
	* @property ModelLocalisationWeightClass $model_localisation_weight_class
	* @property ModelMarketingAffiliate $model_marketing_affiliate
	* @property ModelMarketingCoupon $model_marketing_coupon
	* @property ModelMarketingMarketing $model_marketing_marketing
	* @property ModelModuleRevslideroutput $model_module_revslideroutput
	* @property ModelNewsblogUrlAlias $model_newsblog_url_alias
	* @property ModelOcteam_toolsSeoManager $model_octeam_tools_seo_manager
	* @property ModelReportActivity $model_report_activity
	* @property ModelReportAffiliate $model_report_affiliate
	* @property ModelReportCoupon $model_report_coupon
	* @property ModelReportCustomer $model_report_customer
	* @property ModelReportMarketing $model_report_marketing
	* @property ModelReportProduct $model_report_product
	* @property ModelReportReturn $model_report_return
	* @property ModelReportSale $model_report_sale
	* @property ModelSaleOrder $model_sale_order
	* @property ModelSaleRecurring $model_sale_recurring
	* @property ModelSaleReturn $model_sale_return
	* @property ModelSaleVoucher $model_sale_voucher
	* @property ModelSaleVoucherTheme $model_sale_voucher_theme
	* @property ModelSliderRevolutionSlider $model_slider_revolution_slider
	* @property ModelToolBackup $model_tool_backup
	* @property ModelUserApi $model_user_api
	* @property ModelUserUser $model_user_user
	* @property ModelUserUserGroup $model_user_user_group
	**/
abstract class Controller {
	protected $registry;
    private $error = array();

	public function __construct($registry) {
		$this->registry = $registry;
	}

	public function __get($key) {
		return $this->registry->get($key);
	}

	public function __set($key, $value) {
		$this->registry->set($key, $value);
	}

	public function news($limit = 2)
    {
        $category_info = $this->model_newsblog_category->getCategory(2);
        $sort = $category_info['sort_by'];
        $order = $category_info['sort_direction'];
        if (isset($this->request->get['page'])) {
            $page = $this->request->get['page'];
        } else {
            $page = 1;
        }
        $filter_data = array(
            'filter_category_id' => 2,
            'sort'               => $sort,
            'order'              => $order,
            'start'              => ($page - 1) * $limit,
            'limit'              => $limit
        );
        $results = $this->model_newsblog_article->getArticles($filter_data);

        $settings=unserialize($category_info['settings']);
        $articles_image_size=array($settings['images_size_width'],$settings['images_size_height']);
        $date_format=$settings['date_format'];
        foreach ($results as $result) {

            if ($result['image']) {
                $original 	= HTTP_SERVER.'image/'.$result['image'];
                $thumb 		= $this->model_tool_image->resize($result['image'], $articles_image_size[0], $articles_image_size[1]);
            } else {
                $original 	= '';
                $thumb 		= '';	//or use 'placeholder.png' if you need
            }

            $data['articles'][] = array(
                'article_id'  		=> $result['article_id'],
                'original'			=> $original,
                'thumb'       		=> $thumb,
                'name'        		=> $result['name'],
                'preview'     		=> html_entity_decode($result['preview'], ENT_QUOTES, 'UTF-8'),
                'attributes'  		=> $result['attributes'],
                'href'        		=> $this->url->link('newsblog/article', 'newsblog_path=' . $this->request->get['newsblog_path'] . '&newsblog_article_id=' . $result['article_id']),
                'date'		  		=> ($date_format ? explode(' ', date($date_format, strtotime($result['date_available'])))[0] : false),
                'date_modified'		=> ($date_format ? date($date_format, strtotime($result['date_modified'])) : false),
                'viewed' 			=> $result['viewed'],
                'image'             => $result['image'],
                'speed'             => $result['speed']
            );
        }
        $article_total = $this->model_newsblog_article->getTotalArticles($filter_data);
        $pagination = new Pagination();
        $pagination->total = $article_total;
        $pagination->page = $page;
        $pagination->limit = $limit;
        $pagination->url = $this->url->link('newsblog/category', 'newsblog_path=2&page={page}');

        $data['news_pagination'] = $pagination->render();

        $data['results'] = sprintf($this->language->get('text_pagination'), ($article_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($article_total - $limit)) ? $article_total : ((($page - 1) * $limit) + $limit), $article_total, ceil($article_total / $limit));

        // http://googlewebmastercentral.blogspot.com/2011/09/pagination-with-relnext-and-relprev.html
        if ($page == 1) {
            $this->document->addLink($this->url->link('newsblog/category', 'newsblog_path=' . $category_info['category_id'], 'SSL'), 'canonical');
        } elseif ($page == 2) {
            $this->document->addLink($this->url->link('newsblog/category', 'newsblog_path=' . $category_info['category_id'], 'SSL'), 'prev');
        } else {
            $this->document->addLink($this->url->link('newsblog/category', 'newsblog_path=' . $category_info['category_id'] . '&page='. ($page - 1), 'SSL'), 'prev');
        }

        if ($limit && ceil($article_total / $limit) > $page) {
            $this->document->addLink($this->url->link('newsblog/category', 'newsblog_path=' . $category_info['category_id'] . '&page='. ($page + 1), 'SSL'), 'next');
        }
        return $data;
    }

    public function newsByName($name, $limit = 2)
    {
        $category_info = $this->model_newsblog_category->getCategory(2);
        $sort = $category_info['sort_by'];
        $order = $category_info['sort_direction'];
        if (isset($this->request->get['page'])) {
            $page = $this->request->get['page'];
        } else {
            $page = 1;
        }
        $filter_data = array(
            'filter_category_id' => 2,
            'sort'               => $sort,
            'order'              => $order,
            'start'              => ($page - 1) * $limit,
            'limit'              => $limit,
            'name'               => $name
        );
        $results = $this->model_newsblog_article->getArticlesByName($filter_data);

        $settings=unserialize($category_info['settings']);
        $articles_image_size=array($settings['images_size_width'],$settings['images_size_height']);
        $date_format=$settings['date_format'];
        foreach ($results as $result) {

            if ($result['image']) {
                $original 	= HTTP_SERVER.'image/'.$result['image'];
                $thumb 		= $this->model_tool_image->resize($result['image'], $articles_image_size[0], $articles_image_size[1]);
            } else {
                $original 	= '';
                $thumb 		= '';	//or use 'placeholder.png' if you need
            }

            $data['articles'][] = array(
                'article_id'  		=> $result['article_id'],
                'original'			=> $original,
                'thumb'       		=> $thumb,
                'name'        		=> $result['name'],
                'preview'     		=> html_entity_decode($result['preview'], ENT_QUOTES, 'UTF-8'),
                'attributes'  		=> $result['attributes'],
                'href'        		=> $this->url->link('newsblog/article', 'newsblog_path=' . $this->request->get['newsblog_path'] . '&newsblog_article_id=' . $result['article_id']),
                'date'		  		=> ($date_format ? explode(' ', date($date_format, strtotime($result['date_available'])))[0] : false),
                'date_modified'		=> ($date_format ? date($date_format, strtotime($result['date_modified'])) : false),
                'viewed' 			=> $result['viewed'],
                'image'             => $result['image'],
                'speed'             => $result['speed']
            );
        }
        $article_total = $this->model_newsblog_article->getTotalArticles($filter_data);
        $pagination = new Pagination();
        $pagination->total = $article_total;
        $pagination->page = $page;
        $pagination->limit = $limit;
        $pagination->url = $this->url->link('newsblog/category', 'newsblog_path=2&page={page}');

        $data['news_pagination'] = $pagination->render();

        $data['results'] = sprintf($this->language->get('text_pagination'), ($article_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($article_total - $limit)) ? $article_total : ((($page - 1) * $limit) + $limit), $article_total, ceil($article_total / $limit));

        // http://googlewebmastercentral.blogspot.com/2011/09/pagination-with-relnext-and-relprev.html
        if ($page == 1) {
            $this->document->addLink($this->url->link('newsblog/category', 'newsblog_path=' . $category_info['category_id'], 'SSL'), 'canonical');
        } elseif ($page == 2) {
            $this->document->addLink($this->url->link('newsblog/category', 'newsblog_path=' . $category_info['category_id'], 'SSL'), 'prev');
        } else {
            $this->document->addLink($this->url->link('newsblog/category', 'newsblog_path=' . $category_info['category_id'] . '&page='. ($page - 1), 'SSL'), 'prev');
        }

        if ($limit && ceil($article_total / $limit) > $page) {
            $this->document->addLink($this->url->link('newsblog/category', 'newsblog_path=' . $category_info['category_id'] . '&page='. ($page + 1), 'SSL'), 'next');
        }
        return $data;
    }

    public function feedback()
    {
        $this->load->language('information/contact');
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
            $mail = new Mail();
            $mail->protocol = $this->config->get('config_mail_protocol');
            $mail->parameter = $this->config->get('config_mail_parameter');
            $mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
            $mail->smtp_username = $this->config->get('config_mail_smtp_username');
            $mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
            $mail->smtp_port = $this->config->get('config_mail_smtp_port');
            $mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

            $mail->setTo($this->config->get('config_email'));
            $mail->setFrom($this->config->get('config_email'));
            //$mail->setReplyTo($this->request->post['email']);
            $mail->setSender(html_entity_decode($this->request->post['name'], ENT_QUOTES, 'UTF-8'));
            $mail->setSubject(html_entity_decode(sprintf($this->language->get('email_subject'), $this->request->post['name']), ENT_QUOTES, 'UTF-8'));
            $mail->setText('Заявка с сайта от ' . $this->request->post['surname'] . ' ' . $this->request->post['name'] . ' с телефоном ' . $this->request->post['phone']);
            $mail->send();

            $this->response->redirect($this->url->link('information/contact/success'));
        }

        $data['text_location'] = $this->language->get('text_location');
        $data['text_store'] = $this->language->get('text_store');
        $data['text_contact'] = $this->language->get('text_contact');
        $data['text_address'] = $this->language->get('text_address');
        $data['text_telephone'] = $this->language->get('text_telephone');
        $data['text_fax'] = $this->language->get('text_fax');
        $data['text_open'] = $this->language->get('text_open');
        $data['text_comment'] = $this->language->get('text_comment');
        $data['entry_name'] = $this->language->get('entry_name');
        $data['entry_email'] = $this->language->get('entry_email');
        $data['entry_enquiry'] = $this->language->get('entry_enquiry');

        $data['button_map'] = $this->language->get('button_map');

        if (isset($this->error['name'])) {
            $data['error_name'] = $this->error['name'];
        } else {
            $data['error_name'] = '';
        }

        if (isset($this->error['surname'])) {
            $data['error_surname'] = $this->error['surname'];
        } else {
            $data['error_surname'] = '';
        }

        if (isset($this->error['phone'])) {
            $data['error_phone'] = $this->error['phone'];
        } else {
            $data['error_phone'] = '';
        }

        /*if (isset($this->error['email'])) {
            $data['error_email'] = $this->error['email'];
        } else {
            $data['error_email'] = '';
        }

        if (isset($this->error['enquiry'])) {
            $data['error_enquiry'] = $this->error['enquiry'];
        } else {
            $data['error_enquiry'] = '';
        }*/

        $data['button_submit'] = $this->language->get('button_submit');

        $data['action'] = "/contacts/";

        if (isset($this->request->post['name'])) {
            $data['name'] = $this->request->post['name'];
        } else {
            $data['name'] = $this->customer->getFirstName();
        }

        if (isset($this->request->post['surname'])) {
            $data['surname'] = $this->request->post['surname'];
        } else {
            $data['surname'] = $this->customer->getLastName();
        }

        if (isset($this->request->post['phone'])) {
            $data['phone'] = $this->request->post['phone'];
        } else {
            $data['phone'] = "";
        }

        /*if (isset($this->request->post['email'])) {
            $data['email'] = $this->request->post['email'];
        } else {
            $data['email'] = $this->customer->getEmail();
        }

        if (isset($this->request->post['enquiry'])) {
            $data['enquiry'] = $this->request->post['enquiry'];
        } else {
            $data['enquiry'] = '';
        }*/

        // Captcha
        if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('contact', (array)$this->config->get('config_captcha_page'))) {
            $data['captcha'] = $this->load->controller('extension/captcha/' . $this->config->get('config_captcha'), $this->error);
        } else {
            $data['captcha'] = '';
        }
    }

    private function validate() {
        if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 32)) {
            $this->error['name'] = $this->language->get('error_name');
        }

        if (!preg_match($this->config->get('config_mail_regexp'), $this->request->post['email'])) {
            $this->error['email'] = $this->language->get('error_email');
        }

        if ((utf8_strlen($this->request->post['enquiry']) < 10) || (utf8_strlen($this->request->post['enquiry']) > 3000)) {
            $this->error['enquiry'] = $this->language->get('error_enquiry');
        }

        // Captcha
        if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('contact', (array)$this->config->get('config_captcha_page'))) {
            $captcha = $this->load->controller('extension/captcha/' . $this->config->get('config_captcha') . '/validate');

            if ($captcha) {
                $this->error['captcha'] = $captcha;
            }
        }

        return !$this->error;
    }

    public function success() {
        $this->load->language('information/contact');

        $this->document->setTitle($this->language->get('heading_title'));

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home')
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('information/contact')
        );

        $data['heading_title'] = $this->language->get('heading_title');

        $data['text_message'] = $this->language->get('text_success');

        $data['button_continue'] = $this->language->get('button_continue');

        $data['continue'] = $this->url->link('common/home');

        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');

        $this->response->setOutput($this->load->view('common/success', $data));
    }
}