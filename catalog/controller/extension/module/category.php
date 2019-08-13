<?php
class ControllerExtensionModuleCategory extends Controller {
	public function index() {
		$this->load->language('extension/module/category');

		$data['heading_title'] = $this->language->get('heading_title');

		if (isset($this->request->get['path'])) {
			$parts = explode('_', (string)$this->request->get['path']);
		} else {
			$parts = array();
		}

		if (isset($parts[0])) {
			$data['category_id'] = $parts[0];
		} else {
			$data['category_id'] = 0;
		}

		if (isset($parts[1])) {
			$data['child_id'] = $parts[1];
		} else {
			$data['child_id'] = 0;
		}

		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

        $this->load->model('catalog/manufacturer');

		$data['categories'] = array();

		$categories = $this->model_catalog_category->getCategories(0);

		foreach ($categories as $category) {

			$children_data = array();
            $category['manufacturer'] = $this->model_catalog_manufacturer->getCategoryBrands($category['category_id']);
            if ($category['manufacturer']) {
                foreach ($category['manufacturer'] as &$manufacturer) {
                    if (isset($manufacturer['manufacturer_id'])) {
                        $manufacturer['url'] = $this->url->link('category/manufacturer/info', 'manufacturer_id=' . $manufacturer['manufacturer_id']);
                    } else {
                        continue;
                    }
                }
            }
			if ($category['category_id'] == $data['category_id']) {
				$children = $this->model_catalog_category->getCategories($category['category_id']);

				foreach($children as $child) {
					$filter_data = array('filter_category_id' => $child['category_id'], 'filter_sub_category' => true);

					$children_data[] = array(
						'category_id' => $child['category_id'],
						'name' => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
						'href' => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
					);
				}
			}

			$filter_data = array(
				'filter_category_id'  => $category['category_id'],
				'filter_sub_category' => true
			);

			$data['categories'][] = array(
				'category_id' => $category['category_id'],
				'name'        => $category['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
				'children'    => $children_data,
				'href'        => $this->url->link('product/category', 'path=' . $category['category_id']),
                'manufacturer'=> $category['manufacturer']
			);
		}

		$data['numbers'] = [
		    'One',
            'Two',
            'Three',
            'Four',
            'Five',
            'Six',
            'Seven',
            'Eight',
            'Nine',
            'Ten'
        ];

		$data['icons'] = [
		    '<svg class="icon-btn" xmlns="http://www.w3.org/2000/svg" width="39.34" height="39.339" viewBox="0 0 39.34 39.339">
                <g id="settings-work-tool" transform="translate(-0.002 0)">
                    <g id="Group_29" data-name="Group 29" transform="translate(0 0)">
                        <path id="Path_16" data-name="Path 16" d="M39.218,17.486a1.281,1.281,0,0,0-1.264-.969A4.343,4.343,0,0,1,34.98,8.958a1.092,1.092,0,0,0,.12-1.483,19.464,19.464,0,0,0-3.116-3.147,1.1,1.1,0,0,0-1.495.121,4.534,4.534,0,0,1-4.906,1.1,4.369,4.369,0,0,1-2.657-4.27A1.091,1.091,0,0,0,21.961.131,19.638,19.638,0,0,0,17.536.119a1.1,1.1,0,0,0-.974,1.125,4.376,4.376,0,0,1-2.693,4.2A4.546,4.546,0,0,1,9,4.333a1.1,1.1,0,0,0-1.484-.125A19.537,19.537,0,0,0,4.333,7.354a1.094,1.094,0,0,0,.117,1.5,4.359,4.359,0,0,1,1.1,4.908,4.547,4.547,0,0,1-4.28,2.659,1.069,1.069,0,0,0-1.136.966,19.7,19.7,0,0,0-.008,4.473,1.3,1.3,0,0,0,1.29.967,4.314,4.314,0,0,1,4.047,2.7,4.374,4.374,0,0,1-1.1,4.864,1.093,1.093,0,0,0-.12,1.482,19.534,19.534,0,0,0,3.112,3.148,1.094,1.094,0,0,0,1.5-.119,4.527,4.527,0,0,1,4.9-1.1,4.362,4.362,0,0,1,2.661,4.269,1.093,1.093,0,0,0,.965,1.149,19.576,19.576,0,0,0,4.425.012,1.1,1.1,0,0,0,.974-1.126A4.372,4.372,0,0,1,25.472,33.9a4.539,4.539,0,0,1,4.871,1.108,1.1,1.1,0,0,0,1.484.124,19.583,19.583,0,0,0,3.182-3.146,1.092,1.092,0,0,0-.118-1.495,4.359,4.359,0,0,1-1.1-4.907,4.4,4.4,0,0,1,4.024-2.666l.243.006a1.1,1.1,0,0,0,1.151-.964A19.687,19.687,0,0,0,39.218,17.486ZM19.7,26.272a6.561,6.561,0,1,1,6.561-6.561A6.568,6.568,0,0,1,19.7,26.272Z" transform="translate(-0.003 0)" fill="#fff" fill-rule="evenodd" />
                    </g>
                </g>
            </svg>',
            '<svg class="icon-btn" xmlns="http://www.w3.org/2000/svg" width="36.094" height="39.339" viewBox="0 0 36.094 39.339">
                <g id="tools-cross-settings-symbol-for-interface" transform="translate(-15.138 0)">
                    <path id="Path_17" data-name="Path 17" d="M50.187,33.129,37.776,20.451a3.5,3.5,0,0,0-.369-.324l2.2-2.364a4.5,4.5,0,0,0,.317-.362,8.071,8.071,0,0,0,8.688-1.9,8.448,8.448,0,0,0,2.365-6.633.718.718,0,0,0-.461-.616.7.7,0,0,0-.741.167L45.8,12.479l-4.027-1.037L40.626,7.2,44.6,3.136a.732.732,0,0,0,.165-.758.709.709,0,0,0-.6-.472A8.072,8.072,0,0,0,37.67,4.323a8.5,8.5,0,0,0-1.865,8.869c-.12.1-.239.213-.355.331L32.215,16.7l-5.941-6.068a2.2,2.2,0,0,0-.235-.206c.07-.125.138-.254.2-.387,1.255.247,3.549-2.249,5.5-4.238L26.06,0c-2.538,2.593-4.391,4.333-4.151,5.614a5.541,5.541,0,0,0-1.465,1.02l-.8.816A3.474,3.474,0,0,0,18.7,9.33c-.078.09-.156.186-.235.288l-.3.382c-.008.009-.034.047-.041.057l-.27.386c-.169.23-.317.48-.459.722q-.079.134-.161.269c-.009.015-.017.031-.025.046l-.12.231c-.145.278-.3.565-.424.882l-.021.05a9.719,9.719,0,0,0-.419,1.155l-.053.175c-.043.144-.088.287-.128.459l-.11.558a6.522,6.522,0,0,0-.134,1l-.016.2a5.074,5.074,0,0,0-.018.877c0,.088.007.174.01.291,0,.049,0,.1,0,.142a2.891,2.891,0,0,0,.028.391l.069.453c.015.088.027.173.039.254a3.9,3.9,0,0,0,.107.555l.29,1.029a.68.68,0,0,0,.7.5.67.67,0,0,0,.433-.2.694.694,0,0,0,.192-.39l.151-1.046a2.906,2.906,0,0,1,.082-.333c.026-.089.051-.18.07-.258l.107-.39a1.1,1.1,0,0,1,.061-.157c.021-.049.043-.1.061-.149.036-.083.07-.166.1-.251a2.919,2.919,0,0,1,.224-.478c.041-.071.08-.142.119-.214a3.568,3.568,0,0,1,.305-.495l.021-.028.253-.356c.052-.067.11-.13.166-.194.04-.045.08-.09.131-.149a5.088,5.088,0,0,1,.493-.5l.09-.083c.125-.119.27-.23.422-.349l.183-.141c.077-.051.151-.1.225-.152a3.938,3.938,0,0,1,.394-.25l.3-.174.3-.152c.106-.056.21-.1.305-.138l.165-.071c.053-.019.1-.039.153-.057a1.971,1.971,0,0,1,.2-.068l.082-.019a2.261,2.261,0,0,0,.319.415l5.877,6L16.456,32.158l-.014.015a3.853,3.853,0,0,0-.254,5.525c1.561,1.595,3.7,1.186,5.264-.408l.019-.02,11.068-11.9c.065.078.129.157.2.231L45.15,38.273a3.509,3.509,0,0,0,5.037,0A3.694,3.694,0,0,0,50.187,33.129ZM19.832,35.975a1.45,1.45,0,0,1-2.083,0,1.527,1.527,0,0,1,0-2.127,1.451,1.451,0,0,1,2.083,0A1.528,1.528,0,0,1,19.832,35.975Z" fill="#373737" />
                </g>
            </svg>',
            '<svg class="icon-btn" xmlns="http://www.w3.org/2000/svg" width="33.6" height="41.695" viewBox="0 0 33.6 41.695">
                <g id="screw" transform="translate(-0.172 10.819) rotate(-30)">
                    <path id="Path_18" data-name="Path 18" d="M73.34,255.551l10-9.124v-2.353l-10,9.124Zm0,0" transform="translate(-67.424 -224.998)" fill="#373737" />
                    <path id="Path_19" data-name="Path 19" d="M73.34,310.41l10-9.124v-2.352l-10,9.124Zm0,0" transform="translate(-67.424 -275.571)" fill="#373737" />
                    <path id="Path_20" data-name="Path 20" d="M73.339,363.245a2.839,2.839,0,0,0,.48,1.581l9.524-8.69v-2.351l-10,9.124Zm0,0" transform="translate(-67.424 -326.135)" fill="#373737" />
                    <path id="Path_21" data-name="Path 21" d="M101.734,408.617l-8.445,7.706a2.818,2.818,0,0,0,1.3.327H95.5l6.23-5.68Zm0,0" transform="translate(-85.814 -376.681)" fill="#373737" />
                    <path id="Path_22" data-name="Path 22" d="M73.34,200.7l10-9.124v-2.352l-10,9.124Zm0,0" transform="translate(-67.424 -174.431)" fill="#373737" />
                    <path id="Path_23" data-name="Path 23" d="M152.886,464.349v-.888l-4.108,3.746h1.25A2.861,2.861,0,0,0,152.886,464.349Zm0,0" transform="translate(-136.966 -427.238)" fill="#373737" />
                    <path id="Path_24" data-name="Path 24" d="M.2,6.384V7.813a.715.715,0,0,0,.714.715H20.922a.715.715,0,0,0,.715-.715V6.384A6.459,6.459,0,0,0,15.92,0V1.382a1.431,1.431,0,0,1-1.429,1.429H7.345A1.431,1.431,0,0,1,5.916,1.382V0A6.459,6.459,0,0,0,.2,6.384Zm0,0" fill="#373737" />
                    <path id="Path_25" data-name="Path 25" d="M83.344,127.395h-10v12.021l10-9.124Zm0,0" transform="translate(-67.424 -117.438)" fill="#373737" />
                </g>
            </svg>',
            '<svg class="icon-btn" xmlns="http://www.w3.org/2000/svg" width="33.6" height="41.695" viewBox="0 0 28.475 27.744">
                <g id="Group_15" data-name="Group 15" transform="translate(-1740.999 -1069)">
                    <rect id="Rectangle_32" data-name="Rectangle 32" width="11.682" height="11.682" transform="translate(1757.793 1085.063)" fill="#373737" />
                    <rect id="Rectangle_33" data-name="Rectangle 33" width="11.682" height="11.682" transform="translate(1741 1085.063)" fill="#373737" />
                    <rect id="Rectangle_34" data-name="Rectangle 34" width="11.682" height="11.682" transform="translate(1741 1069)" fill="#373737" />
                    <rect id="Rectangle_35" data-name="Rectangle 35" width="11.682" height="11.682" transform="translate(1757.793 1069)" fill="#373737" />
                </g>
            </svg>'
        ];

		return $this->load->view('extension/module/category', $data);
	}
}