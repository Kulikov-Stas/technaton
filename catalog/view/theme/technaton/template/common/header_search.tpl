<section class="pt-0">
    <div class="container-fluid">
        <div class="row">
            <div class="header-banner">
                <div class="mainBaner-container">
                    <div class="text-block">
                        <p><?php echo $text_header; ?></p>
                    </div>
                    <div class="form-wrapper" id="search">
                        <div class="search-input">
                            <button class="btn search-btn" type="submit">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 29.259 30.306">
                                    <use xlink:href="#searchBtn" x="0" y="0" />
                                </svg>
                            </button>
                            <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_keyword; ?>" id="input-search" class="form-control" />
                        </div>
                        <select name="category_id" id="category">
                            <option value="0"><?php echo $text_category; ?></option>
                            <?php $i = 0;
                                foreach ($categories as $category_1) { ?>
                                <?php //if ($category_1['category_id'] == $category_id) {
                                    if ($i === 0) { ?>
                                    <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
                                <?php } else { ?>
                                    <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
                                <?php } ?>
                                <?php foreach ($category_1['children'] as $category_2) { ?>
                                    <?php if ($category_2['category_id'] == $category_id) { ?>
                                        <option value="<?php echo $category_2['category_id']; ?>" selected="selected">
                                            <?php echo $category_2['name']; ?></option>
                                    <?php } else { ?>
                                        <option value="<?php echo $category_2['category_id']; ?>">
                                            <?php echo $category_2['name']; ?></option>
                                    <?php } ?>
                                    <?php foreach ($category_2['children'] as $category_3) { ?>
                                        <?php if ($category_3['category_id'] == $category_id) { ?>
                                            <option value="<?php echo $category_3['category_id']; ?>" selected="selected">
                                                <?php echo $category_3['name']; ?></option>
                                        <?php } else { ?>
                                            <option value="<?php echo $category_3['category_id']; ?>">
                                                <?php echo $category_3['name']; ?></option>
                                        <?php } ?>
                                    <?php } ?>
                                <?php } ?>
                            <?php $i++;
                                } ?>
                        </select>
                    </div>
                    <div class="scrollMouse">
                        <svg xmlns="http://www.w3.org/2000/svg" width="18.282" height="41.546" viewBox="0 0 18.282 41.546">
                            <g id="next" transform="translate(-938.363 -935.545)">
                                <g id="next-2" data-name="next" transform="translate(955.347 968.758) rotate(90)">
                                    <path id="Path_6" data-name="Path 6" d="M8.2,7.573.763.131A.446.446,0,0,0,.131.763L7.256,7.887.131,15.011a.445.445,0,0,0,0,.631.449.449,0,0,0,.314.132.436.436,0,0,0,.314-.132L8.2,8.2A.444.444,0,0,0,8.2,7.573Z" transform="translate(0 0)" fill="#007dc4" />
                                </g>
                                <g id="mouse" transform="translate(938.363 935.545)">
                                    <g id="Group_45" data-name="Group 45" transform="translate(0)">
                                        <g id="Group_44" data-name="Group 44">
                                            <path id="Path_27" data-name="Path 27" d="M44.21,0a9.149,9.149,0,0,0-9.141,9.137v9.15a9.141,9.141,0,0,0,18.282,0V9.137A9.149,9.149,0,0,0,44.21,0Zm8.125,18.287a8.125,8.125,0,0,1-16.251,0V9.137a8.125,8.125,0,0,1,16.251,0Z" transform="translate(-35.069)" fill="#007dc4" />
                                            <path id="Path_28" data-name="Path 28" d="M101.818,23.379a.508.508,0,0,0-.508.508v4.6a.508.508,0,0,0,1.016,0v-4.6A.508.508,0,0,0,101.818,23.379Z" transform="translate(-92.677 -20.332)" fill="#007dc4" />
                                        </g>
                                    </g>
                                </g>
                            </g>
                        </svg>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>