<body>
    
<!-- site-navigation start -->  
<nav id="mainNavigation" class="navbar navbar-default main-navigation" role="navigation">
    <div class="container">
        
        <div class="navbar-header">
            
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-nav-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            
            <!-- navbar logo -->
            <div class="navbar-brand">
                <span class="sr-only">Mi Le International B.V.</span>
                <a href="<?php echo site_url('pages/view/home'); ?>">
                    <img src="<?php echo base_url(); ?>assets/img/main_logo.png" class="img-responsive center-block" alt="logo">
                </a>
            </div>
            <!-- navbar logo -->

        </div><!-- /.navbar-header -->

        <!-- nav links -->
        <div class="collapse navbar-collapse" id="main-nav-collapse">
            <ul class="nav navbar-nav navbar-right text-uppercase">
                <li>
                    <a href="<?php echo site_url('pages/view/home'); ?>"><span>home</span></a>
                </li>

                <li>
                    <a href="<?php echo site_url('pages/view/about'); ?>"><span>about us</span></a>
                </li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span>products</span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li>
                            <a href="<?php echo site_url('products/category/2'); ?>">Frozen</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('products/category/6'); ?>">Dry</a>
                        </li>
                        <li>
                            <a href="<?php echo site_url('products'); ?>">All</a>
                        </li>
                    </ul>  <!-- end of /.dropdown-menu -->
                </li> <!-- end of /.dropdown -->

                <li>
                    <a href="<?php echo site_url('pages/view/contact'); ?>"><span>contact us</span></a>
                </li>
            </ul>
        </div><!-- nav links -->
        
    </div><!-- /.container -->
</nav>
<!-- site-navigation end -->
