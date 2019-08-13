<?php echo $header; ?>

<main>
<div class="cart-popup-block search-rezult">
    <section>
        <div class="container">
            <div class="row">
                <form action="" id="searchOpen-form">
                    <input type="text" name="search" id="search" placeholder="поисковый запрос" autofocus="autofocus" value="<?php echo $search; ?>">
                </form>
            </div>
        </div>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="catalog-wrapper">
                    <div class="heading-block">
                        <h2>КАТАЛОГ</h2>
                    </div>

                    <div class="content-block">
                        <div class="wrapper-tems w30">
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="paganation-wrapper">
                    <nav aria-label="Shop navigation">
                        <?php echo $product_pagination; ?>
                    </nav>
                </div>
            </div>
        </div>
    </section>
</div>
</main>
<?php echo $footer; ?>