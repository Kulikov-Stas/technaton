    <div class="accordeon-wrapper">
        <div id="accordion" role="tablist" aria-multiselectable="true">
            <?php foreach ($categories as $key => $category) { ?>
                <div class="panel panel-default<?php if ($key === 0) echo " active"; ?>">
                    <div class="panel-heading" role="tab" id="heading<?php echo $numbers[$key]; ?>">
                        <button class="btn accordeon-btn" data-toggle="collapse" data-target="#collapse<?php echo $numbers[$key]; ?>" aria-expanded="false" aria-controls="collapse<?php echo $numbers[$key]; ?>">
                            <div class="icon-btn-wrapper">
                                <?php if (isset($icons[$key])) echo $icons[$key]; ?>
                                <?php echo mb_strtoupper($category['name']); ?>
                            </div>
                            <svg class="arrow" xmlns="http://www.w3.org/2000/svg" width="15" height="10" viewBox="0 0 13.592 7.18">
                                <g class="next" transform="translate(6.592 -113.556) rotate(90)">
                                    <path id="Path_6" data-name="Path 6" d="M119.625,6.525,113.213.113a.385.385,0,0,0-.544.544L118.807,6.8l-6.138,6.138a.386.386,0,0,0,.271.658.375.375,0,0,0,.271-.114l6.412-6.412A.383.383,0,0,0,119.625,6.525Z" transform="translate(1 -7)" fill="#fff" />
                                </g>
                            </svg>
                        </button>
                    </div>
                    <div id="collapse<?php echo $numbers[$key]; ?>" class="panel-collapse collapse<?php if ($key === 0) echo " show"; ?>" data-parent="#accordion" role="tabpanel" aria-labelledby="heading<?php echo $numbers[$key]; ?>">
                        <ul>
                            <?php foreach ($category['manufacturer'] as $manufacturer) {
                                if (isset($manufacturer['url']) && isset($manufacturer['name'])) { ?>
                                <li><a class="p" href="<?php echo $category['href'] . '?brand=' . $manufacturer['manufacturer_id']; ?>"><?php echo $manufacturer['name']; ?></a></li>
                            <?php }
                                } ?>
                        </ul>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
<!--<div class="list-group">
  <?php /*foreach ($categories as $category) { */?>
  <?php /*if ($category['category_id'] == $category_id) { */?>
  <a href="<?php /*echo $category['href']; */?>" class="list-group-item active"><?php /*echo $category['name']; */?></a>
  <?php /*if ($category['children']) { */?>
  <?php /*foreach ($category['children'] as $child) { */?>
  <?php /*if ($child['category_id'] == $child_id) { */?>
  <a href="<?php /*echo $child['href']; */?>" class="list-group-item active">&nbsp;&nbsp;&nbsp;- <?php /*echo $child['name']; */?></a>
  <?php /*} else { */?>
  <a href="<?php /*echo $child['href']; */?>" class="list-group-item">&nbsp;&nbsp;&nbsp;- <?php /*echo $child['name']; */?></a>
  <?php /*} */?>
  <?php /*} */?>
  <?php /*} */?>
  <?php /*} else { */?>
  <a href="<?php /*echo $category['href']; */?>" class="list-group-item"><?php /*echo $category['name']; */?></a>
  <?php /*} */?>
  <?php /*} */?>
</div>-->
