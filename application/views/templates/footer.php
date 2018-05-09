<!-- <html> -->
<!-- <body> -->
<!-- <div>  -->
           <!-- footer information -->
            <footer>
                <div class="container">
                    <div class="row">            
                        <div class="col-md-6 col-sm-6 col-xs-6 footer-widget">
                            <h5>Mi Le International B.V.</h5>                     
                            <p>info@milebv.eu</p>
                            <div class="row footer-address">
                                <div class="col-md-12">
                                    <ul class="footer-share-button">
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                        <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                                        <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                        <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                    </ul> 
                                </div>                            
                                <div class="col-md-12">
                                    <p><font size="1pt">&copy; original theme by ThemeWagon, adapted by Mi Le International B.V.</font></p>                                    
                                </div>
                            </div>      
                        </div> <!-- /.footer-widget -->                        
                    </div>
                    
                </div>
            </footer>

            <!-- footer-navigation start -->  
            <nav class="hidden-xs hidden-sm navbar footer-nav" role="navigation">
                <div class="container">             
                    <div class="navbar-header">       
                    </div>
                    <div class="collapse navbar-collapse" id="main-nav-collapse">
                        <ul class="nav navbar-nav navbar-right text-capitalize">
                            <li><a href="<?php echo site_url('about'); ?>">about</a>">
                                <span>about us</span>
                            </a></li>

                            <li><a href="<?php echo site_url('products'); ?>">products</a>">
                                <span>products</span>
                            </a></li>

                            <li><a href="<?php echo site_url('contact'); ?>">contact</a>">
                                <span>contact us</span>
                            </a></li>
                        </ul>
                    </div><!-- nav links -->
                    
                </div><!-- /.container -->
            </nav>
            <!-- footer-navigation end -->
        </div> <!-- end of page -->


        <!--  Necessary scripts  -->
        <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>
        <!-- <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery.mobile-events.min.js"></script> -->
        <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery.hoverdir.js"></script>

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

    </body>
</html>