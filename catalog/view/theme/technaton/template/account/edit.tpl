
<div class="popup-wrapper">
    <div class="popup-block">
        <div class="profile-edit">
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="edit-profile-form">
                <div class="btn-wrapper">
                    <a id="edit-sbm">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="62.669" height="49" viewBox="0 0 62.669 49">
                            <defs>
                                <clipPath id="clip-path">
                                    <rect width="62.669" height="49" fill="none" />
                                </clipPath>
                            </defs>
                            <g id="Сохранить" clip-path="url(#clip-path)">
                                <rect id="Rectangle_77" data-name="Rectangle 77" width="62.669" height="49" fill="#4fc179" />
                                <g id="save" transform="translate(19.867 12.963)">
                                    <rect id="Rectangle_82" data-name="Rectangle 82" width="2.825" height="4.709" transform="translate(13.214 2.355)" fill="#fff" />
                                    <path id="Path_88" data-name="Path 88" d="M19.06,0H.5V23.074H23.1V4.043ZM5.209.942H17.453V8.476H5.209ZM18.865,22.133H4.267V12.244h14.6Z" fill="#fff" />
                                    <path id="Path_89" data-name="Path 89" d="M12.971,30.942h3.3a.471.471,0,0,0,0-.942h-3.3a.471.471,0,1,0,0,.942Z" transform="translate(-6.349 -15.873)" fill="#fff" />
                                    <path id="Path_90" data-name="Path 90" d="M12.971,34.942H17.68a.471.471,0,1,0,0-.942H12.971a.471.471,0,1,0,0,.942Z" transform="translate(-6.349 -17.989)" fill="#fff" />
                                    <path id="Path_91" data-name="Path 91" d="M25.971,34.948a.486.486,0,0,0,.334-.137.478.478,0,0,0,0-.669.487.487,0,0,0-.664,0,.469.469,0,0,0-.141.334.466.466,0,0,0,.471.471Z" transform="translate(-13.227 -17.996)" fill="#fff" />
                                </g>
                            </g>
                        </svg>
                    </a>
                    <svg id="exit" xmlns="http://www.w3.org/2000/svg" width="63.229" height="49" viewBox="0 0 63.229 49">
                        <rect id="Rectangle_77" data-name="Rectangle 77" width="63.229" height="49" fill="#007dc4" />
                        <path id="Path_80" data-name="Path 80" d="M3.7-28.655l6.153,8.046.316.592.316-.592,6.153-8.046H19.52L11.671-18.321,19.52-8.106H16.641l-6.153-8.007-.316-.552-.316.552L3.7-8.106H.825L8.674-18.321.825-28.655Z" transform="translate(21.916 43.053)" fill="#fff" />
                    </svg>
                </div>
                <div class="form-content">
                    <?php foreach ($custom_fields as $custom_field) { ?>
                        <?php if ($custom_field['location'] == 'account') { ?>
                            <?php if ($custom_field['type'] == 'file') { ?>
                                <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field" data-sort="<?php echo $custom_field['sort_order']; ?>" style="display: none">
                                    <label class="col-sm-2 control-label"><?php echo $custom_field['name']; ?></label>
                                    <div class="col-sm-10">
                                        <button type="button" id="button-custom-field<?php echo $custom_field['custom_field_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
                                        <input type="hidden" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($account_custom_field[$custom_field['custom_field_id']]) ? $account_custom_field[$custom_field['custom_field_id']] : ''); ?>" />
                                        <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                                            <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                                        <?php } ?>
                                    </div>
                                </div>
                            <?php   }
                        }
                    } ?>
                    <div class="userPhoto-block">
                        <label for="userPhoto">
                            <input id="userPhoto" name="userPhoto" value="<?php echo $image; ?>">
                            <div class="mask-block">
                                <svg id="camera" data-name="Group 110" xmlns="http://www.w3.org/2000/svg" width="70" height="56" viewBox="0 0 70 56">
                                    <path id="Path_87" data-name="Path 87" d="M35,31A10.5,10.5,0,1,0,45.5,41.5,10.5,10.5,0,0,0,35,31ZM63,20.5H54.6a3.117,3.117,0,0,1-2.764-1.992l-2.171-6.516A3.119,3.119,0,0,0,46.9,10H23.1a3.117,3.117,0,0,0-2.764,1.992l-2.171,6.516A3.119,3.119,0,0,1,15.4,20.5H7a7.021,7.021,0,0,0-7,7V59a7.021,7.021,0,0,0,7,7H63a7.021,7.021,0,0,0,7-7V27.5A7.021,7.021,0,0,0,63,20.5ZM35,59A17.5,17.5,0,1,1,52.5,41.5,17.5,17.5,0,0,1,35,59ZM60.55,32.4A2.45,2.45,0,1,1,63,29.945,2.45,2.45,0,0,1,60.55,32.4Z" transform="translate(0 -10)" fill="#fff" />
                                </svg>
                                <p>Загрузить фото</p>
                            </div>
                            <img src="/system/storage/upload/<?php echo $image; ?>" alt="" class="photo">
                        </label>
                    </div>
                    <div class="user-info-block">
                        <input type="text" name="firstname" value="<?php echo $firstname; ?>" placeholder="<?php echo $entry_firstname; ?>" id="input-firstname" class="a" />
                        <?php if ($error_firstname) { ?>
                        <div class="text-danger"><?php echo $error_firstname; ?></div>
                        <?php } ?>
                        <!--<input type="text" name="name" class="a" id="name" placeholder="Darth Cat">-->
                        <?php foreach ($custom_fields as $custom_field) { ?>
                        <?php if ($custom_field['location'] == 'account') { ?>
                        <?php if ($custom_field['type'] == 'text') { ?>
                            <input type="text" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo (isset($account_custom_field[$custom_field['custom_field_id']]) ? $account_custom_field[$custom_field['custom_field_id']] : $custom_field['value']); ?>" placeholder="<?php echo $custom_field['name']; ?>" id="input-custom-field<?php echo $custom_field['custom_field_id']; ?>" />
                            <?php if (isset($error_custom_field[$custom_field['custom_field_id']])) { ?>
                                <div class="text-danger"><?php echo $error_custom_field[$custom_field['custom_field_id']]; ?></div>
                            <?php } ?>
                        <?php   }
                            }
                        } ?>
                        <!--<input type="text" name="userInfo" id="info" placeholder="Директор компании Азовсталь">-->
                        <div class="input-group">
                            <svg xmlns="http://www.w3.org/2000/svg" width="30.377" height="30.377" viewBox="0 0 30.377 30.377">
                                <g id="arroba" transform="translate(0 0)">
                                    <g id="Group_96" data-name="Group 96" transform="translate(12.578 12.459)">
                                        <g id="Group_95" data-name="Group 95">
                                            <path id="Path_81" data-name="Path 81" d="M214.67,210a2.67,2.67,0,1,0,2.67,2.67A2.673,2.673,0,0,0,214.67,210Z" transform="translate(-212 -210)" fill="#007dc4" />
                                        </g>
                                    </g>
                                    <g id="Group_98" data-name="Group 98">
                                        <g id="Group_97" data-name="Group 97">
                                            <path id="Path_82" data-name="Path 82" d="M15.129,0a15.189,15.189,0,0,0,0,30.377A15.35,15.35,0,0,0,30.377,15.129,15.248,15.248,0,0,0,15.129,0Zm6.348,19.579a3.553,3.553,0,0,1-2.908-1.519,4.452,4.452,0,1,1-.652-6.468v-.023a.89.89,0,0,1,1.78,0v4.45a1.78,1.78,0,0,0,3.56,0c0-5.956-3.941-8.9-8.01-8.9a8.01,8.01,0,1,0,0,16.019,7.924,7.924,0,0,0,4.869-1.65A.89.89,0,0,1,21.2,22.9a9.694,9.694,0,0,1-5.953,2.018,9.789,9.789,0,1,1,0-19.579c4.918,0,9.789,3.627,9.789,10.679A3.563,3.563,0,0,1,21.477,19.579Z" fill="#007dc4" />
                                        </g>
                                    </g>
                                </g>
                            </svg>
                            <input type="email" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
                            <?php if ($error_email) { ?>
                            <div class="text-danger"><?php echo $error_email; ?></div>
                            <?php } ?>
                            <!--<input type="text" name="email" id="mail" placeholder="jhondoe@gmail.com">-->
                        </div>
                        <div class="input-group">
                            <svg xmlns="http://www.w3.org/2000/svg" width="30.295" height="30.295" viewBox="0 0 30.295 30.295">
                                <g id="phone-symbol-of-an-auricular-inside-a-circle" transform="translate(0 0)">
                                    <path id="Path_83" data-name="Path 83" d="M15.149,0A15.148,15.148,0,1,0,30.3,15.148,15.148,15.148,0,0,0,15.149,0Zm8,22.1-1.213,1.213a2.235,2.235,0,0,1-.871.351A14.306,14.306,0,0,1,6.628,9.2a2.258,2.258,0,0,1,.355-.832L8.2,7.152A2.026,2.026,0,0,1,10.09,6.7l.255.085A2.4,2.4,0,0,1,11.73,8.255l.61,2.239a2.2,2.2,0,0,1-.5,1.918l-.81.81a8.6,8.6,0,0,0,6.048,6.05l.809-.81a2.2,2.2,0,0,1,1.918-.5l2.239.612a2.4,2.4,0,0,1,1.465,1.383l.085.259A2.028,2.028,0,0,1,23.148,22.1Z" transform="translate(-0.001)" fill="#007dc4" />
                                </g>
                            </svg>
                            <input type="tel" name="telephone" value="<?php echo $telephone; ?>" placeholder="<?php echo $entry_telephone; ?>" id="input-telephone" class="form-control" />
                            <?php if ($error_telephone) { ?>
                            <div class="text-danger"><?php echo $error_telephone; ?></div>
                            <?php } ?>
                            <!--<input type="text" name="phone" id="phone" placeholder="+380 (93) 928 2837">-->
                        </div>
                        <div class="soc-wrapper">
                            <div class="soc-registration-block">
                                <div class="facebook">
                                    <a href="#">
                                        <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" width="14" height="14" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 90 90" xml:space="preserve">
                                                <g>
                                                    <path id="Facebook" d="M90,15.001C90,7.119,82.884,0,75,0H15C7.116,0,0,7.119,0,15.001v59.998
                                        C0,82.881,7.116,90,15.001,90H45V56H34V41h11v-5.844C45,25.077,52.568,16,61.875,16H74v15H61.875C60.548,31,59,32.611,59,35.024V41
                                        h15v15H59v34h16c7.884,0,15-7.119,15-15.001V15.001z" />
                                                </g>
                                            </svg>
                                    </a>
                                </div>
                                <div class="google">
                                    <a href="#">
                                        <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" width="14" height="14" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 512 512" xml:space="preserve">
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
                                    </a>
                                </div>
                                <div class="vk">
                                    <a href="#">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="18" height="14" viewBox="0 0 49.076 28">
                                            <g id="vk">
                                                <path id="Path_78" data-name="Path 78" d="M48.816,143.035a3.364,3.364,0,0,0-.166-.319,25.434,25.434,0,0,0-4.88-5.647l-.051-.051-.025-.025-.026-.026h-.026q-1.635-1.559-2.069-2.1a1.967,1.967,0,0,1-.358-2.07,19.3,19.3,0,0,1,2.3-3.347q1.048-1.354,1.661-2.172,4.421-5.877,3.833-7.512l-.152-.255a1.5,1.5,0,0,0-.792-.422,4.023,4.023,0,0,0-1.636-.064l-7.359.051a.955.955,0,0,0-.511.013l-.332.077-.128.064-.1.077a1.136,1.136,0,0,0-.281.268,1.754,1.754,0,0,0-.255.447,41.723,41.723,0,0,1-2.734,5.749q-.945,1.584-1.738,2.747a13.217,13.217,0,0,1-1.328,1.712,9.27,9.27,0,0,1-.971.881q-.435.333-.664.281c-.153-.034-.3-.068-.435-.1a1.7,1.7,0,0,1-.575-.626,2.8,2.8,0,0,1-.294-1q-.076-.6-.089-1.035t.013-1.227q.027-.792.026-1.073,0-.971.038-2.108t.064-1.8q.026-.664.025-1.406a5.9,5.9,0,0,0-.089-1.163,3.978,3.978,0,0,0-.268-.818,1.377,1.377,0,0,0-.524-.613,2.953,2.953,0,0,0-.856-.345,17,17,0,0,0-3.45-.332q-4.752-.051-6.107.613a3.442,3.442,0,0,0-.971.766q-.46.562-.128.613a3.132,3.132,0,0,1,2.172,1.1l.153.307a4.888,4.888,0,0,1,.358,1.175,11.859,11.859,0,0,1,.23,1.865,19.889,19.889,0,0,1,0,3.194q-.128,1.329-.243,2.07a4.144,4.144,0,0,1-.345,1.2,5.065,5.065,0,0,1-.307.562.44.44,0,0,1-.128.128,1.914,1.914,0,0,1-.69.128,1.619,1.619,0,0,1-.869-.358,6.131,6.131,0,0,1-1.06-.984,13.15,13.15,0,0,1-1.24-1.75q-.69-1.124-1.431-2.657l-.409-.741q-.383-.715-1.047-2.082t-1.175-2.645a1.684,1.684,0,0,0-.613-.817l-.128-.077a1.749,1.749,0,0,0-.409-.217,2.71,2.71,0,0,0-.588-.166l-7,.051a1.779,1.779,0,0,0-1.456.486l-.1.153a.827.827,0,0,0-.077.409,2.034,2.034,0,0,0,.153.69q1.533,3.6,3.334,6.95t3.13,5.391q1.329,2.044,2.709,3.858t1.827,2.325q.447.512.7.767l.639.613a15.157,15.157,0,0,0,1.8,1.469,30.726,30.726,0,0,0,2.632,1.687,14.277,14.277,0,0,0,3.36,1.354,11.619,11.619,0,0,0,3.731.422h2.939a2.035,2.035,0,0,0,1.354-.562l.1-.128a1.694,1.694,0,0,0,.191-.472,2.6,2.6,0,0,0,.089-.7,8.419,8.419,0,0,1,.166-1.98,5.206,5.206,0,0,1,.435-1.329,3.265,3.265,0,0,1,.549-.753,2.22,2.22,0,0,1,.435-.371,1.667,1.667,0,0,1,.2-.089,1.622,1.622,0,0,1,1.444.4,8.481,8.481,0,0,1,1.559,1.482q.728.882,1.75,1.98a12.026,12.026,0,0,0,1.789,1.635l.511.307a6.221,6.221,0,0,0,1.329.562,2.864,2.864,0,0,0,1.431.128l6.541-.1a2.964,2.964,0,0,0,1.507-.32,1.266,1.266,0,0,0,.639-.7,1.979,1.979,0,0,0,.013-.869A3.207,3.207,0,0,0,48.816,143.035Z" transform="translate(0 -117.748)" />
                                            </g>
                                        </svg>
                                    </a>
                                </div>
                                <div class="twitter">
                                    <a href="#">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 34.471 28">
                                            <g id="twitter">
                                                <path id="Path_79" data-name="Path 79" d="M34.472,60.754a14.121,14.121,0,0,1-4.06,1.114,7.1,7.1,0,0,0,3.108-3.91,14.256,14.256,0,0,1-4.493,1.717,7.077,7.077,0,0,0-12.049,6.447A20.076,20.076,0,0,1,2.4,58.733a7.08,7.08,0,0,0,2.188,9.439,7.072,7.072,0,0,1-3.2-.887v.088A7.078,7.078,0,0,0,7.06,74.307a7.163,7.163,0,0,1-1.863.248,6.788,6.788,0,0,1-1.331-.131,7.075,7.075,0,0,0,6.6,4.911,14.187,14.187,0,0,1-8.782,3.022A15.027,15.027,0,0,1,0,82.259,19.988,19.988,0,0,0,10.84,85.441c13.008,0,20.118-10.774,20.118-20.118l-.024-.915A14.121,14.121,0,0,0,34.472,60.754Z" transform="translate(-0.001 -57.441)" />
                                            </g>
                                        </svg>
                                    </a>
                                </div>
                            </div>
                            <p id="changePassword">Смена пароля</p>
                        </div>

                    </div>
                    <div class="subscribe-block">
                        <input type="checkbox" name="newsletter" id="checkbox" class="checkbox"<?php if ($newsletter == 1) echo " checked"; ?>>
                        <label for="checkbox" class="checkbox-style">
                            <p>Получать уведомления о новостях и предложениях</p>
                        </label>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>


<!--<script type="text/javascript">
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});
</script>-->

