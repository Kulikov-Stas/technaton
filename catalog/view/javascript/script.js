$(document).ready(function() {

    //language button in header
    $(".lang .btn-sm").on("click", function() {
        if (!$(this).hasClass("activeBtn")) {
            $(this).addClass("activeBtn").siblings().removeClass("activeBtn");
        }
        console.log($(this).text());
        if ($(this).text() === 'Eng') {
            console.log('eng click');
            $('button[name="en-gb"]').trigger('click');
        } else {
            console.log('ru click');
            $('button[name="ru-ru"]').trigger('click');
        }

    });

    //burger anim
    $(".navbar-toggler").on('click', function() {
        $(this).toggleClass("hideCollapse");
    })

    //menu link
    $(".nav-item").on("click", function() {
        if (!$(this).hasClass("active")) {
            $(this).addClass("active").siblings().removeClass("active");
        }
    });

    //catalog hover style
    if ($(window).width() > 480) {

        $(".baners").mouseenter(function() {
            $(this).find(".mask").fadeOut();
            $(this).siblings().find(".mask").fadeIn();
            $(this).find(".hide-discription").fadeIn();
            $(this).siblings().find(".hide-discription").fadeOut();
        });
    }

    //******************

    //news page response
    if ($(".news-page").length > 0) {
        if ($(window).width() <= 1024) {
            $(".smallNews").each(function() {
                $(this).addClass("big-news");
            });
        } else {
            $(".smallNews").each(function() {
                $(this).removeClass("big-news");
            });
        }

        $(window).resize(function() {
            if ($(window).width() <= 1024) {
                $(".smallNews").each(function() {
                    $(this).addClass("big-news");
                });
            } else {
                $(".smallNews").each(function() {
                    $(this).removeClass("big-news");
                });
            }
        });
    }

    //color heading

    var el = $(".colorHeading");
    el.each(function() {
        var words = $(this);
        var tagName = words.prop("tagName");
        colorWord(words, tagName);
    })

    function colorWord(el, tag) {

        var word = el.text();
        var arr = word.split(" ");
        var length = word.split(" ").length;
        var arr2 = arr.slice(length / 2).join(" ");
        var arr1 = arr.slice(0, length / 2).join(" ");
        el.html(arr1 + "<span class='" + tag + " ' style='color: #007DC4;'>" + " " + arr2 + "</span>");
    }

    //mask input
    if ($('#phone').length > 0) {

        $('#phone').mask("+38 (999) 999 99 99", { placeholder: " " });
    }
    if ($('#helpPhone').length > 0) {

        $('#helpPhone').mask("+38 (999) 999 99 99", { placeholder: " " });
    }
    var feedback_fields = 0;

    //feedback form
    $(".feedback-wrapper input").on("keyup", function() {
        var name = $("#name").val();
        var surname = $("#surname").val();
        var phone = $("#phone").val();
        var btn = $("#submitButton");
        var form = $(".feedback-form");
        validForm(form);
        checkParams(name, surname, phone, btn, form);
        feedback_fields++;
    });

    //help form

    $("#help-form input").on("keyup", function() {
        var form = $("#help-form");
        var name = $("#helpName").val();
        var surname = $("#helpSurname").val();
        var phone = $("#helpPhone").val();
        var btn = $("#helpsubmit");
        validForm(form);
        checkParams(name, surname, phone, btn, form);
    });

    //owl slider

    if ($(".owl-carousel").length > 0) {
        $(".owl-carousel").owlCarousel({
            stagePadding: 80,
            startPosition: 1,
            responsive: {
                0: {
                    items: 2
                },
                480: {
                    items: 3
                },
                768: {
                    items: 4
                },
                1200: {
                    items: 2
                },
                1600: {
                    items: 3
                }
            }
        });
    }

    if ($(".owl-carousel-two").length > 0) {

        $(".owl-carousel-two").on('click', '.owl-item', function() {
            var carousel = $(".owl-carousel-third");
            var click = $(this).index();

            $(".carousel-two-wrapper").animate({ opacity: 0 }, 500, function() {
                $(".carousel-two-wrapper").hide();
                carousel.trigger('to.owl.carousel', [click]);
                $(".carousel-third-wrapper").delay(300).show().animate({ opacity: 1 }, 500);
            });



        });


        $(".owl-carousel-third").on('click', '.back-btn', function() {
            $(".carousel-third-wrapper").animate({ opacity: 0 }, 500, function() {
                $(".carousel-third-wrapper").hide();
                $(".carousel-two-wrapper").show().animate({ opacity: 1 }, 500);
            });
        });



        $(".owl-carousel-third").owlCarousel({
            items: 1
        });



        $(".owl-carousel-two").owlCarousel({
            items: 9,
            stagePadding: 80,
            startPosition: 1,
            responsive: {
                0: {
                    items: 1
                },

                390: {
                    items: 2
                },
                560: {
                    items: 3
                },
                768: {
                    items: 5
                },
                1400: {
                    items: 9
                }
            }
        });
    }

    //accordeon

    $(".panel").on("show.bs.collapse", function() {
        $(this).addClass("active");

    })
    $(".panel").on("hide.bs.collapse", function() {
        $(this).removeClass("active");
    })

    //sort catalog item
    $(".w50 svg").on("click", function() {
        if ($(this).parent().hasClass("active")) {
            return false;
        } else {
            $(this).parent().addClass("active").siblings().removeClass("active");
            if ($(".wrapper-tems").hasClass("w30")) {
                $(".wrapper-tems").removeClass("w30").addClass("w50");
            } else if ($(".wrapper-tems").hasClass("w100")) {
                $(".wrapper-tems").removeClass("w100").addClass("w50");
            } else if ($(".wrapper-tems").hasClass("w50")) {
                return false;
            }
        }
    })

    $(".w30 svg").on("click", function() {
        if ($(this).parent().hasClass("active")) {
            return false;
        } else {
            $(this).parent().addClass("active").siblings().removeClass("active");
            if ($(".wrapper-tems").hasClass("w50")) {
                $(".wrapper-tems").removeClass("w50").addClass("w30");
            } else if ($(".wrapper-tems").hasClass("w100")) {
                $(".wrapper-tems").removeClass("w100").addClass("w30");
            } else if ($(".wrapper-tems").hasClass("w30")) {
                return false;
            }

        }
    })

    $(".w100 svg").on("click", function() {
        if ($(this).parent().hasClass("active")) {
            return false;
        } else {
            $(this).parent().addClass("active").siblings().removeClass("active");
            if ($(".wrapper-tems").hasClass("w50")) {
                $(".wrapper-tems").removeClass("w50").addClass("w100");
            } else if ($(".wrapper-tems").hasClass("w30")) {
                $(".wrapper-tems").removeClass("w30").addClass("w100");
            } else if ($(".wrapper-tems").hasClass("w100")) {
                return false;
            }

        }
    })

    //input spinner on card page

    if ($(".instruments-list").length > 0) {
        $(".price").each(function() {

            $(this).siblings(".total-price").text($(this).text());
        })

        $("input[type='number']").inputSpinner();
        //$(".btn-decrement").attr("disabled", "disabled");

        //sum price    
        $(document).on("change", ".card-amount", function(){
            var that = $(this).siblings(".input-group").find(".card-amount");
           
            if (that.val() <= 1) {
                    $(that).siblings(".input-group-prepend").find(".btn-decrement").attr("disabled", "disabled");
                    totalPrice(that);
                } else {
                     $(that).siblings(".input-group-prepend").find(".btn-decrement").removeAttr("disabled");
                    totalPrice(that);
                }
            
        })
        function totalPrice(inp){
                var inpVal = inp.val();
                var price = $(inp).parent().siblings(".price").text();
                $(inp).parent().siblings(".total-price").text((price*inpVal).toFixed(2));
        }
    }

    //search in card page
    $("#page-search").keyup(function(e) {
        _this = this;
        $.each($(".heading-block-title"), function() {
            if ($(this).text().toLowerCase().indexOf($(_this).val().toLowerCase()) === -1)
                $(this).parents("li").hide();
            else
                $(this).parents("li").show();
        });
    });

    //operator
    $(document).on("click", ".operator", function(e) {
        e.preventDefault();
        $("#help-form").fadeToggle();
    })

    //scroll style
    if ($(".instruments-list").length > 0) {
        var nice = $(".instruments-list").niceScroll({
            cursorcolor: "#007DC4",
            railpadding: { top: 0, right: 5, left: 0, bottom: 0 },
            autohidemode: false
        });
    }

    if ($(".order-list").length > 0) {
        var nice = $(".order-list").niceScroll({
            cursorcolor: "#007DC4",
            railpadding: { top: 0, right: -15, left: 0, bottom: 0 },
            autohidemode: false
        });
    }

    var magnificPopup;
    // magnific popup cart
    if ($('.ajax-popup-link').length > 0) {
        $('.ajax-popup-link').magnificPopup({
            type: 'ajax',
            closeOnContentClick: false,
            closeOnBgClick: false,
            overflowY: true,
            fixedContentPos: true,
            preloader: true,
            callbacks: {
                ajaxContentAdded: function() {
                    magnificPopup = $.magnificPopup.instance;
                    //scroll style
                    var nice = $(".order-list").niceScroll({
                        cursorcolor: "#007DC4",
                        railpadding: { top: 0, right: -15, left: 0, bottom: 0 },
                        autohidemode: false
                    });

                    //spinner button
                    if ($("input[type='number']").length > 0) {
                        $(".inp-price").inputSpinner();
                    //default sum price
                        /*var inpNum = $(".input-group").find(".inp-price");
                        inpNum.each(function(){
                            var that = $(this);
                            totalPrice(that);
                        });*/
                    //sum price    
                        $(".price-wrapper .input-group .form-control").attr("readonly", "readonly");
                        //$(".btn-decrement").attr("disabled", "disabled");
                        function totalPrice(inpVal) {
                            	var sum = 0;
                                var inpvalue = inpVal.val();
                                var price = $(inpVal).parent().siblings(".price").text();
                                var sumPrice = $(inpVal).parent().siblings(".sumPrice");
                                var sumPriceText = $(inpVal).parent().siblings(".sumPrice").text();
                                $(inpVal).parent().siblings(".sumPrice").text((price*inpvalue).toFixed(2));
                           		$('.sumPrice').each(function() {
                                	sum += Number($(this).text());
                            	});
                            	 $('.finPrice').text(sum.toFixed(2));
                        }

                        if ($(".order-list").length > 0) {
                            $(document).on("change", ".inp-price", function() {
                            	var that = $(this).siblings(".input-group").find(".inp-price");
                                
                                if (that.val() <= 1) {
                                    $(that).siblings(".input-group-prepend").find(".btn-decrement").attr("disabled", "disabled");
                                    totalPrice(that);
                                } else {
                                     $(that).siblings(".input-group-prepend").find(".btn-decrement").removeAttr("disabled");
                                    totalPrice(that);
                                }
                            })
                        }
                    }

                    //form style
                    $('#input-payment-telephone').mask("+38 (999) 999 99 99", { placeholder: " " });
                    var form = $("#cart-order");

                    var name = $("#input-payment-firstname").val();
                    var surname = $("#input-payment-email").val();
                    var phone = $("#input-payment-telephone").val();
                    var btn = $("#button-guest");
                    validForm(form);
                    checkParams(name, surname, phone, btn, form);
                    $('#button-guest').css({ "background": "#007DC4", "color": "#fff", "transition": ".3s" }).addClass("hoverBtn");

                    $(".content-block input").on("keyup", function() {

                        $(this).css({ "background": "#007DC4", "color": "#fff", "transition": ".3s" });
                        if ($(this).val() <= 0) {
                            $(this).css({ "background": "#fff", "color": "#000", "transition": ".3s" });
                        }
                        var name = $("#input-payment-firstname").val();
                        var surname = $("#input-payment-email").val();
                        var phone = $("#input-payment-telephone").val();
                        var btn = $("#button-guest");
                        validForm(form);
                        checkParams(name, surname, phone, btn, form);
                    });

                    //lang btn
                    $(".lang .btn").on("click", function() {
                        if (!$(this).hasClass("activeBtn")) {
                            $(this).addClass("activeBtn").siblings().removeClass("activeBtn");
                        }
                    });
                }
            },
            removalDelay: 100,
            mainClass: 'mfp-fade'
        });
    }

    // magnific popup autorization
    if ($('.ajax-popup-link-user').length > 0) {
        $('.ajax-popup-link-user').magnificPopup({
            type: 'ajax',
            closeOnContentClick: false,
            closeOnBgClick: false,
            overflowY: true,
            fixedContentPos: true,
            preloader: true,
            callbacks: {
                ajaxContentAdded: function() {
                    magnificPopup = $.magnificPopup.instance;
                    
                }
            },
            removalDelay: 100,
            mainClass: 'mfp-fade'
        });
    }

    // magnific popup search  
    if ($('.ajax-popup-search').length > 0) {
        $('.ajax-popup-search').magnificPopup({
            type: 'ajax',
            closeOnContentClick: false,
            closeOnBgClick: false,
            overflowY: true,
            fixedContentPos: true,
            preloader: true,
            callbacks: {
                ajaxContentAdded: function() {
                    magnificPopup = $.magnificPopup.instance;
                    $(".lang .btn").on("click", function() {
                        if (!$(this).hasClass("activeBtn")) {
                            $(this).addClass("activeBtn").siblings().removeClass("activeBtn");
                        }
                    });
                    var searchValue;
                    // magnific popup search-rezult
                    $("#mainSearch-form").submit(function(e) {
                        e.preventDefault();
                        searchValue = $('#mainSearch-form input[name=\'search\']').val();
                        var popupContainer = $(this).parents(".mfp-content")[0];
                        searchRezult(popupContainer, searchValue);
                    });

                }
            },
            removalDelay: 100,
            mainClass: 'mfp-fade'
        });
    }

    //registration content
    $(document).on("click", ".registration-ajax", function(e) {
        e.preventDefault();
        var popupContainer = $(this).parents(".mfp-content")[0];
        registration(popupContainer);
    })

    //enter content
    $(document).on("click", ".enter-ajax", function(e) {
        e.preventDefault();
        var popupContainer = $(this).parents(".mfp-content")[0];
        logIn(popupContainer);
    })

    //profile content
    $(document).on("click", ".profile-ajax", function(e) {
        e.preventDefault();
        var popupContainer = $(this).parents(".mfp-content")[0];
        profile(popupContainer);
    })

    if (window.location.href.indexOf("ajax-popup-link-user") > -1) {
        $('.ajax-popup-link-user').trigger('click');
    }

    //orders history content
    $(document).on("click", ".history-ajax", function(e) {
        e.preventDefault();
        var popupContainer = $(this).parents(".mfp-content")[0];
        showHistory(popupContainer);
    })

    //edit profile
    $(document).on("click", ".edit-btn", function(e) {
        e.preventDefault();
        var popupContainer = $(this).parents(".mfp-content")[0];
        profileEdit(popupContainer);
    })

    //change password
    $(document).on("click", "#changePassword", function(e) {
        e.preventDefault();
        var popupContainer = $(this).parents(".mfp-content")[0];
        changePassword(popupContainer);
    })

    //order form mobile cart
    $(document).on("click", ".toOrder", function(e) {
        e.preventDefault();
        $(this).addClass("sendForm").removeClass("toOrder");
        var popupContainer = $(this).parents(".total-block").siblings(".ajax-wrapper")[0];
        showForm(popupContainer);
    })

    //lose password
    $(document).on("click", "#losePassword", function(e) {
        e.preventDefault();

        var popupContainer = $(this).parents(".mfp-content")[0];
        losePassword(popupContainer);
    })

    function losePassword(container) {

        $(container).load("lose-password.html", function() {

            //form style
            var form = $(".enterForm");
            $(".enterForm input").on("keyup", function() {
                $(this).css({ "background": "#007DC4", "color": "#fff", "transition": ".3s" });
                if ($(this).val() <= 0) {
                    $(this).css({ "background": "#fff", "color": "#000", "transition": ".3s" });
                }

                var surname = $("#email").val();
                var password = "test";
                var phone = "test";
                var btn = $("#submitButton");
                checkParams(surname, password, phone, btn, form);

            });
            // valid
            validForm(form);

            //back in registration form
            $(document).on("click", ".returnInEnterForm", function(e) {
                var popupContainer = $(this).parents(".mfp-content")[0];
                $(popupContainer).load("enter.html", function() {

                });
            });
        });
    }

    function showForm(container) {
        $(container).load("order-form.html", function() {

            $(".toOrder").text("Заказать звонок");
            $(".cart-block h2").text("Заказ звонка");

            // form style
            var form = $(".cart-order-mobile");
            $(".phone-mobile").mask("+38 (999) 999 99 99", { placeholder: " " });
            $("#cart-order input").on("keyup", function() {
                $(this).css({ "background": "#007DC4", "color": "#fff", "transition": ".3s" });
                if ($(this).val() <= 0) {
                    $(this).css({ "background": "#fff", "color": "#000", "transition": ".3s" });
                }
                var name = $("#name").val();
                var surname = $("#email").val();
                var phone = $("#phone").val();
                var btn = $("#submitButton");

                checkParams(name, surname, phone, btn, form);


                form.validate({
                    focusCleanup: true,
                    rules: {
                        name: {
                            required: true,
                            minlength: 2
                        },
                        email: {
                            required: true,
                            email: true
                        },
                        password: {
                            required: true,
                            minlength: 6
                        },
                        repeatPassword: {
                            required: true,
                            equalTo: "#password"
                        },
                        phoneNumber: {
                            required: true
                        }
                    },
                    messages: {
                        name: {
                            required: "Укажите имя",
                            minlength: "В поле должно быть минимум 2 символа",
                        },
                        email: {
                            required: "Укажите почту",
                            email: "Адрес указан не верно"
                        },
                        password: {
                            required: "Укажите пароль",
                            minlength: "Пароль не может быть короче 6 символов"
                        },
                        repeatPassword: {
                            required: "Повторите пароль",
                            equalTo: "Пароли не совпадают"
                        },
                        phoneNumber: {
                            required: "Укажите номер телефона"
                        }
                    },
                    submitHandler: function(form) {
                        $(form).ajaxSubmit({

                            target: '.mfp-content'
                        });
                        form.reset();
                        // validatorForm.resetForm();
                    }
                });
            });

        })
    }

    function changePassword(container) {
        $(container).load("/change-password/", function() {
            //color heading
            var el = $(".colorHeading");
            el.each(function() {
                var words = $(this);
                var tagName = words.prop("tagName");
                colorWord(words, tagName);
            })

            //form style
            var form = $("#changeForm");
            $("#changeForm input").on("keyup", function() {
                $(this).css({ "background": "#007DC4", "color": "#fff", "transition": ".3s" });
                if ($(this).val() <= 0) {
                    $(this).css({ "background": "#fff", "color": "#000", "transition": ".3s" });
                }
                var surname = 'director';
                var password = $("#input-password").val();
                var phone = $("#input-confirm").val();
                var btn = $("#submitChange");
                checkParams(surname, password, phone, btn, form);
                form.validate({
                    focusCleanup: true,
                    rules: {

                        oldPassword: {
                            required: true,
                            minlength: 6
                        },
                        repeatPassword: {
                            required: true,
                            equalTo: "#newPassword"
                        },
                        newPassword: {
                            required: true,
                            minlength: 6
                        }
                    },
                    messages: {
                        oldPassword: {
                            required: "Введите пароль",
                            minlength: "Пароль не может быть короче 6 символов"
                        },
                        repeatPassword: {
                            required: "Повторите пароль",
                            equalTo: "Пароли не совпадают"
                        },
                        newPassword: {
                            required: "Введите новый пароль",
                            minlength: "Пароль не может быть короче 6 символов"
                        }
                    },
                    submitHandler: function(form) {
                        $(form).ajaxSubmit({
                            success: function(data) {
                                var el = $(".colorHeading");
                                el.each(function() {
                                    var words = $(this);
                                    var tagName = words.prop("tagName");
                                    colorWord(words, tagName);
                                })

                                function colorWord(el, tag) {

                                    var word = el.text();
                                    var arr = word.split(" ");
                                    var length = word.split(" ").length;
                                    var arr2 = arr.slice(length / 2).join(" ");
                                    var arr1 = arr.slice(0, length / 2).join(" ");
                                    el.html(arr1 + "<span class='" + tag + " ' style='color: #007DC4;'>" + " " + arr2 + "</span>");
                                }

                            },
                            target: '.mfp-content'
                        });
                        form.reset();
                    }
                });
            });
            //back
            $(document).on("click", "#back", function(e) {
                e.preventDefault();
                var popupContainer = $(this).parents(".mfp-content")[0];
                $(popupContainer).load("/my-account/", function() {

                });
            });

        });
    }

    function registration(container) {
        $(container).load("/create-account/", function() {

            //form style
            $('#input-telephone').mask("+38 (999) 999 99 99", { placeholder: " " });
            var form = $(".registrForm");
            $(".registrForm input").on("keyup", function() {
                $(this).css({ "background": "#007DC4", "color": "#fff", "transition": ".3s" });
                if ($(this).val() <= 0) {
                    $(this).css({ "background": "#fff", "color": "#000", "transition": ".3s" });
                }
                var name = $("#input-firstname").val();
                var surname = $("#input-email").val();
                var password = $("#input-password").val();
                var repeatPassword = $("#input-confirm").val();

                checkParamsReg(name, surname, password, repeatPassword, form);
            });
            //form valid

            validForm(form);

            //back in registration form
            $(document).on("click", ".back-btn", function(e) {
                var popupContainer = $(this).parents(".mfp-content")[0];
                $(popupContainer).load("/create-account/", function() {

                });
            });

            $('.registrForm').submit(function(){
                $.ajax({
                    type: 'POST',
                    success: function(){
                        console.log('form submitted.');
                        $('#exit').trigger('click');
                        $('#new_customer_popup h3 span').html($("#input-firstname").val());
                        var i = 0;
                        setTimeout(function () {
                            $('#new_customer').magnificPopup({
                                type: 'inline'
                            });
                            if (i == 0) {
                                $('#new_customer').trigger('click');
                                i++;
                            }
                        }, 1000);

                    }
                });
                return false;
            });
        });
    }

    function logIn(container) {
        //$(container).load("enter.html", function() {
        $('.popup-wrapper').hide();
        $('.well').css('display', 'flex');
            //form style
            var form = $(".enterForm");
            $(".enterForm input").on("keyup", function() {
                $(this).css({ "background": "#007DC4", "color": "#fff", "transition": ".3s" });
                if ($(this).val() <= 0) {
                    $(this).css({ "background": "#fff", "color": "#000", "transition": ".3s" });
                }
                localStorage['input-email'] = $("#input-email").val();
                console.log(localStorage['firstname']);
                var surname = $("#input-email").val();
                var password = $("#input-password").val();
                var phone = "test";
                var btn = $("#submitButton");
                checkParams(surname, password, phone, btn, form);

            });
            // valid
            validForm(form);

            //back in registration form
            $(document).on("click", ".back-btn", function(e) {
                var popupContainer = $(this).parents(".mfp-content")[0];
                $(popupContainer).load("/login/", function() {

                });
            });

        $('.enterForm').submit(function(){
            $.ajax({
                type: 'POST',
                success: function(){
                    console.log('form submitted');
                    $('#exit').trigger('click');
                    $('#login_popup h3 span').html(' ' + localStorage['input-email']);
                    var i = 0;
                    setTimeout(function () {
                        $('#loginpop').magnificPopup({
                            type: 'inline'
                        });
                        if (i == 0) {
                            $('#loginpop').trigger('click');
                        }
                    }, 1000);
                    $('.popup-wrapper').css('display', 'flex');
                }
            });
            return false;
        });
        //});
    }

    function profile(container) {

        $(container).load("/my-account/", function() {

            //log out
            /*$(document).on("click", "#logOut", function(e) {
                var popupContainer = $(this).parents(".mfp-content")[0];
                $(popupContainer).load("/login/", function() {

                });
            });*/


        });
    }

    function profileEdit(container) {

        $(container).load("/edit-account/", function() {
            //profile photo preview

            $("#userPhoto").on("click", handleFileSelect);

            function handleFileSelect(evt) {

                    var node = this;

                    $('#form-upload').remove();

                    $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

                    $('#form-upload input[name=\'file\']').trigger('click');

                    if (typeof timer != 'undefined') {
                        clearInterval(timer);
                    }

                    timer = setInterval(function () {
                        if ($('#form-upload input[name=\'file\']').val() != '') {
                            clearInterval(timer);

                            $.ajax({
                                url: 'index.php?route=tool/upload',
                                type: 'post',
                                dataType: 'json',
                                data: new FormData($('#form-upload')[0]),
                                cache: false,
                                contentType: false,
                                processData: false,
                                beforeSend: function () {
                                    $(node).button('loading');
                                },
                                complete: function () {
                                    $(node).button('reset');
                                },
                                success: function (json) {
                                    $(node).parent().find('.text-danger').remove();

                                    if (json['error']) {
                                        $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
                                    }

                                    if (json['success']) {
                                        //alert(json['success']);

                                        $('input[name="custom_field[1]"]').val(json['code']);
                                        //console.log(json['code']);
                                        //$('.edit-profile-form').submit();
                                        $('.userPhoto-block img').attr('src', '/system/storage/upload/' + json['file']);
                                    }
                                },
                                error: function (xhr, ajaxOptions, thrownError) {
                                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                                }
                            });
                        }
                    }, 500);


                /*var file = evt.target.files; // FileList object
                var f = file[0];
                // Only process image files.
                if (!f.type.match('image.*')) {
                    alert("Image only please....");
                }
                var reader = new FileReader();
                // Closure to capture the file information.
                reader.onload = (function(theFile) {
                    return function(e) {
                        // Render thumbnail.
                        $(".photo").attr("src", e.target.result);
                    };
                })(f);
                // Read in the image file as a data URL.
                reader.readAsDataURL(f);*/
            }
            if ($('#phone').length > 0) {

                $('#phone').mask("+38 (999) 999 99 99", { placeholder: " " });
            }
            //log out
            /*$(document).on("click", "#logOut", function(e) {
                var popupContainer = $(this).parents(".mfp-content")[0];
                $(popupContainer).load("/login/", function() {

                });
            });*/
            $('#edit-sbm').click(function () {
                console.log('edit');
                var popupContainer = $(this).parents(".mfp-content")[0];
                $.ajax({
                    url: 'index.php?route=ajax/index/ajaxEditProfile',
                    type: 'post',
                    data: {
                        'firstname' : $('input[name="firstname"]').val(),
                        'telephone' : $('input[name="telephone"]').val(),
                        'custom_field[1]' : $('input[name="custom_field[1]"]').val(),
                        'custom_field[2]' : $('input[name="custom_field[2]"]').val(),
                        'email' : $('input[name="email"]').val(),
                        'newsletter' : $('input[name="newsletter"]').val()
                    },
                    success: function(data) {
                        profile(popupContainer);
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
                return false;
            });
        });
    }

    function showHistory(container) {
        $(container).load("/order-history/", function() {


            if ($(".orders-history-block").length > 0) {

                //scroll style
                $(".popup-content").mCustomScrollbar({
                    axis: "y",
                    theme: "my-theme",
                    scrollInertia: 200
                });

                //status block 
                var status = $(".status-block");
                status.each(function() {
                    if ($(this).hasClass("Shipped") || $(this).hasClass("Доставлено")) {
                        $(this).find("p").text("ДОСТАВЛЕНО");
                    } else if ($(this).hasClass("Pending") || $(this).hasClass("Ожидание")) {
                        $(this).find("p").text("ПОДГОТОВКА К ОТПРАВКЕ");
                    } else if ($(this).hasClass("Complete") || $(this).hasClass("Сделка завершена")) {
                        $(this).find("p").text("ОТПРАВЛЕНО");
                    }
                })

                $(".order-discription").on("show.bs.collapse", function() {
                    $(this).parent().css({ "box-shadow": "0px 0px 15px -7px rgba(0, 0, 0, 0.5)" })

                    if ($(window).width() <= 480) {
                        $(this).siblings().find(".status-block").css({
                            "height": "183px",
                            "margin-top": "138px",
                            "transition": ".3s"
                        })
                    } else if ($(window).width() <= 640) {
                        $(this).siblings().find(".status-block").css({
                            "height": "170px",
                            "margin-top": "125px",
                            "transition": ".3s"
                        })
                    } else if ($(window).width() <= 760) {
                        $(this).siblings().find(".status-block").css({
                            "height": "220px",
                            "margin-top": "160px",
                            "transition": ".3s"
                        })
                    } else if ($(window).width() <= 768) {
                        $(this).siblings().find(".status-block").css({
                            "height": "237px",
                            "margin-top": "177px",
                            "transition": ".3s"
                        })
                    } else {
                        $(this).siblings().find(".status-block").css({
                            "height": "305px",
                            "margin-top": "245px",
                            "transition": ".3s"
                        })
                    }
                    $(this).siblings(".order-header").find(".arrow").css({
                        "transform": "rotateX(180deg)"
                    });

                    $(this).siblings().find(".status-block p").text("СТАТУС");
                    if ($(this).siblings().find(".status-block").hasClass("Shipped") || $(this).siblings().find(".status-block").hasClass("Доставлено")) {
                        $(this).siblings().find(".status-block").css("background", "#007DC4");
                        $(this).siblings().find(".status-block").append("<img src='catalog/view/theme/technaton/img/delivered.png'>");
                    } else if ($(this).siblings().find(".status-block").hasClass("Pending") || $(this).siblings().find(".status-block").hasClass("Ожидание")) {
                        $(this).siblings().find(".status-block").css("background", "#D95050");
                        $(this).siblings().find(".status-block").append("<img src='catalog/view/theme/technaton/img/delivery-package-opened.png'>");
                        // $(this).siblings().find(".status-block").append("<p class='a preparation-title'>ПОДГОТОВКА<br> К ОТПРАВКЕ</p>");
                        $(this).siblings().find(".status-block").append("<p class='delivery-date'></p>");
                    } else if ($(this).siblings().find(".status-block").hasClass("Complete") || $(this).siblings().find(".status-block").hasClass("Сделка завершена")) {
                        $(this).siblings().find(".status-block").css("background", "#4FC179");
                        $(this).siblings().find(".status-block").append("<img src='catalog/view/theme/technaton/img/tracking.png'>");
                        // $(this).siblings().find(".status-block").append("<p class='a preparation-title'>ОТПРАВЛЕНО</p>");
                        $(this).siblings().find(".status-block").append("<p class='sent-date'></p>");
                    }




                    //scroll style
                    $(".order-list-history").mCustomScrollbar({
                        axis: "y",
                        theme: "my-theme",
                        scrollInertia: 200
                    });
                });



                $(".order-discription").on("hide.bs.collapse", function() {
                    $(this).parent().css({ "box-shadow": "none" })
                    if ($(window).width() <= 640) {
                        $(this).siblings().find(".status-block").css({
                            "height": "45px",
                            "margin-top": "0px",
                            "transition": ".3s"
                        })
                    } else {
                        $(this).siblings().find(".status-block").css({
                            "height": "60px",
                            "margin-top": "0px",
                            "transition": ".3s"
                        })

                    }

                    $(this).siblings(".order-header").find(".arrow").css({
                        "transform": "rotateX(0deg)"
                    });
                    if ($(this).siblings().find(".status-block").hasClass("Shipped") || $(this).siblings().find(".status-block").hasClass("Доставлено")) {
                        $(this).siblings().find(".status-block p").text("ДОСТАВЛЕНО");
                        $(this).siblings().find(".status-block img").remove();
                        $(this).siblings().find(".status-block").css("background", "url(catalog/view/theme/technaton/img/delivered.svg) #007DC4 no-repeat");
                    } else if ($(this).siblings().find(".status-block").hasClass("Pending") || $(this).siblings().find(".status-block").hasClass("Ожидание")) {
                        $(this).siblings().find(".status-block").css("background", "url(catalog/view/theme/technaton/img/prepearing.svg) #D95050 no-repeat");
                        $(this).siblings().find(".status-block p").text("ПОДГОТОВКА К ОТПРАВКЕ");
                        $(this).siblings().find(".status-block img").remove();
                        $(this).siblings().find(".status-block .preparation-title").remove();
                        $(this).siblings().find(".status-block .delivery-date").remove();
                    } else if ($(this).siblings().find(".status-block").hasClass("Complete") || $(this).siblings().find(".status-block").hasClass("Сделка завершена")) {
                        $(this).siblings().find(".status-block").css("background", "url(catalog/view/theme/technaton/img/sent.svg) #4FC179 no-repeat");
                        $(this).siblings().find(".status-block p").text("ОТПРАВЛЕНО");
                        $(this).siblings().find(".status-block img").remove();
                        $(this).siblings().find(".status-block .preparation-title").remove();
                        $(this).siblings().find(".status-block .sent-date").remove();
                    }
                });
                var i = 0;
                //back to profile
                $(document).on("click", ".return", function(e) {
                    e.preventDefault();
                    console.log('return');
                    console.log(i);
                    if (i == 0) {
                        $(this).parents(".mfp-content").load("/my-account/", function() {});
                        i++;
                    }

                });
            };


            //price in history orders
            /*if ($(".orders-history-block").length > 0) {
                var orders = $(".order-item");
                orders.each(function() {
                    var order = $(this).find("li");
                    var totalSum = 0;
                    order.each(function() {
                        var cost = parseInt($(this).find(".cost").text());
                        var num = parseInt($(this).find(".amount").text());
                        var sum = num * cost;
                        $(this).find(".value").text(sum + " грн");
                        var value = $(this).find(".value").text();
                        totalSum += parseInt(value);

                    })
                    $(this).find(".total-price-num").text(totalSum + " грн");

                });

            }*/


            //log out
           /* $(document).on("click", "#logOut", function(e) {
                var popupContainer = $(this).parents(".mfp-content")[0];
                $(popupContainer).load("/login/", function() {

                });
            });*/

        });
    }

    function searchRezult(container, val) {
        $(container).load($('base').attr('href') + 'index.php?route=product/search&search=' + encodeURIComponent(val) , function() {
            //lang btn
            $(".lang .btn").on("click", function() {
                if (!$(this).hasClass("activeBtn")) {
                    $(this).addClass("activeBtn").siblings().removeClass("activeBtn");
                }
            });
            // response news
            if ($(".news-page").length > 0) {
                if ($(window).width() <= 1024) {
                    $(".smallNews").each(function() {
                        $(this).addClass("big-news");
                    });
                } else {
                    $(".smallNews").each(function() {
                        $(this).removeClass("big-news");
                    });
                }

                $(window).resize(function() {
                    if ($(window).width() <= 1024) {
                        $(".smallNews").each(function() {
                            $(this).addClass("big-news");
                        });
                    } else {
                        $(".smallNews").each(function() {
                            $(this).removeClass("big-news");
                        });
                    }
                });
            }
            // search request 
            $("#search").val(val);
            $('nav[aria-label="News navigation"] a').on('click', function () {
                console.log('news pagination');
                let $this = $(this);
                console.log($this[0].innerHTML);
                $.ajax({
                    url: 'index.php?route=ajax/index/ajaxGetNews',
                    type: 'get',
                    data: 'page=' + $this[0].innerHTML,
                    success: function(data) {
                        console.log(data);
                        $('.news-block').html(data);
                        $this.parent().siblings().removeClass('active');
                        $this.parent().addClass('active');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
                return false;
            });

            $('nav[aria-label="Shop navigation"] a').on('click', function () {
                console.log('shop pagination');
                let $this = $(this);
                console.log($this[0].innerHTML);
                $.ajax({
                    url: 'index.php?route=ajax/index/ajaxGetProducts',
                    type: 'get',
                    data: 'page=' + $this[0].innerHTML + '&search=' + $('input[name="search"]').val(),
                    success: function(data) {
                        console.log(data);
                        $('.wrapper-tems.w30').html(data);
                        $this.parent().siblings().removeClass('active');
                        $this.parent().addClass('active');
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
                return false;
            });
        });
    }

    //exit popup
    $(document).on("click", "#exit", function(e) {
        e.preventDefault();
        //window.history.back();
        magnificPopup = $.magnificPopup.instance;
        magnificPopup.close();
    });

    //style form functions
    function checkParams(name, surname, phone, btn, form) {

        if (name.length > 0 && surname.length > 0 && phone.length > 0 && form.valid()) {
            $('btn').removeAttr("disabled");
            $('btn').css({ "background": "#007DC4", "color": "#fff", "transition": ".3s" }).addClass("hoverBtn");
        } else {
            $('btn').attr("disabled", "disabled");
            $('btn').css({ "background": "#B2B2B2", "color": "#6A6A6A", "transition": ".3s" }).removeClass("hoverBtn");
        }

        // submit for cart-order mobile
        $(document).on("click", ".sendForm", function(e) {
            e.preventDefault();

            if (form.valid()) {
                form.submit();
            }
        });
    };

    function checkParamsReg(name, surname, password, repeatPassword, form) {

        if (name.length > 0 && surname.length > 0 && password.length > 0 && repeatPassword.length && form.valid()) {
            $("#submitButton").removeAttr("disabled");
            $("#submitButton").css({ "background": "#007DC4", "color": "#fff", "transition": ".3s" }).addClass("hoverBtn");
        } else {
            $("#submitButton").attr("disabled", "disabled");
            $("#submitButton").css({ "background": "#B2B2B2", "color": "#6A6A6A", "transition": ".3s" }).removeClass("hoverBtn");
        }
    };

    // valid forms function
    function validForm(form) {

        form.validate({
            focusCleanup: true,
            rules: {
                name: {
                    required: true,
                    minlength: 2
                },
                phone: "required",
                email: {
                    required: true,
                    email: true
                },
                password: {
                    required: true,
                    minlength: 6
                },
                repeatPassword: {
                    required: true,
                    equalTo: "#password"
                },
                phone: {
                    required: true
                }
            },
            messages: {
                name: {
                    required: "Укажите имя",
                    minlength: "В поле должно быть минимум 2 символа",
                },
                email: {
                    required: "Укажите почту",
                    email: "Адрес указан не верно"
                },
                password: {
                    required: "Укажите пароль",
                    minlength: "Пароль не может быть короче 6 символов"
                },
                repeatPassword: {
                    required: "Повторите пароль",
                    equalTo: "Пароли не совпадают"
                },
                phone: {
                    required: "Укажите номер телефона"
                }
            },
            submitHandler: function(form) {
                $(form).ajaxSubmit({
                    success: function(data) {
                        console.log('ajax');

                        var el = $(".colorHeading");
                        el.each(function() {
                            var words = $(this);
                            var tagName = words.prop("tagName");
                            colorWord(words, tagName);
                        })

                        function colorWord(el, tag) {

                            var word = el.text();
                            var arr = word.split(" ");
                            var length = word.split(" ").length;
                            var arr2 = arr.slice(length / 2).join(" ");
                            var arr1 = arr.slice(0, length / 2).join(" ");
                            el.html(arr1 + "<span class='" + tag + " ' style='color: #007DC4;'>" + " " + arr2 + "</span>");
                        }

                    },
                    target: '.mfp-content'
                });

                form.reset();
                //if (feedback_fields == 3) {
                    console.log(feedback_fields);
                    $("#submitButton").before('<p class="green">Успешно отправлено</p>').remove();
                //}
                // validatorForm.resetForm();
            }
        });
    }



});