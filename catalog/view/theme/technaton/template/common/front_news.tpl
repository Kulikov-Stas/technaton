<style>
    .news-wrapper .heading-block h2::before {
        content: "<?php echo $text_news; ?>";
    }
</style>
<section class="mainPage-news pt-30">
    <div class="container">
        <div class="row">
            <div class="news-wrapper">
                <div class="heading-block">
                    <h2><?php echo $text_news; ?></h2>
                </div>
                <div class="news-block">
                    <?php if ($articles) {
                        $i = 0;
                        ?>
                        <?php foreach ($articles as $article) { ?>
                            <div class="oneNews<?php if ($i === 0) echo ' big-news'; else echo ' smallNews';  ?>">
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
            </div>
        </div>
    </div>
</section>
<section class="paganation-main">
    <div class="container">
        <div class="row">
            <div class="paganation-wrapper">
                <nav aria-label="News navigation">
                    <?php echo $news_pagination; ?>
                </nav>
            </div>
        </div>
    </div>
</section>