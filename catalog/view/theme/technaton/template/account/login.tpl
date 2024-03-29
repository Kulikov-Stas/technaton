<div class="popup-wrapper well">
    <div class="popup-block">
        <div class="registration enter">
            <div class="close-btn shopping-btn">
                <button class="back-btn"></button>
                <svg id="exit" xmlns="http://www.w3.org/2000/svg" width="63.229" height="49" viewBox="0 0 63.229 49">
                    <rect id="Rectangle_77" data-name="Rectangle 77" width="63.229" height="49" fill="#007dc4" />
                    <path id="Path_80" data-name="Path 80" d="M3.7-28.655l6.153,8.046.316.592.316-.592,6.153-8.046H19.52L11.671-18.321,19.52-8.106H16.641l-6.153-8.007-.316-.552-.316.552L3.7-8.106H.825L8.674-18.321.825-28.655Z" transform="translate(21.916 43.053)" fill="#fff" />
                </svg>
            </div>
            <div class="popup-content">
                <div class="logo-block">
                    <img src="/catalog/view/theme/technaton/img/Group 80.png" alt="">
                </div>
                <form action="<?php echo $action; ?>" class="enterForm" method="post" enctype="multipart/form-data">
                    <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" />
                    <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" />
                    <div class="button-wrapper">
                        <input id="submitButton" type="submit" value="<?php echo $button_login; ?>" class="btn btn-primary" />
                        <?php if ($redirect) { ?>
                            <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                        <?php } ?>
                        <!--<a id="losePassword" href="<?php /*echo $forgotten; */?>"><?php /*echo $text_forgotten; */?></a>-->
                    </div>
                </form>
                <!--<form class="enterForm" action="http://for-tests2.h1n.ru/testAjax/index.html" method="POST">
                    <input id="email" type="text" name="email" placeholder="E-mail*">
                    <input id="password" type="password" name="password" placeholder="Пароль*">
                    <div class="button-wrapper">
                        <button id="submitButton" type="submit" disabled="">Войти</button>
                        <a class="p" id="losePassword" href="#">Забыли пароль?</a>
                    </div>
                </form>-->
            </div>
        </div>
    </div>
</div>
<div class="popup-wrapper">
    <div class="popup-block">
        <div class="autorization">
            <div class="close-btn shopping-btn">
                <svg id="exit" xmlns="http://www.w3.org/2000/svg" width="63.229" height="49" viewBox="0 0 63.229 49">
                    <rect id="Rectangle_77" data-name="Rectangle 77" width="63.229" height="49" fill="#007dc4" />
                    <path id="Path_80" data-name="Path 80" d="M3.7-28.655l6.153,8.046.316.592.316-.592,6.153-8.046H19.52L11.671-18.321,19.52-8.106H16.641l-6.153-8.007-.316-.552-.316.552L3.7-8.106H.825L8.674-18.321.825-28.655Z" transform="translate(21.916 43.053)" fill="#fff" />
                </svg>
            </div>
            <div class="popup-content">
                <div class="logo-block">
                    <img src="/catalog/view/theme/technaton/img/Group 80.png" alt="logo">
                </div>
                <div class="button-block">
                    <a href="<?php echo $register; ?>" class="button registration-ajax"><?php echo $text_register; ?></a>
                    <a href="#" class="button enter-ajax"><?php echo $text_login; ?></a>
                </div>
                <p><?php echo $text_social; ?></p>
                <div class="soc-registration-block">
                    <div class="facebook">
                        <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 90 90" xml:space="preserve">
                            <g>
                                <path id="Facebook" d="M90,15.001C90,7.119,82.884,0,75,0H15C7.116,0,0,7.119,0,15.001v59.998
                    C0,82.881,7.116,90,15.001,90H45V56H34V41h11v-5.844C45,25.077,52.568,16,61.875,16H74v15H61.875C60.548,31,59,32.611,59,35.024V41
                    h15v15H59v34h16c7.884,0,15-7.119,15-15.001V15.001z" />
                            </g>
                        </svg>
                    </div>
                    <div class="google">
                        <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 512 512" xml:space="preserve">
                            <path id="yellow" d="M113.47,309.408L95.648,375.94l-65.139,1.378C11.042,341.211,0,299.9,0,256
                            c0-42.451,10.324-82.483,28.624-117.732h0.014l57.992,10.632l25.404,57.644c-5.317,15.501-8.215,32.141-8.215,49.456
                            C103.821,274.792,107.225,292.797,113.47,309.408z" />
                            <path id="blue" d="M507.527,208.176C510.467,223.662,512,239.655,512,256c0,18.328-1.927,36.206-5.598,53.451
                            c-12.462,58.683-45.025,109.925-90.134,146.187l-0.014-0.014l-73.044-3.727l-10.338-64.535
                            c29.932-17.554,53.324-45.025,65.646-77.911h-136.89V208.176h138.887L507.527,208.176L507.527,208.176z" />
                            <path id="green" d="M416.253,455.624l0.014,0.014C372.396,490.901,316.666,512,256,512
                            c-97.491,0-182.252-54.491-225.491-134.681l82.961-67.91c21.619,57.698,77.278,98.771,142.53,98.771
                            c28.047,0,54.323-7.582,76.87-20.818L416.253,455.624z" />
                            <path id="red" d="M419.404,58.936l-82.933,67.896c-23.335-14.586-50.919-23.012-80.471-23.012
                            c-66.729,0-123.429,42.957-143.965,102.724l-83.397-68.276h-0.014C71.23,56.123,157.06,0,256,0
                            C318.115,0,375.068,22.126,419.404,58.936z" />
                        </svg>
                    </div>
                    <div class="vk">
                        <svg xmlns="http://www.w3.org/2000/svg" width="49.076" height="28" viewBox="0 0 49.076 28">
                            <g id="vk">
                                <path id="Path_78" data-name="Path 78" d="M48.816,143.035a3.364,3.364,0,0,0-.166-.319,25.434,25.434,0,0,0-4.88-5.647l-.051-.051-.025-.025-.026-.026h-.026q-1.635-1.559-2.069-2.1a1.967,1.967,0,0,1-.358-2.07,19.3,19.3,0,0,1,2.3-3.347q1.048-1.354,1.661-2.172,4.421-5.877,3.833-7.512l-.152-.255a1.5,1.5,0,0,0-.792-.422,4.023,4.023,0,0,0-1.636-.064l-7.359.051a.955.955,0,0,0-.511.013l-.332.077-.128.064-.1.077a1.136,1.136,0,0,0-.281.268,1.754,1.754,0,0,0-.255.447,41.723,41.723,0,0,1-2.734,5.749q-.945,1.584-1.738,2.747a13.217,13.217,0,0,1-1.328,1.712,9.27,9.27,0,0,1-.971.881q-.435.333-.664.281c-.153-.034-.3-.068-.435-.1a1.7,1.7,0,0,1-.575-.626,2.8,2.8,0,0,1-.294-1q-.076-.6-.089-1.035t.013-1.227q.027-.792.026-1.073,0-.971.038-2.108t.064-1.8q.026-.664.025-1.406a5.9,5.9,0,0,0-.089-1.163,3.978,3.978,0,0,0-.268-.818,1.377,1.377,0,0,0-.524-.613,2.953,2.953,0,0,0-.856-.345,17,17,0,0,0-3.45-.332q-4.752-.051-6.107.613a3.442,3.442,0,0,0-.971.766q-.46.562-.128.613a3.132,3.132,0,0,1,2.172,1.1l.153.307a4.888,4.888,0,0,1,.358,1.175,11.859,11.859,0,0,1,.23,1.865,19.889,19.889,0,0,1,0,3.194q-.128,1.329-.243,2.07a4.144,4.144,0,0,1-.345,1.2,5.065,5.065,0,0,1-.307.562.44.44,0,0,1-.128.128,1.914,1.914,0,0,1-.69.128,1.619,1.619,0,0,1-.869-.358,6.131,6.131,0,0,1-1.06-.984,13.15,13.15,0,0,1-1.24-1.75q-.69-1.124-1.431-2.657l-.409-.741q-.383-.715-1.047-2.082t-1.175-2.645a1.684,1.684,0,0,0-.613-.817l-.128-.077a1.749,1.749,0,0,0-.409-.217,2.71,2.71,0,0,0-.588-.166l-7,.051a1.779,1.779,0,0,0-1.456.486l-.1.153a.827.827,0,0,0-.077.409,2.034,2.034,0,0,0,.153.69q1.533,3.6,3.334,6.95t3.13,5.391q1.329,2.044,2.709,3.858t1.827,2.325q.447.512.7.767l.639.613a15.157,15.157,0,0,0,1.8,1.469,30.726,30.726,0,0,0,2.632,1.687,14.277,14.277,0,0,0,3.36,1.354,11.619,11.619,0,0,0,3.731.422h2.939a2.035,2.035,0,0,0,1.354-.562l.1-.128a1.694,1.694,0,0,0,.191-.472,2.6,2.6,0,0,0,.089-.7,8.419,8.419,0,0,1,.166-1.98,5.206,5.206,0,0,1,.435-1.329,3.265,3.265,0,0,1,.549-.753,2.22,2.22,0,0,1,.435-.371,1.667,1.667,0,0,1,.2-.089,1.622,1.622,0,0,1,1.444.4,8.481,8.481,0,0,1,1.559,1.482q.728.882,1.75,1.98a12.026,12.026,0,0,0,1.789,1.635l.511.307a6.221,6.221,0,0,0,1.329.562,2.864,2.864,0,0,0,1.431.128l6.541-.1a2.964,2.964,0,0,0,1.507-.32,1.266,1.266,0,0,0,.639-.7,1.979,1.979,0,0,0,.013-.869A3.207,3.207,0,0,0,48.816,143.035Z" transform="translate(0 -117.748)" />
                            </g>
                        </svg>
                    </div>
                    <div class="twitter">
                        <svg xmlns="http://www.w3.org/2000/svg" width="34.471" height="28" viewBox="0 0 34.471 28">
                            <g id="twitter">
                                <path id="Path_79" data-name="Path 79" d="M34.472,60.754a14.121,14.121,0,0,1-4.06,1.114,7.1,7.1,0,0,0,3.108-3.91,14.256,14.256,0,0,1-4.493,1.717,7.077,7.077,0,0,0-12.049,6.447A20.076,20.076,0,0,1,2.4,58.733a7.08,7.08,0,0,0,2.188,9.439,7.072,7.072,0,0,1-3.2-.887v.088A7.078,7.078,0,0,0,7.06,74.307a7.163,7.163,0,0,1-1.863.248,6.788,6.788,0,0,1-1.331-.131,7.075,7.075,0,0,0,6.6,4.911,14.187,14.187,0,0,1-8.782,3.022A15.027,15.027,0,0,1,0,82.259,19.988,19.988,0,0,0,10.84,85.441c13.008,0,20.118-10.774,20.118-20.118l-.024-.915A14.121,14.121,0,0,0,34.472,60.754Z" transform="translate(-0.001 -57.441)" />
                            </g>
                        </svg>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--<div class="container">

  <?php /*if ($success) { */?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php /*echo $success; */?></div>
  <?php /*} */?>
  <?php /*if ($error_warning) { */?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php /*echo $error_warning; */?></div>
  <?php /*} */?>
  <div class="row"><?php /*echo $column_left; */?>
    <?php /*if ($column_left && $column_right) { */?>
    <?php /*$class = 'col-sm-6'; */?>
    <?php /*} elseif ($column_left || $column_right) { */?>
    <?php /*$class = 'col-sm-9'; */?>
    <?php /*} else { */?>
    <?php /*$class = 'col-sm-12'; */?>
    <?php /*} */?>
    <div id="content" class="<?php /*echo $class; */?>"><?php /*echo $content_top; */?>
      <div class="row">
        <div class="col-sm-6">
          <div class="well">
            <h2><?php /*echo $text_new_customer; */?></h2>
            <p><strong><?php /*echo $text_register; */?></strong></p>
            <p><?php /*echo $text_register_account; */?></p>
            <a href="<?php /*echo $register; */?>" class="btn btn-primary"><?php /*echo $button_continue; */?></a></div>
        </div>
        <div class="col-sm-6">
          <div class="well">
            <h2><?php /*echo $text_returning_customer; */?></h2>
            <p><strong><?php /*echo $text_i_am_returning_customer; */?></strong></p>
            <form action="<?php /*echo $action; */?>" method="post" enctype="multipart/form-data">
              <div class="form-group">
                <label class="control-label" for="input-email"><?php /*echo $entry_email; */?></label>
                <input type="text" name="email" value="<?php /*echo $email; */?>" placeholder="<?php /*echo $entry_email; */?>" id="input-email" class="form-control" />
              </div>
              <div class="form-group">
                <label class="control-label" for="input-password"><?php /*echo $entry_password; */?></label>
                <input type="password" name="password" value="<?php /*echo $password; */?>" placeholder="<?php /*echo $entry_password; */?>" id="input-password" class="form-control" />
                <a href="<?php /*echo $forgotten; */?>"><?php /*echo $text_forgotten; */?></a></div>
              <input type="submit" value="<?php /*echo $button_login; */?>" class="btn btn-primary" />
              <?php /*if ($redirect) { */?>
              <input type="hidden" name="redirect" value="<?php /*echo $redirect; */?>" />
              <?php /*} */?>
            </form>
          </div>
        </div>
      </div>
      <?php /*echo $content_bottom; */?></div>
    <?php /*echo $column_right; */?></div>
</div>-->
