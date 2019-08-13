<div class="operator-wrapper">
    <form action="#" id="help-form" method="POST" style="display: none;">
        <div class="form-title">
            <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="33.834px" height="33.834px" viewBox="0 0 33.834 33.834" xml:space="preserve">
                    <use xlink:href="#operator" x="0" y="0" />
                </svg>
            <p class="H1"><?php echo strip_tags($text_feedback); ?></p>
        </div>
        <form action="<?php echo $action; ?>" method="POST" class="feedback-form" enctype="multipart/form-data">
            <label for="#helpName"><?php echo $entry_name; ?>
                <input type="text" name="name" id="helpName" required>
            </label>
            <label for="#helpSurname"><?php echo $entry_surname; ?>
                <input type="text" name="surname" id="helpSurname" required>
            </label>
            <label for="#helpPhone"><?php echo $text_telephone; ?>
                <input type="text" name="phone" id="helpPhone" required>
            </label>
            <button type="submit" disabled id="helpsubmit"><?php echo $text_order; ?></button>
        </form>
    </form>
    <a href="" class="operator">
        <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="33.834px" height="33.834px" viewBox="0 0 33.834 33.834" xml:space="preserve">
                <use xlink:href="#operator" x="0" y="0" />
            </svg>
    </a>
</div>