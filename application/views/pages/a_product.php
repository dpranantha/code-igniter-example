<article class="blog-item">
    <?php
        echo $slides;
    ?>                                                   
</article>
<div class="tab-widget">
    <div  class="nav-tabs-default">
        <ul class="nav nav-tabs">
            <li class="active">
                <a href="#description" data-toggle="tab">
                    <div class="tab-widget-title">Description</div>
                </a>
            </li>
            <li>
                <a href="#product-detail" data-toggle="tab">
                    <div class="tab-widget-title">Product Detail</div>
                </a>
            </li>
        </ul> <!-- end of nav-tabs -->

        <div class="tab-content">
            <div class="tab-pane active" id="description">
                <div>
                    <h6 class="text-capitalize">Product code: <?php echo $product['product_code']?></h6>
                    <h6 class="text-capitalize">Product name: <?php echo $product['name_en']?></h6>
                    <?php 
                        $name_de = ($product['name_de'] != NULL) ? $product['name_de'] : 'N/A';
                        $name_cn = ($product['name_cn'] != NULL) ? $product['name_cn'] : 'N/A';
                        $weight_gr = ($product['weight_gr'] != NULL && $product['weight_gr'] > 0) ? ($product['weight_gr'] >= 1000 ? ($product['weight_gr']/1000).'kg ' : $product['weight_gr'].'g ').'&plusmn; 5%' : 'N/A';
                        $pieces = ($product['n_piece'] != NULL && $product['n_piece'] > 0) ? $product['n_piece'].' packs/case' : 'N/A';
                    ?>
                    <h6 class="text-capitalize">Product name (DE): <?php echo $name_de;?></h6>
                    <h6 class="text-capitalize">Product name (CN): <?php echo $name_cn;?></h6>
                    <h6 class="text-capitalize">Product weight: <?php echo $weight_gr;?></h6>
                    <h6 class="text-capitalize">Product pieces: <?php echo $pieces;?></h6>
                    <?php if ($product['weight_gr2'] != NULL && $product['weight_gr2'] > 0) { ?>
                        <h6 class="text-capitalize">Product weight (L): <?php echo ($product['weight_gr2']/1000).'kg &plusmn; 5%';?></h6>
                        <h6 class="text-capitalize">Product pieces (L): <?php echo $product['n_piece2'].' large pack';?></h6>
                    <?php }?>
                </div>
            </div>
            <div class="tab-pane" id="product-detail">
                <div>
                    <h6 class="text-capitalize">Ingredients: N/A</h6>
                    <h6 class="text-capitalize">Cooking recommendation:</h6>
                    <p><?php echo $product['cooking']?></p>
                </div>                                    
            </div>
        </div>
    </div>
</div>     