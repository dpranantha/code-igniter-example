<article class="blog-item">
    <div class="blog-heading">
        <h3 class="text-capitalize">Products</h3>                                
    </div>             
    
<?php foreach($products as $product) { ?>
    <div class="row">
        <div class="product-item" >
            <div class="col-md-6 item-image">
                <a href="#">
                    <img src="<?php echo base_url($product['url']);?>" class="img-responsive center-block">                                                 
                    <div><span><i class="fa fa-arrow-circle-right"></i></span></div>                   
                </a>                
            </div>    
            <div class="col-md-6">
                <div class="item-description">
                    <div class="row">
                        <div class="col-xs-6">
                            <span class="item-name">
                                <?=$product['product_code']?><br/>
                                <?=$product['name_en']?><br/>
                                <? if ($product['name_nl'] != NULL) { 
                                    echo $product['name_nl']."</br>";
                                } ?>
                                <? if ($product['name_cn'] != NULL) { 
                                    echo $product['name_cn']."</br>";
                                } ?>
                            </span>
                        </div>
                    </div>
                </div> <!-- end of /.item-description -->
            </div>                                                        
        </div>                
    </div>

    <br/>
<? } ?>

    <div class="single-blog-page-button">    
        <div class="row">
            <!-- <div class="col-md-2">
                <a href="#" class="btn blog-btn">
                    <span><i class="fa fa-long-arrow-left"></i></span>                                                   
                </a>
            </div> -->
            <div id="pagination" class="col-md-12 text-center">
                <?php echo $pagination; ?>
                <script>
                    $(function(){
                        $("#pagination a").click(function(){
                            $.ajax({
                                type: "GET",
                                url: $(this).attr("href"),
                                success: function(res){
                                        console.log(res);
                                        $("#product_list").html(res);
                                    }
                            });
                        return false;
                        });
                    });
                </script>
            </div>
            <!-- <div class="col-md-2">
                <a href="#" class="btn blog-btn">
                    <span><i class="fa fa-long-arrow-right"></i></span>
                </a>
            </div> -->
        </div>
    </div>
 
<!--  Necessary scripts  -->

<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/owl.carousel.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery.hoverdir.js"></script>

<!-- script for portfolio section using hoverdirection -->
<script type="text/javascript">
    $(function() {

        $('.product-item > .item-image').each( function() { $(this).hoverdir({
            hoverDelay : 75
        }); } );

    });
</script>


<!-- script for twitter-feed using owl carousel-->
<script type="text/javascript">
    $(document).ready(function() {

        $("#twit").owlCarousel({
            
            navigation : true, // Show next and prev buttons
            slideSpeed : 100,
            paginationSpeed : 400,
            navigationText : false,
            singleItem: true,
            autoPlay: true,
            pagination: false
        });

    });
</script>


<!-- script for testimonial section using owl carousel -->
<script type="text/javascript">
    $(document).ready(function() {

        $("#client-speech").owlCarousel({
            
            autoPlay: 5000, //Set AutoPlay to 3 seconds
            stopOnHover: true,
            singleItem:true
        });

    });
</script>
