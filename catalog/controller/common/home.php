<?php
class ControllerCommonHome extends Controller {

	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink($this->config->get('config_url'), 'canonical');
		}

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

        // news
        $data = array_merge($data, $this->news(3));

        $this->feedback();

        $data['categories'] = array();

        $categories = $this->model_catalog_category->getCategories(0);

        foreach ($categories as $category) {
            //if ($category['top']) {
            // Level 2
            $children_data = array();

            $children = $this->model_catalog_category->getCategories($category['category_id']);

            foreach ($children as $child) {
                $filter_data = array(
                    'filter_category_id'  => $child['category_id'],
                    'filter_sub_category' => true
                );

                $children_data[] = array(
                    'name'  => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
                    'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
                );
            }

            // Level 1
            $data['categories'][] = array(
                'name'     => $category['name'],
                'children' => $children_data,
                'column'   => $category['column'] ? $category['column'] : 1,
                'href'     => $this->url->link('product/category', 'path=' . $category['category_id']),
                'description'     => strip_tags(html_entity_decode($category['description']))
            );
            //}
        }
        $this->load->language('common/language');
        $this->load->language('common/header');
        $this->load->language('information/information');
        $this->load->language('information/contact');
        $data['text_catalog'] = $this->language->get('text_catalog');
        $data['entry_name'] = $this->language->get('entry_name');
        $data['entry_surname'] = $this->language->get('entry_surname');
        $data['text_telephone'] = $this->language->get('text_telephone');
        $data['text_order'] = $this->language->get('text_order');
        $data['text_feedback'] = $this->language->get('text_feedback');
        $data['text_header'] = $this->language->get('text_header');
        $data['text_news'] = $this->language->get('text_news');
        $data['text_catalog'] = $this->language->get('text_catalog');
        $data['text_feedback'] = $this->language->get('text_feedback');
		$this->response->setOutput($this->load->view('common/home', $data));
	}
}
