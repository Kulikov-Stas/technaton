<div class="popup-wrapper">
    <div class="popup-block">
        <div class="registration enter change">
            <div class="close-btn shopping-btn">
                <svg id="exit" xmlns="http://www.w3.org/2000/svg" width="63.229" height="49" viewBox="0 0 63.229 49">
                    <rect id="Rectangle_77" data-name="Rectangle 77" width="63.229" height="49" fill="#007dc4" />
                    <path id="Path_80" data-name="Path 80" d="M3.7-28.655l6.153,8.046.316.592.316-.592,6.153-8.046H19.52L11.671-18.321,19.52-8.106H16.641l-6.153-8.007-.316-.552-.316.552L3.7-8.106H.825L8.674-18.321.825-28.655Z" transform="translate(21.916 43.053)" fill="#fff" />
                </svg>
            </div>
            <div class="popup-content">
                <h3 class="colorHeading H3">Смена Пароля</h3>
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="enterForm" id="changeForm">
                  <!--  <fieldset>
                        <legend><?php /*echo $text_password; */?></legend>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-password"><?php /*echo $entry_password; */?></label>
                            <div class="col-sm-10">-->
                                <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" />
                               <!-- <?php /*if ($error_password) { */?>
                                    <div class="text-danger"><?php /*echo $error_password; */?></div>
                                <?php /*} */?>
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-confirm"><?php /*echo $entry_confirm; */?></label>
                            <div class="col-sm-10">-->
                                <input type="password" name="confirm" value="<?php echo $confirm; ?>" placeholder="<?php echo $entry_confirm; ?>" id="input-confirm" />
                                <?php /*if ($error_confirm) { */?><!--
                                    <div class="text-danger"><?php /*echo $error_confirm; */?></div>
                                <?php /*} */?>
                            </div>
                        </div>
                    </fieldset>
                    <div class="buttons clearfix">
                        <div class="pull-left"><a href="<?php /*echo $back; */?>" class="btn btn-default"><?php /*echo $button_back; */?></a></div>
                        <div class="pull-right">
                            <input type="submit" value="<?php /*echo $button_continue; */?>" class="btn btn-primary" />
                        </div>
                    </div>-->
                    <div class="button-wrapper">
                        <button id="submitChange" type="submit" disabled="">Отправить</button>
                        <a class="p" href="#" id="back">Я передумал</a>
                    </div>
                </form>

                <!--<form class="enterForm" action="http://for-tests2.h1n.ru/testAjax/index2.html" method="POST" id="changeForm">
                    <input id="oldPassword" type="password" name="oldPassword" placeholder="Введите старый пароль">
                    <input id="newPassword" type="password" name="newPassword" placeholder="Придумайте новый пароль">
                    <input id="repeatPassword" type="password" name="repeatPassword" placeholder="Новый пароль еще раз*">
                    <div class="button-wrapper">
                        <button id="submitChange" type="submit" disabled="">Отправить</button>
                        <a class="p" href="#" id="back">Я передумал</a>
                    </div>
                </form>-->
            </div>
        </div>
    </div>
</div>