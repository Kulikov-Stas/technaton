<?php echo $header; ?>

<main>
    <?php require("catalog/view/theme/technaton/template/common/header_search.tpl"); ?>

    <?php if ($attention) { ?>
        <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
    <?php } ?>
    <?php if ($success) { ?>
        <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
    <?php } ?>
    <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
    <?php } ?>
    <section>
        <div class="container">
            <div class="row">
                <div class="main-content">

                    <?php require("catalog/view/theme/technaton/template/common/header_block.tpl"); ?>
                    <div class="content-wrapper">
                        <div class="card-block">
                            <div class="left-col">
                                <div class="btn-wrapper">
                                    <a href="/shop/" class="back-btn"></a>
                                </div>
                                <div class="discription-block">
                                    <img src="<?php echo $thumb; ?>" alt="">
                                    <div class="text">
                                        <h1>
                                            <?php if ($manufacturer) { ?>
                                            <li><?php echo $text_manufacturer; ?> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></li>
                                            <?php } ?>
                                        </h1>
                                        <h2><?php echo $heading_title; ?></h2>
                                        <p><?php echo $description; ?></p>
                                    </div>
                                </div>
                                <?php if ($thumb) { ?>
                                    <div class="img-block85">
                                        <a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>">
                                            <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
                                        </a>
                                    </div>
                                <?php } ?>
                            </div>
                            <div class="right-col">
                                <ul class="instruments-list">
                                    <?php if ($accessories) {
                                        $i = 1;
                                        foreach ($accessories as $accessory) { ?>
                                    <li>
                                        <div class="heading-block">
                                            <div class="img-wrapper">
                                                <img src="/image/<?php echo $accessory['image']; ?>" alt="">
                                                <div class="heading-block-title">
                                                    <h5 class="title"><span class="article"><?php echo $i; ?>.</span><?php echo $accessory['name']; ?></h5>
                                                    <p class="model">Модель: <?php echo $accessory['model']; ?></p>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <input type="hidden" name="product_id" value="<?php echo $accessory['product_id']; ?>" />
                                                <button type="button" data-loading-text="<?php echo $text_loading; ?>" class="btn basket btn-primary btn-lg btn-block"></button>
                                            </div>
                                        </div>
                                        <div class="price-block">
                                            <p class="price"><?php echo $accessory['price']; ?></p>
                                            <input name="quantity" class="card-amount" type="number" value="1" min="1" max="1000" step="1" />
                                            <p class="total-price"></p>
                                        </div>
                                    </li>
                                    <?php $i++;
                                        }
                                    } ?>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <?php require("catalog/view/theme/technaton/template/common/operator.tpl"); ?>
</main>
<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('.btn.basket').on('click', function() {
    console.log('click');
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: {
		    'product_id' : $(this).closest('li').find('input[type=\'hidden\']').val(),
            'quantity'   : $(this).closest('li').find('input[type=\'text\']').val()
		},
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('section.pt-0').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').val(json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
    grecaptcha.reset();
});

var text_stock = "<?php echo $text_stock; ?>";
var text_tax = "<?php echo $text_tax; ?>";
<?php
if (isset($warehouses)) {
	echo "var \$warehouses = {";
	foreach ($warehouses as $warehouse_id => $name) {
		echo "'" . $warehouse_id . "':'" . $name . "',";
	}
	echo "}\n";
}
?>
<?php if ($options) {?>
//------------------------------------------------------------------------------------------------------------------------------
// Определение переменных для характеристик
var $options_type = {<?php foreach ($options as $option) { echo $option['product_option_id'].":'".$option['type']."',"; }?>};
var options_order = [<?php foreach ($options as $option) { echo $option['product_option_id'].","; }?>];
var $options_required = {<?php foreach ($options as $option) { echo $option['product_option_id'].":true,"; }?>};
var $options = {<?php
	foreach ($product_features_options as $product_feature_id => $feature) {
		$str_value = $product_feature_id.":{";
		foreach ($feature as $product_option_id => $product_option_value_id) {
			$str_value .= $product_option_id.":".$product_option_value_id.",";
		}
		$str_value .= "},";
		echo $str_value;
	}
	echo "};\n";?>
// Тут хранится id выбранной характеристики
var product_feature_id = 0;
var unit_id = 0;
<?php

	$str_features =  "var \$features = {";
	$str_price =  "var \$price = {";
	$str_quantity = "// quantity{product_feature_id:{warehouse_id:{unit_id:quantity}}}\n";
	$quantity_total =  0;
	$str_quantity .=  "var \$quantity = {";
	foreach ($product_features_options as $product_feature_id => $feature_option) {
		// Цены
		$str_price .= "'" . $product_feature_id . "':{'value':" . $product_features_price[$product_feature_id]['value'] . ",'tax':" . $product_features_price[$product_feature_id]['tax'] . ",'unit':" . $product_features_price[$product_feature_id]['unit'] . "},";
		// Характеристики
		$str_features .= "'" . implode("_", $feature_option) . "':" . $product_feature_id . ",";
		// Остатки
		$quantity_array = isset($product_quantity[$product_feature_id]) ? $product_quantity[$product_feature_id] : array();
		$str_quantity .= "'" . $product_feature_id . "':";

		$str_quantity .= "{";
		foreach ($quantity_array as $warehouse_id => $quantity) {
			$str_quantity .= "'" . $warehouse_id . "':" . $quantity . ",";
			$quantity_total += $quantity;
		}
		$str_quantity .= "},";

	}
	echo $str_features . "};\n";
	echo $str_price . "};\n";
	echo $str_quantity . "};\n";
	echo "var quantity_total = " . $quantity_total . ";\n";
	echo "var \$product_units = {";
	foreach ($product_units as $unit_id => $unit) {
		echo $unit_id . ":{'name':'" . $unit['name'] . "','ratio':".$unit['ratio']."},";
	}
	echo "};\n";
	echo "var \$currency_data = {'symbol':'".$currency_data['symbol']."','decimal':".$currency_data['decimal']."};\n";
?>


//------------------------------------------------------------------------------------------------------------------------------
// Функция отображает остатки по складам
// Возвращает строковую переменную в которой перечислены названия всех складов с остатками и единицами измерений
function displayQuantity() {

	if ($.type($quantity[product_feature_id]) == "string") {

		// Если переменная строка, то есть нет складов, возвращается только количество
		return $quantity[product_feature_id];

	} else {

		var str = "";
		var quantity_warehouse = 0;
		var str_war = "";
		unit_id = $price[product_feature_id]['unit'];
		var $unit = $product_units[unit_id];
		var total = 0;

		// Единица цены
		if ($unit) {
			str_unit = " ("+$unit['name']+")";
		} else {
			str_unit = "";
		}

		// Перебираем все остатки по складам
		$.each($quantity[product_feature_id],function(warehouse_id, product_quantity) {

			// Нет складов, если warehouse_id = 0
			if (warehouse_id == "0") {

				// Перебираем все единицы измерений
				$.each(product_quantity,function(unit_id, quantity) {
					//str += quantity+" ("+$unit['name']+"),";
					str += "\n" + quantity;
				});
			}
			// Остатки в выбранной единице
			else if (unit_id != 0) {

				// Название склада
				str_war = " Склад: "+$warehouses[warehouse_id]+": ";

			} else {
				if (product_quantity > 0) {
					quantity_warehouse++;
					str_war += " " + $warehouses[warehouse_id] + " = " + product_quantity + str_unit;
				}
			}
		});
		if (quantity_warehouse > 0) {
			str = " " + quantity_total + str_unit + " в " + quantity_warehouse + " магазинах: (" + str_war + ")";
		} else if (quantity_total > 0) {
			if ($unit['ratio'] != 0) {
				total = quantity_total / $unit['ratio'];
			}
			str = " " + total + " по опциям: " + $quantity[product_feature_id][0] + str_unit;
		} else {
			str = " нет в наличии";
		}
		return str;
	}
} // displayQuantity()

//------------------------------------------------------------------------------------------------------------------------------
// Функция отображает на странице цену, налоги, остатки,
// а также, для передачи в корзину, устанавливает значение product_feature_id
function displaySelect() {
	if (product_feature_id){
		$('#price').text(Math.round($price[product_feature_id]['value']).toFixed($currency_data['decimal'])+$currency_data['symbol']);
		$('#tax').text(text_tax+" "+Math.round($price[product_feature_id]['tax']).toFixed($currency_data['decimal'])+$currency_data['symbol']);
		$('#stock').text(text_stock+" "+displayQuantity());
		$('input[name=\'product_feature_id\']').val(product_feature_id);
		$('input[name=\'unit_id\']').val(unit_id);
	} else {
		$('#price').text("");
		$('#tax').text("");
		$('#stock').text(text_stock+" "+quantity_total+" ("+$product_units[0]['name']+")");
		$('input[name=\'product_feature_id\']').val(0);
		$('input[name=\'unit_id\']').val(0);
	}
} // displaySelect()

//------------------------------------------------------------------------------------------------------------------------------
// Функция очищает все опции и разблокирует их, сбрасывает ид характеристики, а также обновляет надписи на страничке
function clearOptions() {

	// Перебираем все опции
	$.each($options_type,function(product_option_id, value) {

		if (value == "select") {

			// Делаем доступным опцию
			$('select[name="option['+product_option_id+']"]').attr("disabled",false);

			// Сбрасываем выбор, по-умолчанию будет выбран первый элемент
			$('select[name="option['+product_option_id+']"]').val('');

			// Делаем доступным все значения опции
			$('select[name="option['+product_option_id+']"] option').each(function(){
				$(this).removeAttr("disabled");
			});
		} else {

			// Делаем доступным опцию
			$('input[name="option['+product_option_id+']"]').attr("disabled",false);

			// Снимаем выбор со всех значений
			$('input[name="option['+product_option_id+']"]').attr('checked', false);
		}
		$options_required[product_option_id] = true;
	});

	// Проверка на обязательные опции
	checkRequired();

	// Сбрасываем выбранную характеристику
	product_feature_id = 0;

	// Обновляем надписи на страничке
	displaySelect();

} // clearOptions()

//------------------------------------------------------------------------------------------------------------------------------
// Функция проверяет и устанавливает какие опции обязательные, бывает что некоторые характеристики имеют разное количество опций
function checkRequired() {

	// Перебираем все опции
	$.each($options_required,function(product_option_id, required) {

		if ($options_type[product_option_id] == "select") {

			// Получаем элемент в котором устанавливается класс обязательной опции
			$form = $('select[name="option['+product_option_id+']"]').parents("div.form-group");

			// Если опция должна быть обязательной, а она не содержит класс "required", устанавливает этот класс или наоборот убираем его
			if (required && !$form.hasClass("required")) {
				$form.addClass("required");
			} else if (!required && $form.hasClass("required")) {
				$form.removeClass("required");
			}

		} else {

			// Получаем элемент в котором устанавливается класс обязательной опции
			$form = $('input[name="option['+product_option_id+']"]').parents("div.form-group");

			// Если опция должна быть обязательной, а она не содержит класс "required", устанавливает этот класс или наоборот убираем его
			if (required && !$form.hasClass("required")) {
				$form.addClass("required");
			} else if (!required && $form.hasClass("required")) {
				$form.removeClass("required");
			}
		}
	});
} // checkRequired()

//------------------------------------------------------------------------------------------------------------------------------
// Функция возвращает выбранные опции значений в виде объекта
// Возвращает $option_values - объект с опция и значениями
function getOptionValues() {
	var $option_values = {};

	// Перебираем опции в том порядке в каком они заданы на сайте
	$.each(options_order,function(index, product_option_id) {

		if ($options_type[product_option_id] == 'select') {
			// Если опция типа select
			$option_values[product_option_id] = $('select[name="option['+product_option_id+']"] :selected').val();

		} else {
			// Если опция типа input
			$option_values[product_option_id] = $('input[name="option['+product_option_id+']"]:checked').val();
		}
	});
	return $option_values;
} // getOptionValues()

//------------------------------------------------------------------------------------------------------------------------------
// Функция по выбранным опциям возвращает product_feature_id
// $option_values - объект с опциями и значений
// Возвращает ид характеристики, если вариант выбранныхопций не существует ни в одной характеристики, то вернет 0
function getProductFeature($option_values) {
	var new_product_feature_id = 0;
	$.each($options,function(feature_id, $product_options) {

		// Количество совпадений
		var matches = 0;

		// Перебираем все опции характеристики
		$.each($product_options,function(product_option_id, product_option_value_id) {

			// Ищем совпадение значений
			if ($option_values[product_option_id] == product_option_value_id) {
				matches ++;
			}
		});

		// Если совпали все опции
		if (matches == options_order.length) {

			// Сохраним значение характеристики где совпали все опции
			new_product_feature_id = feature_id;

			// Прервем цикл
			return false;
		}
	});

	return new_product_feature_id;
} // getProductFeature()

//------------------------------------------------------------------------------------------------------------------------------
// Функция устанавливает доступность опции типа input и ее значения
// current_product_option_value_id - текущее выбранное значение опции
// current_option_id - текущая опция в которой выбрано значение
// $option_values - объект в котором заданы все значения опций текущей характеристики
// Возвращает значение текущей опции
function setAccessInputOption(current_option_id, current_product_option_value_id, $option_values) {
	var val = 0;
	var required = false;

	// Перебираем все значения опций
	$('div#input-option'+current_option_id+' div label input').each(function(index){

		// Если в классе не содержится значение выбранной опции, то отключаем эту опцию и снимаем флажок
		if (!$(this).hasClass(current_product_option_value_id) && (current_product_option_value_id)) {
			$(this).attr("disabled",true);
			$(this).prop("checked",false);

		} else {

			required = true;

			// Включаем,если была отключена ранее
			$(this).attr("disabled",false);

			// Если есть в варианте текущее значение опции
			if ($option_values[current_option_id] == $(this).val()) {

				// И еще не выбрано значение
				if (!val) {
					val = $(this).val();
					$(this).prop("checked",true);
				} else {
					// Если значение уже было установлено, то с других опций снимаем выбор
					$(this).prop("checked",false);
				}
			} else {
				// Если вариант не содержит значение, снимаем выбор
				$(this).prop("checked",false);
				//$(this).attr("disabled",true);
			}
		}

	});
	$options_required[current_option_id] = required;
	return val;
} // setAccessSelectOption()

//------------------------------------------------------------------------------------------------------------------------------
// Функция устанавливает доступность опции типа select и ее значения
// current_product_option_value_id - текущее выбранное значение опции
// current_option_id - текущая опция в которой выбрано значение
// $option_values - объект в котором заданы все значения опций текущей характеристики
// Возвращает значение текущей опции
function setAccessSelectOption(current_option_id, current_product_option_value_id, $option_values) {
	var val = 0;
	var required = false;

	// Перебираем все значения опций
	$('select#input-option'+current_option_id+' option').each(function(index){

		// Если в классе не содержится значение выбранной опции,
		// и есть само значение и не первое, тогда отключаем эту опцию и снимаем флажок
		if (!$(this).hasClass(current_product_option_value_id) && (current_product_option_value_id) && index > 0) {
			$(this).attr("disabled",true);
			$(this).prop("selected",false);
		} else {

			required = true;

			// Значение содержится в классе, значит разблокируем если был заблокирован
			$(this).attr("disabled",false);

			// Если не было ранее выбрано значение, и не первое,
			// и в варианте для этой опции есть текущее значение
			if (!val && index > 0 && $option_values[current_option_id] == $(this).val()) {

				// Записываем выбранное значение
				val = $(this).val();

				// Выбираем его в селекте
				$(this).prop("selected",true);
			}
		}
	});
	$options_required[current_option_id] = required;
	return val;
} // setAccessSelectOption()

//------------------------------------------------------------------------------------------------------------------------------
// Функция устанавливает доступность опций и их значений
// current_product_option_value_id - текущее выбранное значение опции
// current_option_id - текущая опция в которой выбрано значение
// $option_values - объект в котором заданы все значения опций текущей характеристики
// Возвращает объект $option_values, теоретически он не меняется, оставлено временно для тестирования
function setAccessOptions(current_product_option_value_id, current_option_id, $option_values) {

	// Выберем опции по варианту
	$.each(options_order,function(index, product_option_id) {

		if (current_option_id == product_option_id) {
			$option_values[product_option_id] = current_product_option_value_id;
		} else {
			if ($options_type[product_option_id] == 'select') {

				// Установим доступность значений в опции типа select
				//$option_values[product_option_id] = setAccessSelectOption(product_option_id, current_product_option_value_id, $option_values);
				setAccessSelectOption(product_option_id, current_product_option_value_id, $option_values);
			} else {

				// Установим доступность значений в опции типа input
				//$option_values[product_option_id] = setAccessInputOption(product_option_id, current_product_option_value_id, $option_values);
				setAccessInputOption(product_option_id, current_product_option_value_id, $option_values);
			}
		}
	});

	return $option_values;
} // setAccessOptions()

//------------------------------------------------------------------------------------------------------------------------------
// Функция получает первый вариант опция по выбранному значению одной из опций
// product_option_value_id - значение выбранной опции
// Возвращает объект (index = product_option_id, value = product_option_value_id)
function getRightOption(product_option_value_id) {

	// Тут хранится вариант опций выбранной характеристики
	var $option_values = {};

	// Перебирем все опции
	$.each($options, function(sel_product_feature_id, $product_options) {

		// Прервем цикл, если ид характеристики уже определена
		if (product_feature_id) {
   			return false;
   		}

		// Перебираем все опции характеристики
		$.each($product_options, function(option_id, sel_product_option_value_id) {

			// Если значение неопределено, берем первую попавшуюся характеристику
			if (product_option_value_id == undefined) {

				// Запишем id характеристики, чтобы потом передать ее в корзину
				product_feature_id = sel_product_feature_id;

				// Получим вариант опций и значений этой характеристики
				$option_values = $product_options;

				// Прервем цикл
				return false;
			}

			// Если совпало значение опции в первой попавшейся характеристики, тогда выбираем ее, и получаем остальные значения опций
    		else if (sel_product_option_value_id == product_option_value_id) {

				// Запишем id характеристики, чтобы потом передать ее в корзину
				product_feature_id = sel_product_feature_id;

				// Получим вариант опций и значений этой характеристики
				$option_values = $product_options;

				// Прервем цикл
				return false;
    		}
   		});

	});

	return $option_values;
} // getRightOption()

//------------------------------------------------------------------------------------------------------------------------------
// Функция вызывается при изменении любой опции
// current_option_id - это номер опции в которой выбрано значение
// selected - выбранное значение опции, product_option_value_id
// type - тип опции, может иметь значение: select, input, radio, image
function selectOption(current_option_id, selected, type) {

	// Объект опций с выбранными значениями (index = опция, value = значение)
	var $option_values = {};

	// Получим существующие значения опций
	$option_values = getOptionValues();

	// Проверим вариант и получим id характеристики, если вариант неверный, тогда id = 0
	product_feature_id = getProductFeature($option_values);

	// Если опции не соответствуют ни одной характеристики, выставляем другие опции по первому совпадению в первой найденой характеристики
	if (!product_feature_id) {

		// Получим вариант опции по выбранному значению одной из опций
		// option_values это объект index = product_option_id, value = product_option_value_id
		$option_values = getRightOption(selected);

		// Устанавливает доступность значений всех опций
		setAccessOptions(selected, current_option_id, $option_values);

		// Установим единицу цены по умолчанию
		//unit_id = $price[product_feature_id]['unit'];
	}

	// Проверим опции на обязательные
	checkRequired();

	// Отображает выбранные данные
	displaySelect();
}

<?php } ?>

$(document).ready(function() {
<?php if ($options) {?>
	// Кнопки очистки опций, под каждый шаблон возможно придется править
	//$('select[name="option[9]"]').parent('div').before('<div class="form-group"><a href="#" id="clear_options">Очистить опции</a></div>');
	$('div#input-option7').parent('div').after('<div class="form-group"><a href="#" id="clear_options">Очистить опции</a></div>');
	//$('div#form-group').parent('div').after('<div class="form-group"><a href="#" id="clear_options">Очистить опции</a></div>');

	$('#product').find('h3').after('<div class="form-group"><a href="#" id="clear_options">Очистить опции</a></div>');

<?php foreach ($options as $option) { ?>
	//------------------------------------------------------------------------------------------------------------------------------
	// Функция обрабатывает значение при выборе опции
<?php
	$select_type = $option['type'] == "select" ? "select" : "input";
	$html = "	$('".$select_type."[name=\"option[".$option['product_option_id']."]\"]').change(function(){\n";
	$html .= "		var selected = ".($select_type  == "select" ? "$(':selected', this).val();" : "this.value;") . "\n";
	$html .= "		selectOption(".$option['product_option_id'].",selected,'".$select_type."');\n";
	$html .= "	});\n\n";
	echo $html;
	} ?>
	$('#product').on('click', '#clear_options', function(e){
		e.preventDefault();
		clearOptions();
	});

	selectOption();

<?php } ?>

	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});

var text_stock = "<?php echo $text_stock; ?>";
var text_tax = "<?php echo $text_tax; ?>";
<?php
if (isset($warehouses)) {
	echo "var \$warehouses = {";
	foreach ($warehouses as $warehouse_id => $name) {
		echo "'" . $warehouse_id . "':'" . $name . "',";
	}
	echo "}\n";
}
?>
<?php if ($options) {?>
//------------------------------------------------------------------------------------------------------------------------------
// Определение переменных для характеристик
var $options_type = {<?php foreach ($options as $option) { echo $option['product_option_id'].":'".$option['type']."',"; }?>};
var options_order = [<?php foreach ($options as $option) { echo $option['product_option_id'].","; }?>];
var $options_required = {<?php foreach ($options as $option) { echo $option['product_option_id'].":true,"; }?>};
var $options = {<?php
	foreach ($product_features_options as $product_feature_id => $feature) {
		$str_value = $product_feature_id.":{";
		foreach ($feature as $product_option_id => $product_option_value_id) {
			$str_value .= $product_option_id.":".$product_option_value_id.",";
		}
		$str_value .= "},";
		echo $str_value;
	}
	echo "};\n";?>
// Тут хранится id выбранной характеристики
var product_feature_id = 0;
var unit_id = 0;
<?php

	$str_features =  "var \$features = {";
	$str_price =  "var \$price = {";
	$str_quantity = "// quantity{product_feature_id:{warehouse_id:{unit_id:quantity}}}\n";
	$quantity_total =  0;
	$str_quantity .=  "var \$quantity = {";
	foreach ($product_features_options as $product_feature_id => $feature_option) {
		// Цены
		$str_price .= "'" . $product_feature_id . "':{'value':" . $product_features_price[$product_feature_id]['value'] . ",'tax':" . $product_features_price[$product_feature_id]['tax'] . ",'unit':" . $product_features_price[$product_feature_id]['unit'] . "},";
		// Характеристики
		$str_features .= "'" . implode("_", $feature_option) . "':" . $product_feature_id . ",";
		// Остатки
		$quantity_array = isset($product_quantity[$product_feature_id]) ? $product_quantity[$product_feature_id] : array();
		$str_quantity .= "'" . $product_feature_id . "':";

		$str_quantity .= "{";
		foreach ($quantity_array as $warehouse_id => $quantity) {
			$str_quantity .= "'" . $warehouse_id . "':" . $quantity . ",";
			$quantity_total += $quantity;
		}
		$str_quantity .= "},";

	}
	echo $str_features . "};\n";
	echo $str_price . "};\n";
	echo $str_quantity . "};\n";
	echo "var quantity_total = " . $quantity_total . ";\n";
	echo "var \$product_units = {";
	foreach ($product_units as $unit_id => $unit) {
		echo $unit_id . ":{'name':'" . $unit['name'] . "','ratio':".$unit['ratio']."},";
	}
	echo "};\n";
	echo "var \$currency_data = {'symbol':'".$currency_data['symbol']."','decimal':".$currency_data['decimal']."};\n";
?>


//------------------------------------------------------------------------------------------------------------------------------
// Функция отображает остатки по складам
// Возвращает строковую переменную в которой перечислены названия всех складов с остатками и единицами измерений
function displayQuantity() {

	if ($.type($quantity[product_feature_id]) == "string") {

		// Если переменная строка, то есть нет складов, возвращается только количество
		return $quantity[product_feature_id];

	} else {

		var str = "";
		var quantity_warehouse = 0;
		var str_war = "";
		unit_id = $price[product_feature_id]['unit'];
		var $unit = $product_units[unit_id];
		var total = 0;

		// Единица цены
		if ($unit) {
			str_unit = " ("+$unit['name']+")";
		} else {
			str_unit = "";
		}

		// Перебираем все остатки по складам
		$.each($quantity[product_feature_id],function(warehouse_id, product_quantity) {

			// Нет складов, если warehouse_id = 0
			if (warehouse_id == "0") {

				// Перебираем все единицы измерений
				$.each(product_quantity,function(unit_id, quantity) {
					//str += quantity+" ("+$unit['name']+"),";
					str += "\n" + quantity;
				});
			}
			// Остатки в выбранной единице
			else if (unit_id != 0) {

				// Название склада
				str_war = " Склад: "+$warehouses[warehouse_id]+": ";

			} else {
				if (product_quantity > 0) {
					quantity_warehouse++;
					str_war += " " + $warehouses[warehouse_id] + " = " + product_quantity + str_unit;
				}
			}
		});
		if (quantity_warehouse > 0) {
			str = " " + quantity_total + str_unit + " в " + quantity_warehouse + " магазинах: (" + str_war + ")";
		} else if (quantity_total > 0) {
			if ($unit['ratio'] != 0) {
				total = quantity_total / $unit['ratio'];
			}
			str = " " + total + " по опциям: " + $quantity[product_feature_id][0] + str_unit;
		} else {
			str = " нет в наличии";
		}
		return str;
	}
} // displayQuantity()

//------------------------------------------------------------------------------------------------------------------------------
// Функция отображает на странице цену, налоги, остатки,
// а также, для передачи в корзину, устанавливает значение product_feature_id
function displaySelect() {
	if (product_feature_id){
		$('#price').text(Math.round($price[product_feature_id]['value']).toFixed($currency_data['decimal'])+$currency_data['symbol']);
		$('#tax').text(text_tax+" "+Math.round($price[product_feature_id]['tax']).toFixed($currency_data['decimal'])+$currency_data['symbol']);
		$('#stock').text(text_stock+" "+displayQuantity());
		$('input[name=\'product_feature_id\']').val(product_feature_id);
		$('input[name=\'unit_id\']').val(unit_id);
	} else {
		$('#price').text("");
		$('#tax').text("");
		$('#stock').text(text_stock+" "+quantity_total+" ("+$product_units[0]['name']+")");
		$('input[name=\'product_feature_id\']').val(0);
		$('input[name=\'unit_id\']').val(0);
	}
} // displaySelect()

//------------------------------------------------------------------------------------------------------------------------------
// Функция очищает все опции и разблокирует их, сбрасывает ид характеристики, а также обновляет надписи на страничке
function clearOptions() {

	// Перебираем все опции
	$.each($options_type,function(product_option_id, value) {

		if (value == "select") {

			// Делаем доступным опцию
			$('select[name="option['+product_option_id+']"]').attr("disabled",false);

			// Сбрасываем выбор, по-умолчанию будет выбран первый элемент
			$('select[name="option['+product_option_id+']"]').val('');

			// Делаем доступным все значения опции
			$('select[name="option['+product_option_id+']"] option').each(function(){
				$(this).removeAttr("disabled");
			});
		} else {

			// Делаем доступным опцию
			$('input[name="option['+product_option_id+']"]').attr("disabled",false);

			// Снимаем выбор со всех значений
			$('input[name="option['+product_option_id+']"]').attr('checked', false);
		}
		$options_required[product_option_id] = true;
	});

	// Проверка на обязательные опции
	checkRequired();

	// Сбрасываем выбранную характеристику
	product_feature_id = 0;

	// Обновляем надписи на страничке
	displaySelect();

} // clearOptions()

//------------------------------------------------------------------------------------------------------------------------------
// Функция проверяет и устанавливает какие опции обязательные, бывает что некоторые характеристики имеют разное количество опций
function checkRequired() {

	// Перебираем все опции
	$.each($options_required,function(product_option_id, required) {

		if ($options_type[product_option_id] == "select") {

			// Получаем элемент в котором устанавливается класс обязательной опции
			$form = $('select[name="option['+product_option_id+']"]').parents("div.form-group");

			// Если опция должна быть обязательной, а она не содержит класс "required", устанавливает этот класс или наоборот убираем его
			if (required && !$form.hasClass("required")) {
				$form.addClass("required");
			} else if (!required && $form.hasClass("required")) {
				$form.removeClass("required");
			}

		} else {

			// Получаем элемент в котором устанавливается класс обязательной опции
			$form = $('input[name="option['+product_option_id+']"]').parents("div.form-group");

			// Если опция должна быть обязательной, а она не содержит класс "required", устанавливает этот класс или наоборот убираем его
			if (required && !$form.hasClass("required")) {
				$form.addClass("required");
			} else if (!required && $form.hasClass("required")) {
				$form.removeClass("required");
			}
		}
	});
} // checkRequired()

//------------------------------------------------------------------------------------------------------------------------------
// Функция возвращает выбранные опции значений в виде объекта
// Возвращает $option_values - объект с опция и значениями
function getOptionValues() {
	var $option_values = {};

	// Перебираем опции в том порядке в каком они заданы на сайте
	$.each(options_order,function(index, product_option_id) {

		if ($options_type[product_option_id] == 'select') {
			// Если опция типа select
			$option_values[product_option_id] = $('select[name="option['+product_option_id+']"] :selected').val();

		} else {
			// Если опция типа input
			$option_values[product_option_id] = $('input[name="option['+product_option_id+']"]:checked').val();
		}
	});
	return $option_values;
} // getOptionValues()

//------------------------------------------------------------------------------------------------------------------------------
// Функция по выбранным опциям возвращает product_feature_id
// $option_values - объект с опциями и значений
// Возвращает ид характеристики, если вариант выбранныхопций не существует ни в одной характеристики, то вернет 0
function getProductFeature($option_values) {
	var new_product_feature_id = 0;
	$.each($options,function(feature_id, $product_options) {

		// Количество совпадений
		var matches = 0;

		// Перебираем все опции характеристики
		$.each($product_options,function(product_option_id, product_option_value_id) {

			// Ищем совпадение значений
			if ($option_values[product_option_id] == product_option_value_id) {
				matches ++;
			}
		});

		// Если совпали все опции
		if (matches == options_order.length) {

			// Сохраним значение характеристики где совпали все опции
			new_product_feature_id = feature_id;

			// Прервем цикл
			return false;
		}
	});

	return new_product_feature_id;
} // getProductFeature()

//------------------------------------------------------------------------------------------------------------------------------
// Функция устанавливает доступность опции типа input и ее значения
// current_product_option_value_id - текущее выбранное значение опции
// current_option_id - текущая опция в которой выбрано значение
// $option_values - объект в котором заданы все значения опций текущей характеристики
// Возвращает значение текущей опции
function setAccessInputOption(current_option_id, current_product_option_value_id, $option_values) {
	var val = 0;
	var required = false;

	// Перебираем все значения опций
	$('div#input-option'+current_option_id+' div label input').each(function(index){

		// Если в классе не содержится значение выбранной опции, то отключаем эту опцию и снимаем флажок
		if (!$(this).hasClass(current_product_option_value_id) && (current_product_option_value_id)) {
			$(this).attr("disabled",true);
			$(this).prop("checked",false);

		} else {

			required = true;

			// Включаем,если была отключена ранее
			$(this).attr("disabled",false);

			// Если есть в варианте текущее значение опции
			if ($option_values[current_option_id] == $(this).val()) {

				// И еще не выбрано значение
				if (!val) {
					val = $(this).val();
					$(this).prop("checked",true);
				} else {
					// Если значение уже было установлено, то с других опций снимаем выбор
					$(this).prop("checked",false);
				}
			} else {
				// Если вариант не содержит значение, снимаем выбор
				$(this).prop("checked",false);
				//$(this).attr("disabled",true);
			}
		}

	});
	$options_required[current_option_id] = required;
	return val;
} // setAccessSelectOption()

//------------------------------------------------------------------------------------------------------------------------------
// Функция устанавливает доступность опции типа select и ее значения
// current_product_option_value_id - текущее выбранное значение опции
// current_option_id - текущая опция в которой выбрано значение
// $option_values - объект в котором заданы все значения опций текущей характеристики
// Возвращает значение текущей опции
function setAccessSelectOption(current_option_id, current_product_option_value_id, $option_values) {
	var val = 0;
	var required = false;

	// Перебираем все значения опций
	$('select#input-option'+current_option_id+' option').each(function(index){

		// Если в классе не содержится значение выбранной опции,
		// и есть само значение и не первое, тогда отключаем эту опцию и снимаем флажок
		if (!$(this).hasClass(current_product_option_value_id) && (current_product_option_value_id) && index > 0) {
			$(this).attr("disabled",true);
			$(this).prop("selected",false);
		} else {

			required = true;

			// Значение содержится в классе, значит разблокируем если был заблокирован
			$(this).attr("disabled",false);

			// Если не было ранее выбрано значение, и не первое,
			// и в варианте для этой опции есть текущее значение
			if (!val && index > 0 && $option_values[current_option_id] == $(this).val()) {

				// Записываем выбранное значение
				val = $(this).val();

				// Выбираем его в селекте
				$(this).prop("selected",true);
			}
		}
	});
	$options_required[current_option_id] = required;
	return val;
} // setAccessSelectOption()

//------------------------------------------------------------------------------------------------------------------------------
// Функция устанавливает доступность опций и их значений
// current_product_option_value_id - текущее выбранное значение опции
// current_option_id - текущая опция в которой выбрано значение
// $option_values - объект в котором заданы все значения опций текущей характеристики
// Возвращает объект $option_values, теоретически он не меняется, оставлено временно для тестирования
function setAccessOptions(current_product_option_value_id, current_option_id, $option_values) {

	// Выберем опции по варианту
	$.each(options_order,function(index, product_option_id) {

		if (current_option_id == product_option_id) {
			$option_values[product_option_id] = current_product_option_value_id;
		} else {
			if ($options_type[product_option_id] == 'select') {

				// Установим доступность значений в опции типа select
				//$option_values[product_option_id] = setAccessSelectOption(product_option_id, current_product_option_value_id, $option_values);
				setAccessSelectOption(product_option_id, current_product_option_value_id, $option_values);
			} else {

				// Установим доступность значений в опции типа input
				//$option_values[product_option_id] = setAccessInputOption(product_option_id, current_product_option_value_id, $option_values);
				setAccessInputOption(product_option_id, current_product_option_value_id, $option_values);
			}
		}
	});

	return $option_values;
} // setAccessOptions()

//------------------------------------------------------------------------------------------------------------------------------
// Функция получает первый вариант опция по выбранному значению одной из опций
// product_option_value_id - значение выбранной опции
// Возвращает объект (index = product_option_id, value = product_option_value_id)
function getRightOption(product_option_value_id) {

	// Тут хранится вариант опций выбранной характеристики
	var $option_values = {};

	// Перебирем все опции
	$.each($options, function(sel_product_feature_id, $product_options) {

		// Прервем цикл, если ид характеристики уже определена
		if (product_feature_id) {
   			return false;
   		}

		// Перебираем все опции характеристики
		$.each($product_options, function(option_id, sel_product_option_value_id) {

			// Если значение неопределено, берем первую попавшуюся характеристику
			if (product_option_value_id == undefined) {

				// Запишем id характеристики, чтобы потом передать ее в корзину
				product_feature_id = sel_product_feature_id;

				// Получим вариант опций и значений этой характеристики
				$option_values = $product_options;

				// Прервем цикл
				return false;
			}

			// Если совпало значение опции в первой попавшейся характеристики, тогда выбираем ее, и получаем остальные значения опций
    		else if (sel_product_option_value_id == product_option_value_id) {

				// Запишем id характеристики, чтобы потом передать ее в корзину
				product_feature_id = sel_product_feature_id;

				// Получим вариант опций и значений этой характеристики
				$option_values = $product_options;

				// Прервем цикл
				return false;
    		}
   		});

	});

	return $option_values;
} // getRightOption()

//------------------------------------------------------------------------------------------------------------------------------
// Функция вызывается при изменении любой опции
// current_option_id - это номер опции в которой выбрано значение
// selected - выбранное значение опции, product_option_value_id
// type - тип опции, может иметь значение: select, input, radio, image
function selectOption(current_option_id, selected, type) {

	// Объект опций с выбранными значениями (index = опция, value = значение)
	var $option_values = {};

	// Получим существующие значения опций
	$option_values = getOptionValues();

	// Проверим вариант и получим id характеристики, если вариант неверный, тогда id = 0
	product_feature_id = getProductFeature($option_values);

	// Если опции не соответствуют ни одной характеристики, выставляем другие опции по первому совпадению в первой найденой характеристики
	if (!product_feature_id) {

		// Получим вариант опции по выбранному значению одной из опций
		// option_values это объект index = product_option_id, value = product_option_value_id
		$option_values = getRightOption(selected);

		// Устанавливает доступность значений всех опций
		setAccessOptions(selected, current_option_id, $option_values);

		// Установим единицу цены по умолчанию
		//unit_id = $price[product_feature_id]['unit'];
	}

	// Проверим опции на обязательные
	checkRequired();

	// Отображает выбранные данные
	displaySelect();
}

<?php } ?>

$(document).ready(function() {
<?php if ($options) {?>
	// Кнопки очистки опций, под каждый шаблон возможно придется править
	//$('select[name="option[9]"]').parent('div').before('<div class="form-group"><a href="#" id="clear_options">Очистить опции</a></div>');
	$('div#input-option7').parent('div').after('<div class="form-group"><a href="#" id="clear_options">Очистить опции</a></div>');
	//$('div#form-group').parent('div').after('<div class="form-group"><a href="#" id="clear_options">Очистить опции</a></div>');

	$('#product').find('h3').after('<div class="form-group"><a href="#" id="clear_options">Очистить опции</a></div>');

<?php foreach ($options as $option) { ?>
	//------------------------------------------------------------------------------------------------------------------------------
	// Функция обрабатывает значение при выборе опции
<?php
	$select_type = $option['type'] == "select" ? "select" : "input";
	$html = "	$('".$select_type."[name=\"option[".$option['product_option_id']."]\"]').change(function(){\n";
	$html .= "		var selected = ".($select_type  == "select" ? "$(':selected', this).val();" : "this.value;") . "\n";
	$html .= "		selectOption(".$option['product_option_id'].",selected,'".$select_type."');\n";
	$html .= "	});\n\n";
	echo $html;
	} ?>
	$('#product').on('click', '#clear_options', function(e){
		e.preventDefault();
		clearOptions();
	});

	selectOption();

<?php } ?>

	var hash = window.location.hash;
	if (hash) {
		var hashpart = hash.split('#');
		var  vals = hashpart[1].split('-');
		for (i=0; i<vals.length; i++) {
			$('#product').find('select option[value="'+vals[i]+'"]').attr('selected', true).trigger('select');
			$('#product').find('input[type="radio"][value="'+vals[i]+'"]').attr('checked', true).trigger('click');
			$('#product').find('input[type="checkbox"][value="'+vals[i]+'"]').attr('checked', true).trigger('click');
		}
	}
})
//--></script>
<?php echo $footer; ?>
