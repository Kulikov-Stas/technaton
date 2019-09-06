<div class="cart-popup-block search-rezult">
    <section class="main-menu">
        <div class="container">
            <div class="row">
                <div class="menu">
                    <nav class="navbar pl-0 pr-0">
                        <div class="menuIconBlock pull-right w-auto">
                            <div class="shopping-btn">
                                <a href="#">
                                    <svg id="exit" xmlns="http://www.w3.org/2000/svg" width="63.229" height="49" viewBox="0 0 63.229 49">
                                        <rect id="Rectangle_77" data-name="Rectangle 77" width="63.229" height="49" fill="#007dc4" />
                                        <path id="Path_80" data-name="Path 80" d="M3.7-28.655l6.153,8.046.316.592.316-.592,6.153-8.046H19.52L11.671-18.321,19.52-8.106H16.641l-6.153-8.007-.316-.552-.316.552L3.7-8.106H.825L8.674-18.321.825-28.655Z" transform="translate(21.916 43.053)" fill="#fff" />
                                    </svg>
                                </a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <form action="" id="searchOpen-form">
                    <input type="text" name="search" id="search" placeholder="поисковый запрос" autofocus="autofocus" >
                </form>
            </div>
        </div>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="catalog-wrapper">
                    <div class="heading-block">
                        <h2><?php echo $text_shop; ?></h2>
                    </div>

                    <div class="content-block">
                        <div class="wrapper-tems w30">
                            <?php if ($products) { ?>
                                <?php foreach ($products as $product) { ?>
                                    <div class="catalog-item">
                                        <div class="img-wrapper">
                                            <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />
                                        </div>
                                        <div class="discription-wrapper">
                                            <h3 class="a"><?php echo $product['name']; ?></h3>
                                            <p><?php echo $product['description']; ?></p>
                                        </div>
                                        <a href="<?php echo $product['href']; ?>">Выбрать</a>
                                    </div>
                                <?php } ?>
                            <?php } ?>

                            <?php if (!$products) { ?>
                                <p><?php echo $text_empty; ?></p>
                            <?php } ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="paganation-wrapper">
                    <nav aria-label="Shop navigation">
                        <?php echo $product_pagination; ?>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="news-wrapper news-page">
                    <div class="heading-block ">
                        <h2><?php echo $text_news; ?></h2>
                    </div>
                    <div class="news-block">
                        <?php if ($articles) { ?>
                            <?php foreach ($articles as $article) { ?>
                                <div class="oneNews smallNews">
                                    <div class="news-img" style="background-image: url(/image/<?php if ($article['image']) echo $article['image'][0]['image']; ?>);"></div>
                                    <div class="news-discription">
                                        <div class="data-block">
                                            <a href="<?php echo $article['href']; ?>" class="p"><?php echo $article['date']; ?></a>
                                            <p> &#8212; <?php echo $article['speed']; ?> мин. на чтение</p>
                                            <?php /*if ($article['attributes']) { */?><!--
                                                    <h5><?php /*echo $text_attributes;*/?></h5>
                                                    <?php /*foreach ($article['attributes'] as $attribute_group) { */?>
                                                        <?php /*foreach ($attribute_group['attribute'] as $attribute_item) { */?>
                                                            <b><?php /*echo $attribute_item['name'];*/?>:</b> <?php /*echo $attribute_item['text'];*/?><br />
                                                        <?php /*} */?>
                                                    <?php /*} */?>
                                                --><?php /*} */?>
                                        </div>
                                        <div class="oneNews-heading">
                                            <h3 class="colorHeading"><?php echo $article['name']; ?></h3>
                                        </div>
                                        <div class="news-text">
                                            <p><?php echo $article['preview']; ?></p>
                                        </div>
                                        <a href="<?php echo $article['href']; ?>" class="news-link button">Подробнее</a>
                                    </div>
                                </div>
                                <?php $i++;
                            } ?>
                        <?php } ?>
                    </div>
                    <?php if (!$articles) { ?>
                        <div class="content-block">
                            <div class="wrapper-tems w30">
                                <p><?php echo $text_empty; ?></p>
                            </div>
                        </div>
                    <?php } ?>
                </div>
            </div>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="paganation-wrapper">
                    <nav aria-label="News navigation">
                        <?php if (isset($articles)) echo $news_pagination; ?>
                    </nav>
                </div>
            </div>
        </div>
    </section>
</div>