<?php if ($products) { ?>
    <?php foreach ($products as $product) { ?>
        <div class="catalog-item">
            <div class="img-wrapper">
                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />
            </div>
            <div class="discription-wrapper">
                <h3 class="a"><?php echo $product['name']; ?></h3>
                <p><?php echo $product['description']; ?></p>
            </div>
            <a href="<?php echo $product['href']; ?>">Выбрать</a>
        </div>
    <?php } ?>
<?php } ?>

<?php if (!$categories && !$products) { ?>
    <p><?php echo $text_empty; ?></p>
    <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
    </div>
<?php } ?>