<?php if ((int)$page_id !== 11) echo $header; ?>
<?php
    switch ($page_id) {
        case 9: // manual
            require("catalog/view/theme/technaton/template/information/manual.tpl");
            break;
        case 7: // catalog
            require("catalog/view/theme/technaton/template/information/catalog.tpl");
            break;
        case 4: // about
            require("catalog/view/theme/technaton/template/information/about.tpl");
            break;
        case 10: // contacts
            require("catalog/view/theme/technaton/template/information/contacts.tpl");
            break;
        case 11: // search
            require("catalog/view/theme/technaton/template/information/search_form.tpl");
            break;
    }
?>

<!--<div class="container">
  <ul class="breadcrumb">
    <?php /*foreach ($breadcrumbs as $breadcrumb) { */?>
    <li><a href="<?php /*echo $breadcrumb['href']; */?>"><?php /*echo $breadcrumb['text']; */?></a></li>
    <?php /*} */?>
  </ul>
  <div class="row"><?php /*echo $column_left; */?>
    <?php /*if ($column_left && $column_right) { */?>
    <?php /*$class = 'col-sm-6'; */?>
    <?php /*} elseif ($column_left || $column_right) { */?>
    <?php /*$class = 'col-sm-9'; */?>
    <?php /*} else { */?>
    <?php /*$class = 'col-sm-12'; */?>
    <?php /*} */?>
    <div id="content" class="<?php /*echo $class; */?>"><?php /*echo $content_top; */?>
      <h1><?php /*echo $heading_title; */?></h1>
      <?php /*echo $description; */?><?php /*echo $content_bottom; */?></div>
    <?php /*echo $column_right; */?></div>
</div>-->
<?php if ((int)$page_id !== 11) echo $footer; ?>
