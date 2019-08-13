<style>
    .feedback-wrapper h2::before {
        content: "<?php echo strip_tags($text_feedback); ?>";
    }
</style>
<section>
    <div class="container">
        <div class="row">
            <div class="feedback-wrapper">
                <div class="heading-block">
                    <h2><?php echo $text_feedback; ?></h2>
                </div>
                <form action="<?php echo $action; ?>" method="POST" class="feedback-form" enctype="multipart/form-data">
                    <label for="#name"><?php echo $entry_name; ?>
                        <input id="name" type="text" name="name" required >
                        <?php if ($error_name) { ?>
                            <div class="text-danger"><?php echo $error_name; ?></div>
                        <?php } ?>
                    </label>
                    <label for="#surname"><?php echo $entry_surname; ?>
                        <input id="surname" type="text" name="surname" required >
                        <?php if ($error_surname) { ?>
                            <div class="text-danger"><?php echo $error_surname; ?></div>
                        <?php } ?>
                    </label>
                    <label for="#phone"><?php echo $text_telephone; ?>
                        <input id="phone" type="phone" name="phone" required >
                        <?php if ($error_phone) { ?>
                            <div class="text-danger"><?php echo $error_phone; ?></div>
                        <?php } ?>
                    </label>
                    <?php echo $captcha; ?>
                    <div class="submit-wrapper">
                        <button id="submitButton" type="submit" disabled value="<?php echo $button_submit; ?>"><?php echo $text_order; ?></button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>