    <title>Mi Le International - Contact Us</title>

    <!-- meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset = "utf-8">
    <meta name = "Description" CONTENT = "Contact Us at Mi Le International B.V.">
    <meta name = "robots" content = "index, unfollow">
    
    <meta name="referrer" content="no-referrer">
    <script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <script>
        // hack Google Maps to bypass API v3 key (needed since 22 June 2016 http://googlegeodevelopers.blogspot.com.es/2016/06/building-for-scale-updates-to-google.html)
        var target = document.head;
        var observer = new MutationObserver(function(mutations) {
            for (var i = 0; mutations[i]; ++i) { // notify when script to hack is added in HTML head
                if (mutations[i].addedNodes[0].nodeName == "SCRIPT" && mutations[i].addedNodes[0].src.match(/\/AuthenticationService.Authenticate?/g)) {
                    var str = mutations[i].addedNodes[0].src.match(/[?&]callback=.*[&$]/g);
                    if (str) {
                        if (str[0][str[0].length - 1] == '&') {
                            str = str[0].substring(10, str[0].length - 1);
                        } else {
                            str = str[0].substring(10);
                        }
                        var split = str.split(".");
                        var object = split[0];
                        var method = split[1];
                        window[object][method] = null; // remove censorship message function _xdc_._jmzdv6 (AJAX callback name "_jmzdv6" differs depending on URL)
                        //window[object] = {}; // when we removed the complete object _xdc_, Google Maps tiles did not load when we moved the map with the mouse (no problem with OpenStreetMap)
                    }
                    observer.disconnect();
                }
            }
        });
        var config = { attributes: true, childList: true, characterData: true }
        observer.observe(target, config);

        function initialize() {
            var mapCanvas = document.getElementById('map-canvas');
            var mapOptions = {
                center: new google.maps.LatLng(51.827137, 5.779156),
                zoom: 16,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }
            var map = new google.maps.Map(mapCanvas, mapOptions);
            new google.maps.Marker({
                        map: map,
                        position: new google.maps.LatLng(51.827137, 5.779156)
                    });        
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>

</head>

<body>
<div id="single-blog-page">
    <!-- header begin -->
    <header class="page-head">
        <div class="header-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <ol class="breadcrumb">
                            <li><a href="<?php echo site_url('pages/view/home'); ?>">home</a></li>
                            <li class="active">contact us</li>
                        </ol> <!-- end of /.breadcrumb -->

                    </div>
                </div>
            </div> <!-- /.container -->
        </div> <!-- /.header-wrapper -->
    </header> <!-- /.page-head (header end) -->

    <div class="main-content">
        <div class="container">

            <!-- google map iframe -->
            <section class="g-map">
                <div class="row">
                    <div class="col-md-12">
                        <div class="google-map">
                            <div id="map-canvas"></div>
                        </div>
                    </div>
                </div>
            </section> <!-- /.g-map -->

            <!-- contact adresses section -->
            <section class="contact-address bg-white">
                <div class="row">
                    <div class="col-md-4 col-xs-12">
                        <div class="address-info">
                            <div class="row">
                                <div class="col-md-3 col-xs-3">
                                    <div class="address-info-icon text-center center-block bg-light-gray">
                                        <i class="fa fa-map-marker"></i>
                                    </div> <!-- /.address-info-icon -->
                                </div>

                                <div class="col-md-9 col-xs-9 address-info-desc">
                                    <h3>Office</h3>
                                    <p>Kerkenbos 10-125, 6546 BJ<br/>                                                
                                        Nijmegen, The Netherlands
                                    </p>
                                </div> <!-- /.address-info-desc -->

                            </div>
                        </div> <!-- /.address-info -->
                    </div>

                    <div class="col-md-4 col-xs-12">
                        <div class="address-info">
                            <div class="row">

                                <div class="col-md-3 col-xs-3">
                                    <div class="address-info-icon text-center center-block bg-light-gray">
                                        <i class="fa fa-phone"></i>
                                    </div> <!-- /.address-info-icon -->
                                </div>

                                <div class="col-md-9 col-xs-9 address-info-desc">
                                    <h3>Phone</h3>
                                    <p>Phone:  + 31 (0) 24 377 3698<br/>
                                        Fax&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: + 31 (0) 24 377 3625
                                    </p>
                                </div> <!-- /.address-info-desc -->

                            </div>
                        </div> <!-- /.address-info -->
                    </div>

                    <div class="col-md-4 col-xs-12">
                        <div class="address-info">
                            <div class="row">

                                <div class="col-md-3 col-xs-3">
                                    <div class="address-info-icon text-center center-block bg-light-gray">
                                        <i class="fa fa-envelope-o"></i>
                                    </div> <!-- /.address-info-icon -->
                                </div>

                                <div class="col-md-9 col-xs-9 address-info-desc">
                                    <h3>Email</h3>
                                    <p>info@milebv.eu<br/>
                                       www.milebv.eu
                                    </p>
                                </div> <!-- /.address-info-desc -->

                            </div>
                        </div> <!-- /.address-info -->
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-4 col-xs-12">
                        <div class="address-info">
                            <div class="row">
                                <div class="col-md-3 col-xs-3">
                                    <div class="opening-info-icon text-center center-block bg-light-gray">
                                        <i class="fa fa-key"></i>
                                    </div> 
                                </div>
                                <div class="col-md-6 col-xs-6 address-info-desc">
                                    <h3>Opening hour</h3>
                                        <p align="right">Monday&emsp;09:00 ~ 17:30<br/>
                                        Tuesday&emsp;09:00 ~ 17:30<br/>
                                        Wednesday&emsp;09:00 ~ 17:30<br/>
                                        Thursday&emsp;09:00 ~ 17:30<br/>
                                        Friday&emsp;09:00 ~ 17:30<br/>
                                        Saturday&emsp;&emsp;&emsp;&emsp;&nbsp;closed<br/>
                                        Sunday&emsp;&emsp;&emsp;&emsp;&nbsp;closed
                                </div> 

                            </div>
                        </div> 
                    </div>
                </div>
            </section> <!-- /.contact-address -->

            <!-- contact-form -->
            <section class="contact-form">
                <!-- call for contact -->
                <div class="headline text-center">
                    <div class="row">
                        <div class="col-md-6 col-md-offset-3">
                            <h2 class="section-title">Contact Us!</h2>
                            <p class="section-sub-title">
                                If you have any questions or comments
                                <br/>please feel free to contact our friendly team
                            </p> <!-- /section-sub-title -->
                        </div>
                    </div>
                </div> <!-- /.contact-speech -->

                <?php 
                    if (isset($reply)) {
                        echo '<div>'.$reply.'</div>';
                    }
                    
                ?>

                <form method="post" action="<?php echo site_url('contact'); ?>">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <input  name="name" type="text" class="form-control" id="name" required="required" placeholder="Full Name" value="<?php echo (isset($name))?$name:'';?>">
                            </div>
                            <div class="form-group">
                                <input name="email" type="email" class="form-control" id="email" required="required" placeholder="Email Address" value="<?php echo (isset($email))?$email:'';?>">
                            </div>
                            <div class="form-group">
                                <input name="company" type="text" class="form-control" id="company" placeholder="Company" value="<?php echo (isset($company))?$company:'';?>">
                            </div>
                            <div class="form-group">
                                <input name="subject" type="text" class="form-control" id="subject" required="required" placeholder="Subject" value="<?php echo (isset($subject))?$subject:'';?>">
                            </div>
                        </div>
                        <div class="col-md-8">
                            <textarea name="message" type="text" class="form-control" id="message" rows="11" required="required" placeholder="Type message here"><?php echo (isset($message))?$message:'';?></textarea>
                        </div>
                    </div>
                        <button type="submit" id="submit" name="submit" class="btn btn-black">send message</button>                            
                </form> <!-- form end -->                
            </section> <!-- /.contact-form -->            
        </div> <!-- container -->
    </div>
    <!-- main-content end -->
</div>     