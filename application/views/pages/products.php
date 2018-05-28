    
    <title>Mi Le International - Products</title>

    <!-- meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset = "utf-8">
    <meta name = "Description" CONTENT = "Products of Mi Le International B.V.">
    <meta name = "robots" content = "index, follow">
    
</head>
<body>
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
                    <?php echo $searchbar;?>
                    <?php echo $productlist;?>
                </main>    
                <div id="sidemenu">
                    <?php echo $sidemenu;?>
                </div>
            </div>
        </div>
    </section>               
</div>

