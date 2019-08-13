<?php echo $header; ?>
<main>
    <?php require("catalog/view/theme/technaton/template/common/header_search.tpl"); ?>
    <?php require("catalog/view/theme/technaton/template/common/categories.tpl"); ?>
    <?php require("catalog/view/theme/technaton/template/common/front_news.tpl"); ?>
    <?php require("catalog/view/theme/technaton/template/common/feedback.tpl"); ?>
    <?php require("catalog/view/theme/technaton/template/common/operator.tpl"); ?>
  <!--<div class="row"><?php /*echo $column_left; */?>
    <?php /*if ($column_left && $column_right) { */?>
    <?php /*$class = 'col-sm-6'; */?>
    <?php /*} elseif ($column_left || $column_right) { */?>
    <?php /*$class = 'col-sm-9'; */?>
    <?php /*} else { */?>
    <?php /*$class = 'col-sm-12'; */?>
    <?php /*} */?>
    <div id="content" class="<?php /*echo $class; */?>"><?php /*echo $content_top; */?><?php /*echo $content_bottom; */?></div>
    <?php /*echo $column_right; */?></div>-->
</main>
<?php echo $footer; ?>