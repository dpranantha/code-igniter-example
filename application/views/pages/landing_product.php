<div id="single-blog-page">
    <!-- header begin -->
    <header class="page-head">
        <div class="header-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <ol class="breadcrumb">
                            <li><a href="<?php echo site_url('pages/view/home'); ?>">home</a></li>
                            <li><a href="<?php echo site_url('products'); ?>">products</a></li>
                            <li class="active"><?php echo $product['name_en']; ?></li>
                        </ol> <!-- end of /.breadcrumb -->

                    </div>
                </div>
            </div> <!-- /.container -->
        </div> <!-- /.header-wrapper -->
    </header> <!-- /.page-head (header end) -->
    
    <section class="blog-content">
        <div class="container">
            <div class="row">
                <main class="col-md-9" style="display: block;">                                   
                    <?php echo $a_product;?>    
                </main>
                <?php echo $side_landing_product;?>
            </div>
        </div>
    </section>
</div> 
<!-- end of /#multiple-blog-page -->
