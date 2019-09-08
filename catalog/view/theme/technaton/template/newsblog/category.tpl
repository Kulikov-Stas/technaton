<?php echo $header; ?>
    <style>
        .news-wrapper .heading-block h2::before {
            content: "<?php echo $heading_title; ?>";
        }
    </style>
    <main>
        <section>
            <div class="container">
                <div class="row">
                    <div class="news-wrapper news-page">
                        <div class="heading-block ">
                            <h2><?php echo $heading_title; ?></h2>
                            <div class="sort-block">
                                <form class="form-inline">
                                    <select name="category" id="category">
                                        <option value="spareParts">По популярности</option>
                                    </select>
                                    <button class="btn search-btn" type="button">
                                        <a href="/search-form/" class="ajax-popup-search">
                                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="74" height="49" viewBox="0 0 74 49">
                                                <defs>
                                                    <clipPath id="clip-path">
                                                        <rect width="74" height="49" fill="none" />
                                                    </clipPath>
                                                </defs>
                                                <use xlink:href="#search_news_" x="0" y="0" />
                                            </svg>
                                        </a>
                                    </button>
                                </form>
                            </div>
                        </div>
                        <div class="news-block">
                            <?php if ($articles) {
                                $i = 0;
                                ?>
                                    <?php foreach ($articles as $article) { ?>
                                    <div class="oneNews<?php if ($i === 0) echo ' big-news'; else echo ' smallNews'; ?>">
                                        <div class="news-img" style="background-image: url(/image/<?php if ($article['image']) echo $article['image'][0]['image']; ?>);"></div>
                                        <div class="news-discription">
                                            <div class="data-block">
                                                <a href="<?php echo $article['href']; ?>" class="p"><?php echo $article['date']; ?></a>
                                                <p> &#8212; <?php echo $article['speed']; ?> <?php echo $text_speed; ?></p>
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
                                            <a href="<?php echo $article['href']; ?>" class="news-link button"><?php echo $button_continue; ?></a>
                                        </div>
                                    </div>
                                    <?php $i++;
                                    } ?>
                            <?php } ?>
                        </div>


                            <?php if (!$categories && !$articles) { ?>
                                <p><?php echo $text_empty; ?></p>
                                <div class="buttons">
                                    <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
                                </div>
                            <?php } ?>


                    </div>
                </div>
            </div>
        </section>
        <section class="paganation-main">
            <div class="container">
                <div class="row">
                    <div class="paganation-wrapper">
                        <nav aria-label="News navigation">
                            <?php echo $pagination; ?>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        <?php require("catalog/view/theme/technaton/template/common/feedback.tpl"); ?>
        <?php require("catalog/view/theme/technaton/template/common/operator.tpl"); ?>
    </main>


      <?php if ($thumb || $description) { ?>
      <div class="row">
        <?php if ($thumb) { ?>
        <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
        <?php } ?>
        <?php if ($description) { ?>
        <div class="col-sm-10"><?php echo $description; ?></div>
        <?php } ?>
      </div>
      <hr>
      <?php } ?>
      <?php if ($categories) { ?>
      <h3><?php echo $text_refine; ?></h3>
      <?php if (count($categories) <= 5) { ?>
      <div class="row">
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php } else { ?>
      <div class="row">
        <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <?php } ?>

      <?php if ($comments_vk) { ?>
      <div class="row">
        <div class="col-md-12">
			<div id="vk_comments"></div>
			<script type="text/javascript">
			VK.init({apiId: <?php echo $comments_vk; ?>, onlyWidgets: true});
			VK.Widgets.Comments("vk_comments", {limit: 10, attach: "*"});
			</script>
        </div>
      </div>
      <?php } ?>

      <?php if ($comments_fb) { ?>
      <div class="row">
        <div class="col-md-12">
            <div id="fb-root"></div>
			<script>(function(d, s, id) {
			  var js, fjs = d.getElementsByTagName(s)[0];
			  if (d.getElementById(id)) return;
			  js = d.createElement(s); js.id = id;
			  js.src = "//connect.facebook.net/ru_RU/sdk.js#xfbml=1&version=v2.10";
			  fjs.parentNode.insertBefore(js, fjs);
			}(document, 'script', 'facebook-jssdk'));</script>
			<div class="fb-comments" data-href="<?php echo $canonical; ?>" data-width="100%" data-numposts="10"></div>
        </div>
      </div>
      <?php } ?>

      <?php if ($comments_dq) { ?>
      <div class="row">
        <div class="col-md-12">
        	<div id="disqus_thread"></div>
			<script>
			var disqus_config = function () {
				this.page.url = "<?php echo $canonical; ?>";
			};

			(function() { // DON'T EDIT BELOW THIS LINE
			var d = document, s = d.createElement('script');
			s.src = 'https://<?php echo $comments_dq; ?>.disqus.com/embed.js';
			s.setAttribute('data-timestamp', +new Date());
			(d.head || d.body).appendChild(s);
			})();
			</script>
			<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
        </div>
      </div>
      <?php } ?>

<?php echo $footer; ?>