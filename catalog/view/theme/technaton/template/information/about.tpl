<style>
    .aboutUs-block .text-block .heading-block h2:before {
        content: "<?php echo $heading_title; ?>";
        left: -136px;
    }
</style>
<main>
    <section>
        <div class="container-fluid">
            <div class="row">
                <div class="aboutUs-block">
                    <div class="text-block">
                        <div class="heading-block">
                            <h2><?php echo $heading_title; ?></h2>
                        </div>
                        <div class="discription-block">
                            <p><?php echo $description; ?></p>
                        </div>
                        <a href="/shop/" class="news-link button"><?php echo $to_catalog; ?></a>
                    </div>
                    <div class="img-block">
                    </div>
                    <div class="carousel-wrapper">
                        <?php echo $content_top; ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="advantage-block">
                    <div class="heading-block">
                        <h2><?php echo $why_us; ?></h2>
                    </div>
                    <div class="icons-block">
                        <div class="icon">
                            <svg xmlns="http://www.w3.org/2000/svg" width="105.202" height="105.172" viewBox="0 0 105.202 105.172">
                                <use xlink:href="#Group_315" x="0" y="0" />
                            </svg>
                            <p><?php echo $first_string; ?></p>
                        </div>
                        <div class="icon">
                            <svg xmlns="http://www.w3.org/2000/svg" width="160.432" height="101.484" viewBox="0 0 160.432 101.484">
                                <use xlink:href="#Group_311" x="0" y="0" />
                            </svg>
                            <p><?php echo $second_string; ?></p>
                        </div>
                        <div class="icon">
                            <svg xmlns="http://www.w3.org/2000/svg" width="103.276" height="103.423" viewBox="0 0 103.276 103.423">
                                <use xlink:href="#Group_309" x="0" y="0" />
                            </svg>
                            <p><?php echo $third_string; ?></p>
                        </div>
                    </div>
                    <a href="/shop/" class="news-link button"><?php echo $to_catalog; ?></a>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container-fluid">
            <div class="row">
                <div class="partners-block">
                    <div class="heading-block">
                        <h2><?php echo $partners; ?></h2>
                    </div>
                    <?php echo $content_bottom; ?>
                </div>
            </div>
        </div>
    </section>
    <?php require("catalog/view/theme/technaton/template/common/operator.tpl"); ?>
</main>