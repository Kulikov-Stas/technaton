<?php echo $header; ?>

<main>
  <?php require("catalog/view/theme/technaton/template/common/header_search.tpl"); ?>
  <!--<ul class="breadcrumb">
    <?php /*foreach ($breadcrumbs as $breadcrumb) { */?>
    <li><a href="<?php /*echo $breadcrumb['href']; */?>"><?php /*echo $breadcrumb['text']; */?></a></li>
    <?php /*} */?>
  </ul>-->
    <section>
        <div class="container">
            <div class="row">
                <div class="main-content">
                    <?php require("catalog/view/theme/technaton/template/common/header_block.tpl"); ?>
                    <div class="content-wrapper">
                    <?php echo $column_left; ?>
                    <?php if ($column_left && $column_right) { ?>
                    <?php $class = 'col-sm-6'; ?>
                    <?php } elseif ($column_left || $column_right) { ?>
                    <?php $class = 'col-sm-9'; ?>
                    <?php } else { ?>
                    <?php $class = 'col-sm-12'; ?>
                    <?php } ?>
                        <div class="content-block">

                            <?php if ($products) { ?>
                                <!--<div class="row">
                                    <div class="col-md-3 col-xs-6">
                                        <div class="form-group input-group input-group-sm">
                                            <label class="input-group-addon" for="input-limit"><?php /*echo $text_limit; */?></label>
                                            <select id="input-limit" class="form-control" onchange="location = this.value;">
                                                <?php /*foreach ($limits as $limits) { */?>
                                                    <?php /*if ($limits['value'] == $limit) { */?>
                                                        <option value="<?php /*echo $limits['href']; */?>" selected="selected"><?php /*echo $limits['text']; */?></option>
                                                    <?php /*} else { */?>
                                                        <option value="<?php /*echo $limits['href']; */?>"><?php /*echo $limits['text']; */?></option>
                                                    <?php /*} */?>
                                                <?php /*} */?>
                                            </select>
                                        </div>
                                    </div>
                                </div>-->
                                <div class="wrapper-tems w30">
                                    <?php foreach ($products as $product) { ?>
                                        <div class="catalog-item">
                                            <div class="img-wrapper">
                                                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />
                                            </div>
                                            <div class="discription-wrapper">
                                                    <h3 class="a"><?php echo $product['name']; ?></h3>
                                                    <p><?php echo $product['description']; ?></p>
                                                    <?php /*if ($product['price']) { */?><!--
                                                        <p class="price">
                                                            <?php /*if (!$product['special']) { */?>
                                                                <?php /*echo $product['price']; */?>
                                                            <?php /*} else { */?>
                                                                <span class="price-new"><?php /*echo $product['special']; */?></span> <span class="price-old"><?php /*echo $product['price']; */?></span>
                                                            <?php /*} */?>
                                                            <?php /*if ($product['tax']) { */?>
                                                                <span class="price-tax"><?php /*echo $text_tax; */?> <?php /*echo $product['tax']; */?></span>
                                                            <?php /*} */?>
                                                        </p>
                                                    <?php /*} */?>
                                                    <?php /*if ($product['rating']) { */?>
                                                        <div class="rating">
                                                            <?php /*for ($i = 1; $i <= 5; $i++) { */?>
                                                                <?php /*if ($product['rating'] < $i) { */?>
                                                                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                <?php /*} else { */?>
                                                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                <?php /*} */?>
                                                            <?php /*} */?>
                                                        </div>
                                                    --><?php /*} */?>
                                                <!--<div class="button-group">
                                                    <button type="button" data-toggle="tooltip" title="<?php /*echo $button_wishlist; */?>" onclick="wishlist.add('<?php /*echo $product['product_id']; */?>');"><i class="fa fa-heart"></i></button>
                                                    <button type="button" data-toggle="tooltip" title="<?php /*echo $button_compare; */?>" onclick="compare.add('<?php /*echo $product['product_id']; */?>');"><i class="fa fa-exchange"></i></button>
                                                </div>-->
                                            </div>
                                            <a href="<?php echo $product['href']; ?>">Выбрать</a>
                                        </div>
                                    <?php } ?>
                                    <!--<div class="col-sm-6 text-right"><?php /*echo $results; */?></div>-->
                            <?php } ?>

                            <?php if (!$categories && !$products) { ?>
                                <p><?php echo $text_empty; ?></p>
                                <div class="buttons">
                                    <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
                                </div>
                            <?php } ?>

                        </div>
    <?php echo $content_top; ?>

<!--      <?php /*if ($categories) { */?>
      <h3><?php /*echo $text_refine; */?></h3>
      <?php /*if (count($categories) <= 5) { */?>
      <div class="row">
        <div class="col-sm-3">
          <ul>
            <?php /*foreach ($categories as $category) { */?>
            <li><a href="<?php /*echo $category['href']; */?>"><?php /*echo $category['name']; */?></a></li>
            <?php /*} */?>
          </ul>
        </div>
      </div>
      <?php /*} else { */?>
      <div class="row">
        <?php /*foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { */?>
        <div class="col-sm-3">
          <ul>
            <?php /*foreach ($categories as $category) { */?>
            <li><a href="<?php /*echo $category['href']; */?>"><?php /*echo $category['name']; */?></a></li>
            <?php /*} */?>
          </ul>
        </div>
        <?php /*} */?>
      </div>
      <?php /*} */?>
      --><?php /*} */?>


      <?php echo $content_bottom; ?>
    <?php echo $column_right; ?>
                    </div>
                </div>
            </div>
    </section>
    <section class="paganation-main">
        <div class="container">
            <div class="row">
                <div class="paganation-wrapper">
                    <nav aria-label="Shop navigation">
                        <?php echo $pagination; ?>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <?php require("catalog/view/theme/technaton/template/common/operator.tpl"); ?>
</main>
<?php echo $footer; ?>
