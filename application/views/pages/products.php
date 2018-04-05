        
        <div id="single-blog-left-sidebar">

            <!-- header begin -->
            <header class="page-head">
                <div class="header-wrapper">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">

                                <ol class="breadcrumb">
                                    <li><a href="<?php echo site_url('pages/view/home'); ?>">home</a></li>
                                    <li class="active"><?php echo $title; ?></li>
                                </ol> <!-- end of /.breadcrumb -->

                            </div>
                        </div>
                    </div> <!-- /.container -->
                </div> <!-- /.header-wrapper -->
            </header> <!-- /.page-head (header end) -->


            <section class="blog-content">
                <div class="container">
                    <div class="row">
                        <main class="col-md-9 col-md-push-3" style="display: block;">
                            <article class="blog-item">
                                <div class="blog-heading">
                                    <h3 class="text-capitalize">Products</h3>                                
                                </div>             
                                
                                <?php foreach($products as $product) { ?>
                                <div class="row">
                                    <div class="col-md-6">
                                        <img src="<?php echo base_url($product['url']);?>" class="img-responsive center-block">                            
                                    </div>                                    
                                    <div class="col-md-6">
                                        <p><?=$product['name_en']?></p>
                                    </div>                                    
                                </div>

                                <div class="single-blog-page-button">
                                <? } ?>

                                    <div class="row">
                                        <div class="col-md-2">
                                            <a href="#" class="btn blog-btn">
                                                <span><i class="fa fa-long-arrow-left"></i></span>                                                
                                            </a>
                                        </div>
                                        <div class="col-md-2">
                                            <a href="#" class="btn blog-btn">
                                                <span><i class="fa fa-long-arrow-right"></i></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
        
                        </main>
                        <?=$sidemenu;?>
                    </div>
                </div>
            </section>

