<style>
    .heading-block h2::before {
        content: "<?php echo $heading_title; ?>";
    }
</style>
<section>
    <div class="container">
        <div class="row">
            <div class="catalog-wrapper">
                <div class="heading-block">
                    <h2><?php echo $heading_title; $i = 1; ?></h2>
                </div>
                <div class="catalog-baners">
                    <?php foreach ($categories as $category) { ?>
                        <div class="baners">
                            <div class="mask">
                                <p><?php echo $category['name']; ?></p>
                            </div>
                            <div class="hide-discription">
                                <div class="discription-wrapper">
                                    <p class="num">0<?php echo $i ?></p>
                                    <p class="banner-title"><?php echo $category['name']; ?></p>
                                    <p class="discription-text">
                                        <?php echo $category['description']; ?>
                                    </p>
                                    <a href="<?php echo $category['href']; ?>" class="button"><?php echo $text_catalog; ?></a>
                                </div>
                            </div>
                        </div>
                    <?php $i++;
                    } ?>
                </div>
            </div>
        </div>
    </div>
</section>