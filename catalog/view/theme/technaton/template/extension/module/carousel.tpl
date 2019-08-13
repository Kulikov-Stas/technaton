<?php if ((int)$module === 1) { ?>
    <div class="carousel-two-wrapper">
        <div class="owl-carousel-two">
<?php } ?>

            <div id="carousel<?php echo $module; ?>" class="owl-carousel">
              <?php foreach ($banners as $banner) { ?>
              <div class="item text-center">
                <?php if ($banner['link']) { ?>
                  <?php if ((int)$module !== 1) { ?><a href="<?php echo $banner['link']; ?>"><?php } ?>
                      <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
                  <?php if ((int)$module !== 1) { ?></a><?php } ?>
                <?php } else { ?>
                <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
                <?php } ?>
              </div>
              <?php } ?>
            </div>

<?php if ((int)$module === 1) { ?>
        </div>
    </div>
<?php } ?>

<?php if ((int)$module === 1) { ?>
    <div class="carousel-third-wrapper">
        <div class="owl-carousel-third">
            <?php foreach ($banners as $banner) { ?>
            <div class="sliderItem">
                <img class="discription-img" src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>">
                <button class="back-btn"></button>
                <h2><?php echo $banner['title']; ?></h2>
                <?php echo $banner['text']; ?>
                <a href="<?php echo $banner['link']; ?>" class="news-link button">Перейти</a>
            </div>
            <?php } ?>
        </div>
    </div>
<?php } ?>
<script type="text/javascript"><!--
$('#carousel<?php echo $module; ?>').owlCarousel({
	items: 6,
	autoPlay: 3000,
	navigation: true,
	navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
	pagination: true
});
--></script>