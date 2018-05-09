<aside class="col-md-3">                                 
    <div class="collapse navbar-collapse">    
        <div>
            <h4 class="text-capitalize"><?php echo $product['product_code']?></h4>
            <h4 class="text-capitalize"><?php echo $product['name_en']?></h4>
            <?php 
                if ($product['name_de'] != NULL) {
                    echo '<h4 class="text-capitalize">'.$product['name_de'].'</h4>';
                }
                if ($product['name_cn'] != NULL) {
                    echo '<h4 class="text-capitalize">'.$product['name_cn'].'</h4>';
                }
            ?>
        </div>
    </div>                   
</aside>