<div class="popup-wrapper">
    <div class="popup-block">
        <div class="orders-history-block">
            <div class="close-btn shopping-btn">
                <div class="back-btn-wrapper">

                    <button class="return"></button>
                    <p><?php echo $heading_title; ?></p>
                </div>
                <div class="close-btn-wrapper">
                    <a href="/logout/">
                        <svg id="logOut" xmlns="http://www.w3.org/2000/svg" width="63.229" height="49" viewBox="0 0 63.229 49">
                            <g id="Group_108" data-name="Group 108" transform="translate(0)">
                                <rect id="Rectangle_49" data-name="Rectangle 49" width="63.229" height="49" fill="#d95050" />
                                <g id="logout" transform="translate(21.2 13.157)">
                                    <g id="Group_103" data-name="Group 103" transform="translate(0 0)">
                                        <g id="Group_102" data-name="Group 102">
                                            <path id="Path_85" data-name="Path 85" d="M10.992,21H2.748a.916.916,0,0,1-.916-.916V3.6a.916.916,0,0,1,.916-.916h8.244a.916.916,0,0,0,0-1.832H2.748A2.751,2.751,0,0,0,0,3.6V20.087a2.751,2.751,0,0,0,2.748,2.748h8.244a.916.916,0,0,0,0-1.832Z" transform="translate(0 -0.85)" fill="#fff" />
                                        </g>
                                    </g>
                                    <g id="Group_105" data-name="Group 105" transform="translate(7.328 4.58)">
                                        <g id="Group_104" data-name="Group 104">
                                            <path id="Path_86" data-name="Path 86" d="M184.557,112.925l-5.569-5.5a.916.916,0,1,0-1.286,1.3l3.98,3.928H171.016a.916.916,0,0,0,0,1.832h10.665l-3.98,3.928a.916.916,0,1,0,1.286,1.3l5.569-5.5a.916.916,0,0,0,0-1.3Z" transform="translate(-170.1 -107.165)" fill="#fff" />
                                        </g>
                                    </g>
                                </g>
                            </g>
                        </svg>
                    </a>
                    <svg id="exit" xmlns="http://www.w3.org/2000/svg" width="63.229" height="49" viewBox="0 0 63.229 49">
                        <rect id="Rectangle_77" data-name="Rectangle 77" width="63.229" height="49" fill="#007dc4" />
                        <path id="Path_80" data-name="Path 80" d="M3.7-28.655l6.153,8.046.316.592.316-.592,6.153-8.046H19.52L11.671-18.321,19.52-8.106H16.641l-6.153-8.007-.316-.552-.316.552L3.7-8.106H.825L8.674-18.321.825-28.655Z" transform="translate(21.916 43.053)" fill="#fff" />
                    </svg>
                </div>
            </div>
            <div class="popup-content">
                <div class="accordion" id="orders">
                    <?php foreach ($orders as $order) { ?>
                        <div class="order-item">
                        <div class="order-header">
                            <div class="wrapper">
                                <svg class="arrow" xmlns="http://www.w3.org/2000/svg" width="13.592" height="7.18" viewBox="0 0 13.592 7.18">
                                    <g id="next" transform="translate(6.592 -113.556) rotate(90)">
                                        <path id="Path_6" data-name="Path 6" d="M119.625,6.525,113.213.113a.385.385,0,0,0-.544.544L118.807,6.8l-6.138,6.138a.386.386,0,0,0,.271.658.375.375,0,0,0,.271-.114l6.412-6.412A.383.383,0,0,0,119.625,6.525Z" transform="translate(1 -7)" fill="#007DC4" />
                                    </g>
                                </svg>
                                <a href="#" class="order-num p" data-toggle="collapse" data-target="#order-<?php echo $order['order_id']; ?>" aria-expanded="false" aria-controls="order-<?php echo $order['order_id']; ?>">№<?php echo $order['order_id']; ?></a>
                                <p class="order-date"><?php echo $order['date_added']; ?></p>
                            </div>
                            <div class="wrapper">
                                <div class="print-block" onclick="window.print();">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="15" viewBox="0 0 16 15">
                                        <g id="Group_179" data-name="Group 179" transform="translate(0 -0.5)">
                                            <path id="Path_155" data-name="Path 155" d="M4,12.5v3h8v-5H4Zm1-1h6v1H5Zm0,2h6v1H5Z" fill="#007dc4" />
                                            <path id="Path_156" data-name="Path 156" d="M12,3.5V.5H4v5h8Z" fill="#007dc4" />
                                            <path id="Path_157" data-name="Path 157" d="M14,3.5H13v3H3v-3H2a2.151,2.151,0,0,0-2,2v5a2.151,2.151,0,0,0,2,2H3v-3H13v3h1a2.151,2.151,0,0,0,2-2v-5A2.151,2.151,0,0,0,14,3.5Z" fill="#007dc4" />
                                        </g>
                                    </svg>
                                </div>
                                <div class="status-block <?php echo $order['status']; ?>">
                                    <p class="a"><?php echo $order['status']; ?></p>
                                </div>
                            </div>
                        </div>
                        <div class="order-discription collapse" data-parent="#orders" id="order-<?php echo $order['order_id']; ?>">
                            <ul class="order-list-history">
                                <?php foreach ($order['products'] as $product) { ?>
                                    <li>
                                        <div class="left-col">
                                            <img src="<?php if (empty($product['image'])) echo '/system/storage/upload/Group 80.png'; else echo $image; ?>" alt="">
                                        </div>
                                        <div class="right-col">
                                            <div class="discription">
                                                <div class="discription-title">
                                                    <a href=""><?php echo $product['name']; ?></a>
                                                    <p>№<?php echo $product['model']; ?></p>
                                                </div>
                                                <div class="price-wrapper">
                                                    <div class="cost a"<?php echo $product['price']; ?></div>
                                                    <div class="wrapper">
                                                        <div class="amount"><?php echo $product['quantity']; ?> шт</div>
                                                        <div class="value a"><?php echo $product['total']; ?></div>
                                                    </div>
                                                </div>

                                                <div class="saler">
                                                    <p><?php echo $column_seller; ?>:</p>
                                                    <a href=""><img src="catalog/view/theme/technaton/img/tehnaton.png" alt=""></a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                <?php } ?>
                            </ul>
                            <div class="total">
                                <p class="total-price"><?php echo $column_total; ?></p>
                                <p class="total-price-num"><?php echo $order['total']; ?> грн</p>
                            </div>
                        </div>
                    </div>
                   <?php } ?>
                </div>
            </div>
        </div>
    </div>
</div>
     <!-- <h1><?php /*echo $heading_title; */?></h1>
      <?php /*if ($orders) { */?>
      <div class="table-responsive">
        <table class="table table-bordered table-hover">
          <thead>
            <tr>
              <td class="text-right"><?php /*echo $column_order_id; */?></td>
              <td class="text-left"><?php /*echo $column_customer; */?></td>
              <td class="text-right"><?php /*echo $column_product; */?></td>
              <td class="text-left"><?php /*echo $column_status; */?></td>
              <td class="text-right"><?php /*echo $column_total; */?></td>
              <td class="text-left"><?php /*echo $column_date_added; */?></td>
              <td></td>
            </tr>
          </thead>
          <tbody>
            <?php /*foreach ($orders as $order) { */?>
            <tr>
              <td class="text-right">#<?php /*echo $order['order_id']; */?></td>
              <td class="text-left"><?php /*echo $order['name']; */?></td>
              <td class="text-right"><?php /*echo $order['products']; */?></td>
              <td class="text-left"><?php /*echo $order['status']; */?></td>
              <td class="text-right"><?php /*echo $order['total']; */?></td>
              <td class="text-left"><?php /*echo $order['date_added']; */?></td>
              <td class="text-right"><?php /*if (!empty($order['ocstore_payeer_onpay'])) { */?><a rel="nofollow" onclick="location='<?php /*echo $order['ocstore_payeer_onpay']; */?>'" data-toggle="tooltip" title="<?php /*echo $button_ocstore_payeer_onpay; */?>" class="btn btn-info"><i class="fa fa-usd"></i></a>&nbsp;&nbsp;<?php /*} */?><?php /*if (!empty($order['ocstore_yk_onpay'])) { */?><a rel="nofollow" onclick="location='<?php /*echo $order['ocstore_yk_onpay']; */?>'" data-toggle="tooltip" title="<?php /*echo $button_ocstore_yk_onpay; */?>" class="btn btn-info" ><i class="fa fa-usd"></i></a>&nbsp;&nbsp;<?php /*} */?><a href="<?php /*echo $order['view']; */?>" data-toggle="tooltip" title="<?php /*echo $button_view; */?>" class="btn btn-info"><i class="fa fa-eye"></i></a></td>
            </tr>
            <?php /*} */?>
          </tbody>
        </table>
      </div>
      <div class="row">
        <div class="col-sm-6 text-left"><?php /*echo $pagination; */?></div>
        <div class="col-sm-6 text-right"><?php /*echo $results; */?></div>
      </div>
      <?php /*} else { */?>
      <p><?php /*echo $text_empty; */?></p>
      <?php /*} */?>
      <div class="buttons clearfix">
        <div class="pull-right"><a href="<?php /*echo $continue; */?>" class="btn btn-primary"><?php /*echo $button_continue; */?></a></div>
      </div>-->


