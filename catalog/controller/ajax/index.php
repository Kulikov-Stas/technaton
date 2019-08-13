<?php
class ControllerAjaxIndex extends Controller {

    // метод вызова ajax
    public function ajaxGetProduct() {
        if (isset($this->request->get['product_id'])) {
            $product_id = (int) $this->request->get['product_id'];
            if ($product_id > 0) {
                // загружаем определенный товар, запрошенный в ajax
                $this->load->model('catalog/product');
                $product = $this->model_catalog_product->getProduct($product_id);
                $data['product'] = $product;

                // подготавливаем превью изображения
                $this->load->model('tool/image');
                if ($product['image']) {
                $data['thumb'] = $this->model_tool_image->resize($product['image'], $this->config->get('config_image_thumb_width'), $this->config->get('config_image_thumb_height'));
                }

                // форматируем цену
                //$data['price'] = $this->currency->format($this->tax->calculate($product['price'], $product['tax_class_id'], $this->config->get('config_tax')));

                $this->load->language('product/product');
                $data['text_manufacturer'] = $this->language->get('text_manufacturer');
                $data['text_model'] = $this->language->get('text_model');
                $data['text_note'] = $this->language->get('text_note');
                $data['tab_description'] = $this->language->get('tab_description');

                $this->response->setOutput($this->load->view('ajax/product', $data));

            }
        }
    }

    public function ajaxGetNews() {
        if (isset($this->request->get['page'])) {
            $page = (int) $this->request->get['page'];
            if ($page > 0) {
                $this->load->model('newsblog/category');
                $this->load->model('newsblog/article');
                $this->load->model('tool/image');
                $data = $this->news(2);
                $this->response->setOutput($this->load->view('ajax/news', $data));
            }
        }
    }

    public function ajaxGetProducts() {
        if (isset($this->request->get['page'])) {
            $page = (int) $this->request->get['page'];
            if ($page > 0) {
                $this->load->controller('product/search');
                if (isset($this->request->get['search'])) {
                    $search = $this->request->get['search'];
                } else {
                    $search = '';
                }
                $filter_data = array(
                    'filter_name'         => $search,
                    'start'               => ($page - 1) * 2,
                    'limit'               => 4
                );
                $results = $this->model_catalog_product->getProducts($filter_data);
                foreach ($results as $result) {
                    if ($result['image']) {
                        $image = $this->model_tool_image->resize($result['image'], $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
                    } else {
                        $image = $this->model_tool_image->resize('placeholder.png', $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
                    }

                    if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
                        $price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
                    } else {
                        $price = false;
                    }

                    if ((float)$result['special']) {
                        $special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
                    } else {
                        $special = false;
                    }

                    if ($this->config->get('config_tax')) {
                        $tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
                    } else {
                        $tax = false;
                    }

                    if ($this->config->get('config_review_status')) {
                        $rating = (int)$result['rating'];
                    } else {
                        $rating = false;
                    }

                    $data['products'][] = array(
                        'product_id'  => $result['product_id'],
                        'thumb'       => $image,
                        'name'        => $result['name'],
                        'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
                        'price'       => $price,
                        'special'     => $special,
                        'tax'         => $tax,
                        'minimum'     => ($result['minimum'] > 0) ? $result['minimum'] : 1,
                        'rating'      => $rating,
                        'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id'] . $url)
                    );
                }
                $this->response->setOutput($this->load->view('ajax/products', $data));
            }
        }
    }
}