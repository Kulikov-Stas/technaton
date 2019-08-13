<div class="heading-block open-catalog-heading pt-0">
    <!--<h1><?php /*echo $heading_title; */?></h1>
    <?php /*if ($thumb || $description) { */?>
        <div class="row">
            <?php /*if ($thumb) { */?>
                <div class="col-sm-2"><img src="<?php /*echo $thumb; */?>" alt="<?php /*echo $heading_title; */?>" title="<?php /*echo $heading_title; */?>" class="img-thumbnail" /></div>
            <?php /*} */?>
            <?php /*if ($description) { */?>
                <div class="col-sm-10"><?php /*echo $description; */?></div>
            <?php /*} */?>
        </div>
        <hr>
    --><?php /*} */?>
    <!--<div class="col-md-2 col-sm-6 hidden-xs">
        <div class="btn-group btn-group-sm">
            <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php /*echo $button_list; */?>"><i class="fa fa-th-list"></i></button>
            <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php /*echo $button_grid; */?>"><i class="fa fa-th"></i></button>
        </div>
    </div>
    <div class="col-md-3 col-sm-6">
        <div class="form-group">
            <a href="<?php /*echo $compare; */?>" id="compare-total" class="btn btn-link"><?php /*echo $text_compare; */?></a>
        </div>
    </div>-->
    <form class="form-inline search-form mobile-show" onsubmit="return false">
        <div class="input-group">
            <div class="input-group-prepend">
                <button class="btn search-btn" type="submit">
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="74" height="49" viewBox="0 0 74 49">
                        <defs>
                            <clipPath id="clip-path">
                                <rect width="74" height="49" fill="none" />
                            </clipPath>
                        </defs>
                        <use xlink:href="#search_news_" x="0" y="0" />
                    </svg>
                </button>
            </div>
            <input type="text" id="page-search" class="form-control" placeholder="Поиск по каталогу">
        </div>
    </form>
    <h2><?php echo $heading_title; ?></h2>


    <div class="form-wrapper catalog-mobile-form">
        <div class="search-input">
            <button class="btn search-btn" type="submit">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 29.259 30.306">
                    <use xlink:href="#searchBtn" x="0" y="0" />
                </svg>
            </button>
            <input type="text" class="form-control" placeholder="Поиск" autofocus>
        </div>
        <select name="category" id="category">
            <option value="spareParts">Запчасти</option>
            <option value="instruments">Инструменты</option>
            <option value="consumables">Расходники</option>
            <option value="other">Дополнительно</option>
        </select>
    </div>


    <div class="icon-block<?php if (!isset($sorts)) echo ' invisible'; ?>">
        <div class="w30 active">
            <svg xmlns="http://www.w3.org/2000/svg" width="27.744" height="27.745" viewBox="0 0 27.744 27.745">
                <g id="Group_16" data-name="Group 16" transform="translate(-1741 -1069)">
                    <rect id="Rectangle_34" data-name="Rectangle 34" width="7.745" height="7.745" transform="translate(1741 1069)" fill="#bebebe" />
                    <rect id="Rectangle_36" data-name="Rectangle 36" width="7.745" height="7.745" transform="translate(1751 1069)" fill="#bebebe" />
                    <rect id="Rectangle_37" data-name="Rectangle 37" width="7.745" height="7.745" transform="translate(1761 1069)" fill="#bebebe" />
                    <rect id="Rectangle_38" data-name="Rectangle 38" width="7.745" height="7.745" transform="translate(1761 1079)" fill="#bebebe" />
                    <rect id="Rectangle_43" data-name="Rectangle 43" width="7.745" height="7.745" transform="translate(1761 1089)" fill="#bebebe" />
                    <rect id="Rectangle_39" data-name="Rectangle 39" width="7.745" height="7.745" transform="translate(1751 1079)" fill="#bebebe" />
                    <rect id="Rectangle_42" data-name="Rectangle 42" width="7.745" height="7.745" transform="translate(1751 1089)" fill="#bebebe" />
                    <rect id="Rectangle_40" data-name="Rectangle 40" width="7.745" height="7.745" transform="translate(1741 1079)" fill="#bebebe" />
                    <rect id="Rectangle_41" data-name="Rectangle 41" width="7.745" height="7.745" transform="translate(1741 1089)" fill="#bebebe" />
                </g>
            </svg>
        </div>
        <div class="w50">
            <svg xmlns="http://www.w3.org/2000/svg" width="28.475" height="27.744" viewBox="0 0 28.475 27.744">
                <g id="Group_15" data-name="Group 15" transform="translate(-1740.999 -1069)">
                    <rect id="Rectangle_32" data-name="Rectangle 32" width="11.682" height="11.682" transform="translate(1757.793 1085.063)" fill="#bebebe" />
                    <rect id="Rectangle_33" data-name="Rectangle 33" width="11.682" height="11.682" transform="translate(1741 1085.063)" fill="#bebebe" />
                    <rect id="Rectangle_34" data-name="Rectangle 34" width="11.682" height="11.682" transform="translate(1741 1069)" fill="#bebebe" />
                    <rect id="Rectangle_35" data-name="Rectangle 35" width="11.682" height="11.682" transform="translate(1757.793 1069)" fill="#bebebe" />
                </g>
            </svg>
        </div>
        <div class="w100">
            <svg xmlns="http://www.w3.org/2000/svg" width="28.682" height="27.682" viewBox="0 0 28.682 27.682">
                <g id="Group_17" data-name="Group 17" transform="translate(-1740.999 -1069)">
                    <rect id="Rectangle_34" data-name="Rectangle 34" width="28.682" height="18.682" transform="translate(1741 1069)" fill="#bebebe" />
                    <rect id="Rectangle_44" data-name="Rectangle 44" width="28.682" height="3.682" transform="translate(1741 1093)" fill="#bebebe" />
                </g>
            </svg>
        </div>
    </div>
    <div class="sort-block<?php if (!isset($sorts)) echo ' invisible'; ?>">
        <form class="form-inline">
            <select id="input-sort" class="form-control" onchange="location = this.value;">
                <?php foreach ($sorts as $sorts) { ?>
                    <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                    <?php } else { ?>
                        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                    <?php } ?>
                <?php } ?>
            </select>
        </form>
    </div>
</div>