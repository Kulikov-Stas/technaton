<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title;  ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />
<!--<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />-->
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>

<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>

<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
<!-- styles -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="catalog/view/theme/technaton/css/magnific-popup.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.css" crossorigin="anonymous">
<link rel="stylesheet" href="catalog/view/theme/technaton/css/owl.carousel.min.css">
<link rel="stylesheet" href="catalog/view/theme/technaton/css/owl.theme.default.min.css">
<link rel="stylesheet" href="catalog/view/theme/technaton/css/style.main.css?ver=14-08-2019">
<!-- script -->
<script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
<?php foreach ($scripts as $script) { ?>
    <script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<script src="catalog/view/javascript/common.js?ver=14-08-2019" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.js'></script>

<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.min.js'></script>
<script src="catalog/view/javascript/jquery.maskedinput.min.js"></script>
<script src="catalog/view/javascript/bootstrap-input-spinner.js"></script>
<script src="catalog/view/javascript/jquery.magnific-popup.min.js"></script>
<script src="catalog/view/javascript/owl.carousel.min.js"></script>

<script src="catalog/view/javascript/script.js?ver=14-08-2019"></script>
<title>tehnaton</title>
</head>

<body class="<?php echo $class; ?>">

<header>
    <section class="main-menu">
        <div class="container">
            <div class="row">
                <div class="menu">
                    <nav class="navbar navbar-expand-lg">
                        <button class="navbar-toggler hideCollapse" type="button" data-toggle="collapse" data-target="#mainMenu" aria-controls="mainMenu" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon burg"></span>
                            <span class="navbar-toggler-icon burg"></span>
                            <span class="navbar-toggler-icon burg"></span>
                        </button>
                        <div class="brand-wrapper">
                            <a class="navbar-brand" href="/">
                                <img class="desktop-logo" src="catalog/view/theme/technaton/img/logo.png" alt="">
                                <img class="mobile-logo" src="catalog/view/theme/technaton/img/logo-mobile.png" alt="">
                            </a>
                            <div class="btn-group lang" role="group" aria-label="Basic example">
                                <?php echo $language; ?>
                                <button type="button" class="btn btn-sm<?php if ($lang === 'en') echo ' activeBtn'; ?>">Eng</button>
                                <button type="button" class="btn btn-sm<?php if ($lang === 'ru') echo ' activeBtn'; ?>" autofocus>Рус</button>
                            </div>
                        </div>

                        <div class="collapse navbar-collapse" id="mainMenu">
                            <ul class="navbar-nav">
                                <li class="nav-item<?php if (!$page) echo ' active'; ?>">
                                    <a class="nav-link" href="/"><?php echo $text_home; ?></a>
                                </li>
                                <li class="nav-item<?php if ($page === 'shop') echo ' active'; ?>">
                                    <a class="nav-link" href="/shop/"><?php echo $text_catalog; ?></a>
                                </li>
                                <li class="nav-item<?php if ($page === 'manual') echo ' active'; ?>">
                                    <a class="nav-link" href="/manual/"><?php echo $text_manual; ?></a>
                                </li>
                                <li class="nav-item<?php if ($page === 'about_us') echo ' active'; ?>">
                                    <a class="nav-link" href="/about_us/"><?php echo $text_about; ?></a>
                                </li>
                                <li class="nav-item<?php if (strpos($page, 'news') !== false) echo ' active'; ?>">
                                    <a class="nav-link" href="/news/"><?php echo $text_news; ?></a>
                                </li>
                                <li class="nav-item<?php if ($page === 'contacts') echo ' active'; ?>">
                                    <a class="nav-link" href="/contacts/"><?php echo $text_contacts; ?></a>
                                </li>
                            </ul>
                        </div>
                        <!--<ul class="list-inline">
                            <li><a href="<?php /*echo $contact; */?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php /*echo $telephone; */?></span></li>
                            <li><a href="<?php /*echo $wishlist; */?>" id="wishlist-total" title="<?php /*echo $text_wishlist; */?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php /*echo $text_wishlist; */?></span></a></li>
                            <li><a href="<?php /*echo $checkout; */?>" title="<?php /*echo $text_checkout; */?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php /*echo $text_checkout; */?></span></a></li>
                        </ul>-->
                        <div class="menuIconBlock pull-xs-right">
                            <div class="search-btn">
                                <a href="/search-form/" class="ajax-popup-search">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="29.259" height="30.306" viewBox="0 0 29.259 30.306">
                                        <g id="search" transform="translate(0 0)">
                                            <path id="search-2" data-name="search" d="M29.8,27.6l-7.213-7.5a12.231,12.231,0,1,0-9.365,4.37,12.1,12.1,0,0,0,7.01-2.214L27.5,29.816A1.6,1.6,0,1,0,29.8,27.6ZM13.22,3.192a9.044,9.044,0,1,1-9.044,9.044A9.054,9.054,0,0,1,13.22,3.192Z" transform="translate(-0.984)" fill="#373737" />
                                        </g>
                                    </svg>
                                </a>
                            </div>
                            <div class="user-btn">
                                <!--<li class="dropdown"><a href="<?php /*echo $account; */?>" title="<?php /*echo $text_account; */?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php /*echo $text_account; */?></span> <span class="caret"></span></a>
                                    <ul class="dropdown-menu dropdown-menu-right">
                                        <?php /*if ($logged) { */?>
                                            <li><a href="<?php /*echo $account; */?>"><?php /*echo $text_account; */?></a></li>
                                            <li><a href="<?php /*echo $order; */?>"><?php /*echo $text_order; */?></a></li>
                                            <li><a href="<?php /*echo $transaction; */?>"><?php /*echo $text_transaction; */?></a></li>
                                            <li><a href="<?php /*echo $download; */?>"><?php /*echo $text_download; */?></a></li>
                                            <li><a href="<?php /*echo $logout; */?>"><?php /*echo $text_logout; */?></a></li>
                                        <?php /*} else { */?>
                                            <li><a href="<?php /*echo $register; */?>"><?php /*echo $text_register; */?></a></li>
                                            <li><a href="<?php /*echo $login; */?>"><?php /*echo $text_login; */?></a></li>
                                        <?php /*} */?>
                                    </ul>
                                </li>-->
                                <a href="/login/" class="ajax-popup-link-user">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="22.998" height="30.235" viewBox="0 0 22.998 30.235">
                                        <g id="man-user" transform="translate(0 0)">
                                            <path id="Path_1" data-name="Path 1" d="M110.622,14.787c3.362,0,6.087-3.31,6.087-7.394S115.815,0,110.622,0s-6.087,3.31-6.087,7.394S107.26,14.787,110.622,14.787Z" transform="translate(-99.124)" fill="#373737" />
                                            <path id="Path_2" data-name="Path 2" d="M41.9,300.5c0-.249,0-.07,0,0Z" transform="translate(-41.895 -274.423)" fill="#373737" />
                                            <path id="Path_3" data-name="Path 3" d="M308.085,301.712c0-.068,0-.473,0,0Z" transform="translate(-285.089 -275.441)" fill="#373737" />
                                            <path id="Path_4" data-name="Path 4" d="M64.89,188.163c-.113-7.113-1.042-9.14-8.151-10.423a4.262,4.262,0,0,1-3.333,1.275,4.262,4.262,0,0,1-3.333-1.275c-7.032,1.269-8.017,3.266-8.147,10.192-.011.566-.016.6-.017.53,0,.123,0,.351,0,.747,0,0,1.693,3.412,11.5,3.412s11.5-3.412,11.5-3.412c0-.255,0-.432,0-.553A4.59,4.59,0,0,1,64.89,188.163Z" transform="translate(-41.907 -162.385)" fill="#373737" />
                                        </g>
                                    </svg>
                                </a>
                            </div>
                            <div class="shopping-btn">
                                <a href="<?php echo $shopping_cart; ?>" class="ajax-popup-link">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="30.534" height="30.533" viewBox="0 0 30.534 30.533">
                                        <g id="shopping-cart" transform="translate(0.001 0)">
                                            <g id="shopping-cart-2" data-name="shopping-cart">
                                                <path id="Path_5" data-name="Path 5" d="M9.16,24.427a3.053,3.053,0,1,0,3.053,3.053A3.062,3.062,0,0,0,9.16,24.427ZM0,0V3.053H3.053l5.5,11.6L6.412,18.32a5.424,5.424,0,0,0-.305,1.527A3.062,3.062,0,0,0,9.16,22.9H27.48V19.847H9.771a.328.328,0,0,1-.305-.305v-.153l1.374-2.6h11.3a2.784,2.784,0,0,0,2.6-1.527l5.5-9.923a.84.84,0,0,0,.305-.763,1.442,1.442,0,0,0-1.527-1.527H6.412L5.038,0ZM24.427,24.427A3.053,3.053,0,1,0,27.48,27.48,3.062,3.062,0,0,0,24.427,24.427Z" fill="#373737" />
                                            </g>
                                        </g>
                                    </svg>
                                </a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </section>
</header>
<?php /*if ($categories) { */?><!--
<div class="container">
  <nav id="menu" class="navbar">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php /*echo $text_category; */?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <?php /*foreach ($categories as $category) { */?>
        <?php /*if ($category['children']) { */?>
        <li class="dropdown"><a href="<?php /*echo $category['href']; */?>" class="dropdown-toggle" data-toggle="dropdown"><?php /*echo $category['name']; */?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php /*foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { */?>
              <ul class="list-unstyled">
                <?php /*foreach ($children as $child) { */?>
                <li><a href="<?php /*echo $child['href']; */?>"><?php /*echo $child['name']; */?></a></li>
                <?php /*} */?>
              </ul>
              <?php /*} */?>
            </div>
            <a href="<?php /*echo $category['href']; */?>" class="see-all"><?php /*echo $text_all; */?> <?php /*echo $category['name']; */?></a> </div>
        </li>
        <?php /*} else { */?>
        <li><a href="<?php /*echo $category['href']; */?>"><?php /*echo $category['name']; */?></a></li>
        <?php /*} */?>
        <?php /*} */?>
      </ul>
    </div>
  </nav>
</div>
--><?php /*} */?>
