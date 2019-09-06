
<div class="cart-popup-block vh-100">
    <section class="main-menu">
        <div class="container">
            <div class="row">
                <div class="menu">
                    <nav class="navbar pl-0 pr-0">
                        <div class="menuIconBlock pull-right w-auto">
                            <div class="shopping-btn">
                                <a href="#">
                                    <svg id="exit" xmlns="http://www.w3.org/2000/svg" width="63.229" height="49" viewBox="0 0 63.229 49">
                                        <rect id="Rectangle_77" data-name="Rectangle 77" width="63.229" height="49" fill="#007dc4" />
                                        <path id="Path_80" data-name="Path 80" d="M3.7-28.655l6.153,8.046.316.592.316-.592,6.153-8.046H19.52L11.671-18.321,19.52-8.106H16.641l-6.153-8.007-.316-.552-.316.552L3.7-8.106H.825L8.674-18.321.825-28.655Z" transform="translate(21.916 43.053)" fill="#fff" />
                                    </svg>
                                </a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container cart-block">

            <div class="heading-block ">
                <h2><?php echo $heading_title; ?></h2>
                <!--<div class="sort-block">
                    <form class="form-inline">
                        <select name="category" id="category">
                            <option value="spareParts">По популярности</option>
                            <option value="instruments">От дешевых к дорогим</option>
                            <option value="consumables">От дорогих к дешевым</option>
                            <option value="other">По номеру ▲</option>
                            <option value="other">По номеру ▼</option>
                        </select>
                        <button class="btn search-btn" type="button">
                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="74" height="49" viewBox="0 0 74 49">
                                <defs>
                                    <clipPath id="clip-path">
                                        <rect width="74" height="49" fill="none"></rect>
                                    </clipPath>
                                </defs>
                                <use xlink:href="#search_news_" x="0" y="0"></use>
                            </svg>
                        </button>
                    </form>
                </div>-->
            </div>
            <div class="content-block">
                <?php if ($products) { ?>

                <div class="left-col hide-480">
                    <p class="a"><?php echo $contacts_data; ?></p>
                    <form action="http://for-tests2.h1n.ru/testAjax/index4.html" method="POST" id="cart-order">
                       <!-- <input id="name" type="text" name="name" required placeholder="Имя*">-->
                            <input required type="text" name="firstname" value="<?php echo $firstname; ?>" placeholder="<?php echo $entry_firstname; ?>" id="input-payment-firstname" />
                        <!--<input id="email" type="email" name="email" required placeholder="E-mail*">-->
                            <input required type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-payment-email" />
                        <!--<input id="adress" type="text" name="adress" placeholder="Адрес">-->
                            <input type="text" name="address_1" value="<?php echo $address_1; ?>" placeholder="<?php echo $entry_address_1; ?>" id="input-payment-address-1" />
                        <!--<input id="phone" type="phone" name="phone" required placeholder="Телефон*">-->
                            <input required type="text" name="telephone" value="<?php echo $telephone; ?>" placeholder="<?php echo $entry_telephone; ?>" id="input-payment-telephone" />
                        <textarea name="comment" id="comment" cols="30" rows="5" placeholder="<?php echo $entry_comment; ?>"></textarea>
                        <p><?php echo $contacts_string; ?></p>
                        <input type="button" value="<?php echo $button_continue; ?>" id="button-guest" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"/>
                    </form>
                </div>
                <div class="right-col">

                    <div class="ajax-wrapper">
                        <div class="heading-block">
                            <p class="a"><?php echo $your_order; ?></p>
                        </div>
                        <ul class="order-list mb-0">
                            <?php foreach ($products as $product) { ?>
                                <li>
                                    <input type="hidden" name="product_id" value="<?php echo $product['product_id']; ?>">
                                    <input type="hidden" name="cart_id" value="<?php echo $product['cart_id']; ?>">
                                    <div class="del-icon">
                                        <button class="btn basket" onclick="cart.remove('<?php echo $product['cart_id']; ?>');$(this).closest('li').remove();"></button>
                                    </div>
                                    <div class="img-wrapper">
                                        <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>">
                                        <p><?php echo $product['name']; ?></p>
                                    </div>
                                    <div class="price-wrapper">
                                        <p class="price"><?php $exp = explode(' ', $product['price']); array_pop($exp); echo implode('', $exp); ?></p>
                                        <input class="inp-price" type="number" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" min="1" max="99" step="1" />
                                        <p class="sumPrice"><?php $exp = explode(' ', $product['total']); array_pop($exp); echo implode('', $exp); ?></p>
                                    </div>
                                </li>
                            <?php } ?>
                        </ul>
                    </div>

                    <div class="total-block">
                        <p class="ralewayBold"><?php echo $column_total; ?></p>
                        <p class="finPrice a"><?php $exp = explode(' ', $totals[1]['text']); array_pop($exp); echo implode('', $exp); ?></p>
                        <div class="link-wrapper">
                            <a href="<?php echo $checkout; ?>" class="toOrder">Оформить заказ</a>
                        </div>
                    </div>
                </div>

                <?php } else { ?>
                    <h4>Нужно добавить товар прежде, чем сделать заказ.</h4>
                <?php } ?>
            </div>

        </div>
    </section>
</div>
<!--<div class="container">
  <ul class="breadcrumb">
    <?php /*foreach ($breadcrumbs as $breadcrumb) { */?>
    <li><a href="<?php /*echo $breadcrumb['href']; */?>"><?php /*echo $breadcrumb['text']; */?></a></li>
    <?php /*} */?>
  </ul>
  <?php /*if ($attention) { */?>
  <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php /*echo $attention; */?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php /*} */?>
  <?php /*if ($success) { */?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php /*echo $success; */?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php /*} */?>
  <?php /*if ($error_warning) { */?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php /*echo $error_warning; */?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php /*} */?>
  <div class="row"><?php /*echo $column_left; */?>
    <?php /*if ($column_left && $column_right) { */?>
    <?php /*$class = 'col-sm-6'; */?>
    <?php /*} elseif ($column_left || $column_right) { */?>
    <?php /*$class = 'col-sm-9'; */?>
    <?php /*} else { */?>
    <?php /*$class = 'col-sm-12'; */?>
    <?php /*} */?>
    <div id="content" class="<?php /*echo $class; */?>"><?php /*echo $content_top; */?>
      <h1><?php /*echo $heading_title; */?>
        <?php /*if ($weight) { */?>
        &nbsp;(<?php /*echo $weight; */?>)
        <?php /*} */?>
      </h1>
      <form action="<?php /*echo $action; */?>" method="post" enctype="multipart/form-data">
        <div class="table-responsive">
          <table class="table table-bordered">
            <thead>
              <tr>
                <td class="text-center"><?php /*echo $column_image; */?></td>
                <td class="text-left"><?php /*echo $column_name; */?></td>
                <td class="text-left"><?php /*echo $column_model; */?></td>
                <td class="text-left"><?php /*echo $column_quantity; */?></td>
<td class="text-right"><?php /*echo $column_unit; */?></td>
                <td class="text-right"><?php /*echo $column_price; */?></td>
                <td class="text-right"><?php /*echo $column_total; */?></td>
              </tr>
            </thead>
            <tbody>
              <?php /*foreach ($products as $product) { */?>
              <tr>
                <td class="text-center"><?php /*if ($product['thumb']) { */?>
                  <a href="<?php /*echo $product['href']; */?>"><img src="<?php /*echo $product['thumb']; */?>" alt="<?php /*echo $product['name']; */?>" title="<?php /*echo $product['name']; */?>" class="img-thumbnail" /></a>
                  <?php /*} */?></td>
                <td class="text-left"><a href="<?php /*echo $product['href']; */?>"><?php /*echo $product['name']; */?></a>
                  <?php /*if (!$product['stock']) { */?>
                  <span class="text-danger">***</span>
                  <?php /*} */?>
                  <?php /*if ($product['option']) { */?>
                  <?php /*foreach ($product['option'] as $option) { */?>
                  <br />
                  <small><?php /*echo $option['name']; */?>: <?php /*echo $option['value']; */?></small>
                  <?php /*} */?>
                  <?php /*} */?>
                  <?php /*if ($product['reward']) { */?>
                  <br />
                  <small><?php /*echo $product['reward']; */?></small>
                  <?php /*} */?>
                  <?php /*if ($product['recurring']) { */?>
                  <br />
                  <span class="label label-info"><?php /*echo $text_recurring_item; */?></span> <small><?php /*echo $product['recurring']; */?></small>
                  <?php /*} */?></td>
                <td class="text-left"><?php /*echo $product['model']; */?></td>
                <td class="text-left"><div class="input-group btn-block" style="max-width: 200px;">
                    <input type="text" name="quantity[<?php /*echo $product['cart_id']; */?>]" value="<?php /*echo $product['quantity']; */?>" size="1" class="form-control" />
                    <span class="input-group-btn">
                    <button type="submit" data-toggle="tooltip" title="<?php /*echo $button_update; */?>" class="btn btn-primary"><i class="fa fa-refresh"></i></button>
                    <button type="button" data-toggle="tooltip" title="<?php /*echo $button_remove; */?>" class="btn btn-danger" onclick="cart.remove('<?php /*echo $product['cart_id']; */?>');"><i class="fa fa-times-circle"></i></button>
                    </span></div></td>
        <td class="text-right"><?php /*echo $product['unit_id']; */?></td>
                <td class="text-right"><?php /*echo $product['price']; */?></td>
                <td class="text-right"><?php /*echo $product['total']; */?></td>
              </tr>
              <?php /*} */?>
              <?php /*foreach ($vouchers as $voucher) { */?>
              <tr>
                <td></td>
                <td class="text-left"><?php /*echo $voucher['description']; */?></td>
                <td class="text-left"></td>
                <td class="text-left"><div class="input-group btn-block" style="max-width: 200px;">
                    <input type="text" name="" value="1" size="1" disabled="disabled" class="form-control" />
                    <span class="input-group-btn">
                    <button type="button" data-toggle="tooltip" title="<?php /*echo $button_remove; */?>" class="btn btn-danger" onclick="voucher.remove('<?php /*echo $voucher['key']; */?>');"><i class="fa fa-times-circle"></i></button>
                    </span></div></td>
                <td class="text-right"><?php /*echo $voucher['amount']; */?></td>
                <td class="text-right"><?php /*echo $voucher['amount']; */?></td>
              </tr>
              <?php /*} */?>
            </tbody>
          </table>
        </div>
      </form>
      <?php /*if ($modules) { */?>
      <h2><?php /*echo $text_next; */?></h2>
      <p><?php /*echo $text_next_choice; */?></p>
      <div class="panel-group" id="accordion">
        <?php /*foreach ($modules as $module) { */?>
        <?php /*echo $module; */?>
        <?php /*} */?>
      </div>
      <?php /*} */?>
      <br />
      <div class="row">
        <div class="col-sm-4 col-sm-offset-8">
          <table class="table table-bordered">
            <?php /*foreach ($totals as $total) { */?>
            <tr>
              <td class="text-right"><strong><?php /*echo $total['title']; */?>:</strong></td>
              <td class="text-right"><?php /*echo $total['text']; */?></td>
            </tr>
            <?php /*} */?>
          </table>
        </div>
      </div>
      <div class="buttons clearfix">
        <div class="pull-left"><a href="<?php /*echo $continue; */?>" class="btn btn-default"><?php /*echo $button_shopping; */?></a></div>
        <div class="pull-right"><a href="<?php /*echo $checkout; */?>" class="btn btn-primary"><?php /*echo $button_checkout; */?></a></div>
      </div>
      <?php /*echo $content_bottom; */?></div>
    <?php /*echo $column_right; */?></div>
</div>-->

<script type="text/javascript"><!--
    $(document).on('change', 'input[name=\'account\']', function() {
        if ($('#collapse-payment-address').parent().find('.panel-heading .panel-title > *').is('a')) {
            if (this.value == 'register') {
                $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_account; ?> <i class="fa fa-caret-down"></i></a>');
            } else {
                $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');
            }
        } else {
            if (this.value == 'register') {
                $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_account; ?>');
            } else {
                $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_address; ?>');
            }
        }
    });

    <?php if (!$logged) { ?>
    $(document).ready(function() {
        $.ajax({
            url: 'index.php?route=checkout/login',
            dataType: 'html',
            success: function(html) {
                $('#collapse-checkout-option .panel-body').html(html);

                $('#collapse-checkout-option').parent().find('.panel-heading .panel-title').html('<a href="#collapse-checkout-option" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_option; ?> <i class="fa fa-caret-down"></i></a>');

                $('a[href=\'#collapse-checkout-option\']').trigger('click');
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });
    <?php } else { ?>
    $(document).ready(function() {
        $.ajax({
            url: 'index.php?route=checkout/payment_address',
            dataType: 'html',
            success: function(html) {
                $('#collapse-payment-address .panel-body').html(html);

                $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');

                $('a[href=\'#collapse-payment-address\']').trigger('click');
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });
    <?php } ?>

    // Checkout
    $(document).delegate('#button-account', 'click', function() {
        $.ajax({
            url: 'index.php?route=checkout/' + $('input[name=\'account\']:checked').val(),
            dataType: 'html',
            beforeSend: function() {
                $('#button-account').button('loading');
            },
            complete: function() {
                $('#button-account').button('reset');
            },
            success: function(html) {
                $('.alert, .text-danger').remove();

                $('#collapse-payment-address .panel-body').html(html);

                if ($('input[name=\'account\']:checked').val() == 'register') {
                    $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_account; ?> <i class="fa fa-caret-down"></i></a>');
                } else {
                    $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');
                }

                $('a[href=\'#collapse-payment-address\']').trigger('click');
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });

    // Login
    $(document).delegate('#button-login', 'click', function() {
        $.ajax({
            url: 'index.php?route=checkout/login/save',
            type: 'post',
            data: $('#collapse-checkout-option :input'),
            dataType: 'json',
            beforeSend: function() {
                $('#button-login').button('loading');
            },
            complete: function() {
                $('#button-login').button('reset');
            },
            success: function(json) {
                $('.alert, .text-danger').remove();
                $('.form-group').removeClass('has-error');

                if (json['redirect']) {
                    location = json['redirect'];
                } else if (json['error']) {
                    $('#collapse-checkout-option .panel-body').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

                    // Highlight any found errors
                    $('input[name=\'email\']').parent().addClass('has-error');
                    $('input[name=\'password\']').parent().addClass('has-error');
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });

    // Register
    $(document).delegate('#button-register', 'click', function() {
        $.ajax({
            url: 'index.php?route=checkout/register/save',
            type: 'post',
            data: $('#collapse-payment-address input[type=\'text\'], #collapse-payment-address input[type=\'date\'], #collapse-payment-address input[type=\'datetime-local\'], #collapse-payment-address input[type=\'time\'], #collapse-payment-address input[type=\'password\'], #collapse-payment-address input[type=\'hidden\'], #collapse-payment-address input[type=\'checkbox\']:checked, #collapse-payment-address input[type=\'radio\']:checked, #collapse-payment-address textarea, #collapse-payment-address select'),
            dataType: 'json',
            beforeSend: function() {
                $('#button-register').button('loading');
            },
            success: function(json) {
                $('.alert, .text-danger').remove();
                $('.form-group').removeClass('has-error');

                if (json['redirect']) {
                    location = json['redirect'];
                } else if (json['error']) {
                    $('#button-register').button('reset');

                    if (json['error']['warning']) {
                        $('#collapse-payment-address .panel-body').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                    }

                    for (i in json['error']) {
                        var element = $('#input-payment-' + i.replace('_', '-'));

                        if ($(element).parent().hasClass('input-group')) {
                            $(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
                        } else {
                            $(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
                        }
                    }

                    // Highlight any found errors
                    $('.text-danger').parent().addClass('has-error');
                } else {
                    <?php if ($shipping_required) { ?>
                    var shipping_address = $('#payment-address input[name=\'shipping_address\']:checked').prop('value');

                    if (shipping_address) {
                        $.ajax({
                            url: 'index.php?route=checkout/shipping_method',
                            dataType: 'html',
                            success: function(html) {
                                // Add the shipping address
                                $.ajax({
                                    url: 'index.php?route=checkout/shipping_address',
                                    dataType: 'html',
                                    success: function(html) {
                                        $('#collapse-shipping-address .panel-body').html(html);

                                        $('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');
                                    },
                                    error: function(xhr, ajaxOptions, thrownError) {
                                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                    }
                                });

                                $('#collapse-shipping-method .panel-body').html(html);

                                $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i></a>');

                                $('a[href=\'#collapse-shipping-method\']').trigger('click');

                                $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_shipping_method; ?>');
                                $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
                                $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                            },
                            error: function(xhr, ajaxOptions, thrownError) {
                                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                            }
                        });
                    } else {
                        $.ajax({
                            url: 'index.php?route=checkout/shipping_address',
                            dataType: 'html',
                            success: function(html) {
                                $('#collapse-shipping-address .panel-body').html(html);

                                $('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');

                                $('a[href=\'#collapse-shipping-address\']').trigger('click');

                                $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_shipping_method; ?>');
                                $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
                                $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                            },
                            error: function(xhr, ajaxOptions, thrownError) {
                                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                            }
                        });
                    }
                    <?php } else { ?>
                    $.ajax({
                        url: 'index.php?route=checkout/payment_method',
                        dataType: 'html',
                        success: function(html) {
                            $('#collapse-payment-method .panel-body').html(html);

                            $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_method; ?> <i class="fa fa-caret-down"></i></a>');

                            $('a[href=\'#collapse-payment-method\']').trigger('click');

                            $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                    <?php } ?>

                    $.ajax({
                        url: 'index.php?route=checkout/payment_address',
                        dataType: 'html',
                        complete: function() {
                            $('#button-register').button('reset');
                        },
                        success: function(html) {
                            $('#collapse-payment-address .panel-body').html(html);

                            $('#collapse-payment-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_address; ?> <i class="fa fa-caret-down"></i></a>');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });

    // Payment Address
    $(document).delegate('#button-payment-address', 'click', function() {
        $.ajax({
            url: 'index.php?route=checkout/payment_address/save',
            type: 'post',
            data: $('#collapse-payment-address input[type=\'text\'], #collapse-payment-address input[type=\'date\'], #collapse-payment-address input[type=\'datetime-local\'], #collapse-payment-address input[type=\'time\'], #collapse-payment-address input[type=\'password\'], #collapse-payment-address input[type=\'checkbox\']:checked, #collapse-payment-address input[type=\'radio\']:checked, #collapse-payment-address input[type=\'hidden\'], #collapse-payment-address textarea, #collapse-payment-address select'),
            dataType: 'json',
            beforeSend: function() {
                $('#button-payment-address').button('loading');
            },
            complete: function() {
                $('#button-payment-address').button('reset');
            },
            success: function(json) {
                $('.alert, .text-danger').remove();

                if (json['redirect']) {
                    location = json['redirect'];
                } else if (json['error']) {
                    if (json['error']['warning']) {
                        $('#collapse-payment-address .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                    }

                    for (i in json['error']) {
                        var element = $('#input-payment-' + i.replace('_', '-'));

                        if ($(element).parent().hasClass('input-group')) {
                            $(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
                        } else {
                            $(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
                        }
                    }

                    // Highlight any found errors
                    $('.text-danger').parent().parent().addClass('has-error');
                } else {
                    <?php if ($shipping_required) { ?>
                    $.ajax({
                        url: 'index.php?route=checkout/shipping_address',
                        dataType: 'html',
                        success: function(html) {
                            $('#collapse-shipping-address .panel-body').html(html);

                            $('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');

                            $('a[href=\'#collapse-shipping-address\']').trigger('click');

                            $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_shipping_method; ?>');
                            $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
                            $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                    <?php } else { ?>
                    $.ajax({
                        url: 'index.php?route=checkout/payment_method',
                        dataType: 'html',
                        success: function(html) {
                            $('#collapse-payment-method .panel-body').html(html);

                            $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_method; ?> <i class="fa fa-caret-down"></i></a>');

                            $('a[href=\'#collapse-payment-method\']').trigger('click');

                            $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                    <?php } ?>

                    $.ajax({
                        url: 'index.php?route=checkout/payment_address',
                        dataType: 'html',
                        success: function(html) {
                            $('#collapse-payment-address .panel-body').html(html);
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });

    // Shipping Address
    $(document).delegate('#button-shipping-address', 'click', function() {
        $.ajax({
            url: 'index.php?route=checkout/shipping_address/save',
            type: 'post',
            data: $('#collapse-shipping-address input[type=\'text\'], #collapse-shipping-address input[type=\'date\'], #collapse-shipping-address input[type=\'datetime-local\'], #collapse-shipping-address input[type=\'time\'], #collapse-shipping-address input[type=\'password\'], #collapse-shipping-address input[type=\'checkbox\']:checked, #collapse-shipping-address input[type=\'radio\']:checked, #collapse-shipping-address textarea, #collapse-shipping-address select'),
            dataType: 'json',
            beforeSend: function() {
                $('#button-shipping-address').button('loading');
            },
            success: function(json) {
                $('.alert, .text-danger').remove();

                if (json['redirect']) {
                    location = json['redirect'];
                } else if (json['error']) {
                    $('#button-shipping-address').button('reset');

                    if (json['error']['warning']) {
                        $('#collapse-shipping-address .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                    }

                    for (i in json['error']) {
                        var element = $('#input-shipping-' + i.replace('_', '-'));

                        if ($(element).parent().hasClass('input-group')) {
                            $(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
                        } else {
                            $(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
                        }
                    }

                    // Highlight any found errors
                    $('.text-danger').parent().parent().addClass('has-error');
                } else {
                    $.ajax({
                        url: 'index.php?route=checkout/shipping_method',
                        dataType: 'html',
                        complete: function() {
                            $('#button-shipping-address').button('reset');
                        },
                        success: function(html) {
                            $('#collapse-shipping-method .panel-body').html(html);

                            $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i></a>');

                            $('a[href=\'#collapse-shipping-method\']').trigger('click');

                            $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
                            $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');

                            $.ajax({
                                url: 'index.php?route=checkout/shipping_address',
                                dataType: 'html',
                                success: function(html) {
                                    $('#collapse-shipping-address .panel-body').html(html);
                                },
                                error: function(xhr, ajaxOptions, thrownError) {
                                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                }
                            });
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });

                    $.ajax({
                        url: 'index.php?route=checkout/payment_address',
                        dataType: 'html',
                        success: function(html) {
                            $('#collapse-payment-address .panel-body').html(html);
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });
    var cart_add = 0;
    $(document).on("change", ".inp-price", function() {
        console.log('change');
        if (cart_add == 0) {
            cart_add++;
            console.log('number: ' + $(this).closest("li").find("input[type='number']").val());
            var cart_id = $(this).closest("li").find("input[name='cart_id']").val();
            var quantity = $(this).closest("li").find("input[type='number']").val();
            console.log('quantity: ' + $(this).siblings(".input-group").find(".inp-price").val());
            $.ajax({
                url: 'index.php?route=checkout/cart/edit',
                type: 'post',
                data: $(this).closest("li").find("input[type='number']"),
                dataType: 'json',
                beforeSend: function() {
                    $('#button-cart').button('loading');
                },
                complete: function() {
                    $('#button-cart').button('reset');
                },
                success: function(json) {
                    console.log(json);
                    cart_add = 0;
                },
                error: function(xhr, ajaxOptions, thrownError) {
                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                }
            });
        }
    });

    // Guest
    var submit = 0;
    $(document).delegate('#button-guest', 'click', function() {
        console.log(submit);
        if (submit == 0) {
            submit++;
            $.ajax({
                url: 'index.php?route=checkout/guest/save',
                type: 'post',
                data: $('#cart-order input[type=\'text\'], #cart-order input[type=\'date\'], #cart-order input[type=\'datetime-local\'], #cart-order input[type=\'time\'], #cart-order input[type=\'checkbox\']:checked, #cart-order input[type=\'radio\']:checked, #cart-order input[type=\'hidden\'], #cart-order textarea, #cart-order select'),
                dataType: 'json',
                beforeSend: function () {
                    $('#button-guest').button('loading');
                },
                success: function (json) {
                    $('.alert, .text-danger').remove();

                    if (json['redirect']) {
                        location = json['redirect'];
                    } else if (json['error']) {
                        $('#button-guest').button('reset');

                        if (json['error']['warning']) {
                            $('#cart-order .panel-body').prepend('<div class="alert alert-warning">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                        }

                        for (i in json['error']) {
                            var element = $('#input-payment-' + i.replace('_', '-'));

                            if ($(element).parent().hasClass('input-group')) {
                                $(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
                            } else {
                                $(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
                            }
                        }

                        // Highlight any found errors
                        $('.text-danger').parent().addClass('has-error');
                    } else {
                        <?php if ($shipping_required) { ?>
                        var shipping_address = $('#cart-order input[name=\'shipping_address\']:checked').prop('value');

                        if (shipping_address) {
                            $.ajax({
                                url: 'index.php?route=checkout/shipping_method',
                                dataType: 'html',
                                complete: function () {
                                    $('#button-guest').button('reset');
                                },
                                success: function (html) {
                                    // Add the shipping address
                                    $.ajax({
                                        url: 'index.php?route=checkout/guest_shipping',
                                        dataType: 'html',
                                        success: function (html) {
                                            $('#collapse-shipping-address .panel-body').html(html);

                                            $('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');
                                        },
                                        error: function (xhr, ajaxOptions, thrownError) {
                                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                        }
                                    });

                                    $('#collapse-shipping-method .panel-body').html(html);

                                    $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i></a>');

                                    $('a[href=\'#collapse-shipping-method\']').trigger('click');

                                    $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
                                    $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                                },
                                error: function (xhr, ajaxOptions, thrownError) {
                                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                }
                            });
                        } else {
                            $.ajax({
                                url: 'index.php?route=checkout/guest_shipping',
                                dataType: 'html',
                                complete: function () {
                                    $('#button-guest').button('reset');
                                },
                                success: function (html) {
                                    $('#collapse-shipping-address .panel-body').html(html);

                                    $('#collapse-shipping-address').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-address" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_address; ?> <i class="fa fa-caret-down"></i></a>');

                                    $('a[href=\'#collapse-shipping-address\']').trigger('click');

                                    $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_shipping_method; ?>');
                                    $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
                                    $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                                },
                                error: function (xhr, ajaxOptions, thrownError) {
                                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                }
                            });
                        }
                        <?php } else { ?>
                        $.ajax({
                            url: 'index.php?route=checkout/confirm',
                            dataType: 'html',
                            complete: function () {
                                $('#button-payment-method').button('reset');
                            },
                            success: function (html) {
                                $('.cart-popup-block .shopping-btn #exit').trigger('click');
                                <?php foreach ($products as $product) { ?>
                                cart.remove('<?php echo $product['cart_id']; ?>');
                                console.log(<?php echo $product['cart_id']; ?>);
                                <?php } ?>
                                var i = 0;
                                setTimeout(function () {
                                    $('#popme').magnificPopup({
                                        type: 'inline'
                                    });
                                    if (i == 0) {
                                        $('#popme').trigger('click');
                                        i++;
                                    }
                                }, 1000);
                            },
                            error: function (xhr, ajaxOptions, thrownError) {
                                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                            }
                        });
                        <?php } ?>
                    }
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                }
            });
        }
    });

    // Guest Shipping
    $(document).delegate('#button-guest-shipping', 'click', function() {
        $.ajax({
            url: 'index.php?route=checkout/guest_shipping/save',
            type: 'post',
            data: $('#collapse-shipping-address input[type=\'text\'], #collapse-shipping-address input[type=\'date\'], #collapse-shipping-address input[type=\'datetime-local\'], #collapse-shipping-address input[type=\'time\'], #collapse-shipping-address input[type=\'password\'], #collapse-shipping-address input[type=\'checkbox\']:checked, #collapse-shipping-address input[type=\'radio\']:checked, #collapse-shipping-address textarea, #collapse-shipping-address select'),
            dataType: 'json',
            beforeSend: function() {
                $('#button-guest-shipping').button('loading');
            },
            success: function(json) {
                $('.alert, .text-danger').remove();

                if (json['redirect']) {
                    location = json['redirect'];
                } else if (json['error']) {
                    $('#button-guest-shipping').button('reset');
                    if (json['error']['warning']) {
                        $('#collapse-shipping-address .panel-body').prepend('<div class="alert alert-danger">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                    }

                    for (i in json['error']) {
                        var element = $('#input-shipping-' + i.replace('_', '-'));

                        if ($(element).parent().hasClass('input-group')) {
                            $(element).parent().after('<div class="text-danger">' + json['error'][i] + '</div>');
                        } else {
                            $(element).after('<div class="text-danger">' + json['error'][i] + '</div>');
                        }
                    }

                    // Highlight any found errors
                    $('.text-danger').parent().addClass('has-error');
                } else {
                    $.ajax({
                        url: 'index.php?route=checkout/shipping_method',
                        dataType: 'html',
                        complete: function() {
                            $('#button-guest-shipping').button('reset');
                        },
                        success: function(html) {
                            $('#collapse-shipping-method .panel-body').html(html);

                            $('#collapse-shipping-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-shipping-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_shipping_method; ?> <i class="fa fa-caret-down"></i>');

                            $('a[href=\'#collapse-shipping-method\']').trigger('click');

                            $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_payment_method; ?>');
                            $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });

    $(document).delegate('#button-shipping-method', 'click', function() {
        $.ajax({
            url: 'index.php?route=checkout/shipping_method/save',
            type: 'post',
            data: $('#collapse-shipping-method input[type=\'radio\']:checked, #collapse-shipping-method textarea'),
            dataType: 'json',
            beforeSend: function() {
                $('#button-shipping-method').button('loading');
            },
            success: function(json) {
                $('.alert, .text-danger').remove();

                if (json['redirect']) {
                    location = json['redirect'];
                } else if (json['error']) {
                    $('#button-shipping-method').button('reset');

                    if (json['error']['warning']) {
                        $('#collapse-shipping-method .panel-body').prepend('<div class="alert alert-danger">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                    }
                } else {
                    $.ajax({
                        url: 'index.php?route=checkout/payment_method',
                        dataType: 'html',
                        complete: function() {
                            $('#button-shipping-method').button('reset');
                        },
                        success: function(html) {
                            $('#collapse-payment-method .panel-body').html(html);

                            $('#collapse-payment-method').parent().find('.panel-heading .panel-title').html('<a href="#collapse-payment-method" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_payment_method; ?> <i class="fa fa-caret-down"></i></a>');

                            $('a[href=\'#collapse-payment-method\']').trigger('click');

                            $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<?php echo $text_checkout_confirm; ?>');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });

    $(document).delegate('#button-payment-method', 'click', function() {
        $.ajax({
            url: 'index.php?route=checkout/payment_method/save',
            type: 'post',
            data: $('#collapse-payment-method input[type=\'radio\']:checked, #collapse-payment-method input[type=\'checkbox\']:checked, #collapse-payment-method textarea'),
            dataType: 'json',
            beforeSend: function() {
                $('#button-payment-method').button('loading');
            },
            success: function(json) {
                $('.alert, .text-danger').remove();

                if (json['redirect']) {
                    location = json['redirect'];
                } else if (json['error']) {
                    $('#button-payment-method').button('reset');

                    if (json['error']['warning']) {
                        $('#collapse-payment-method .panel-body').prepend('<div class="alert alert-danger">' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                    }
                } else {
                    $.ajax({
                        url: 'index.php?route=checkout/confirm',
                        dataType: 'html',
                        complete: function() {
                            $('#button-payment-method').button('reset');
                        },
                        success: function(html) {
                            $('#collapse-checkout-confirm .panel-body').html(html);

                            $('#collapse-checkout-confirm').parent().find('.panel-heading .panel-title').html('<a href="#collapse-checkout-confirm" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle"><?php echo $text_checkout_confirm; ?> <i class="fa fa-caret-down"></i></a>');

                            $('a[href=\'#collapse-checkout-confirm\']').trigger('click');
                        },
                        error: function(xhr, ajaxOptions, thrownError) {
                            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                        }
                    });
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });
    //--></script>