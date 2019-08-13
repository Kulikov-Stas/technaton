<?php if ($articles) { ?>
    <?php foreach ($articles as $article) { ?>
        <div class="oneNews smallNews">
            <div class="news-img" style="background-image: url(/image/<?php if ($article['image']) echo $article['image'][0]['image']; ?>);"></div>
            <div class="news-discription">
                <div class="data-block">
                    <a href="<?php echo $article['href']; ?>" class="p"><?php echo $article['date']; ?></a>
                    <p> &#8212; <?php echo $article['speed']; ?> мин. на чтение</p>
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