<style>
    .instruction-wrapper .instruction-text h1::before {
        content: "<?php echo $heading_title; ?>";
        position: absolute;
        text-transform: uppercase;
        top: -65px;
        left: -114px;
        color: rgba(0, 125, 196, 0.05);
        font-size: 6.5vw;
        z-index: 1;
    }
</style>
<main>
    <section>
        <div class="container">
            <div class="row">
                <div class="instruction-wrapper">
                    <div class="instruction-text">
                        <div class="heading-block">
                            <h1><?php echo $heading_title; ?></h1>
                        </div>
                        <?php echo $description; ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <?php require("catalog/view/theme/technaton/template/common/feedback.tpl"); ?>
    <?php require("catalog/view/theme/technaton/template/common/operator.tpl"); ?>
</main>