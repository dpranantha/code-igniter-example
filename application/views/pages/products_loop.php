<?php foreach($products as $product) { ?>
    <div class="row">
        <div class="product-item" >
            <div class="col-md-6 item-image">
                <a href="<?php echo site_url('products/product/'.$product['id']);?>">
                    <img src="<?php echo base_url($product['url']);?>" class="img-responsive center-block">                                                 
                    <div><span><i class="fa fa-arrow-circle-right"></i></span></div>                   
                </a>                
            </div>    
            <div class="col-md-6">
                <div class="item-description">
                    <div class="row">
                        <div class="col-xs-12">
                            <span class="item-name">
                                <?php echo $product['product_code'];?><br/>
                            </span>                     
                            <span class="item-name">
                                <?php echo $product['name_en'];?><br/>
                            </span>           
                            <span class="item-name hidden-xs">
                                <?php if ($product['name_de'] != NULL) { 
                                    echo $product['name_de']."</br>";
                                } 
                                if ($product['name_cn'] != NULL) { 
                                    echo $product['name_cn']."</br>";
                                } 
                                if ($product['n_piece'] != NULL && $product['n_piece'] > 0) { 
                                    echo $product['n_piece']." packs/case</br>";
                                } 
                                if ($product['weight_gr'] != NULL && $product['weight_gr'] > 0) { 
                                    if ($product['weight_gr'] >= 1000) {
                                        echo ($product['weight_gr']/1000)."kg &plusmn; 5%</br>";
                                    } else {
                                        echo $product['weight_gr']."g &plusmn; 5%</br>";
                                    }
                                } ?>
                            </span>
                        </div>
                    </div>
                </div> <!-- end of /.item-description -->
            </div>                                                        
        </div>                
    </div>
    <br/>
<?php } ?>

<!-- script for portfolio section using hoverdirection -->
<script type="text/javascript">
    $(function() {
        $('.product-item > .item-image').each( function() { 
            $(this).hoverdir({
                hoverDelay : 75
            }); 
        });
    });

    // $(function() {
    //     $('.product-item > .item-image').each( function() { 
    //         $(this).bind('touchstart touchend', function(e) {
    //             $(this).toggleClass('hover_effect');
    //         });
    //     });
    // });
</script>