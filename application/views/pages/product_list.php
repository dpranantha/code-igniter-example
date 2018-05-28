<style>

#topBtn {
  display: none;
  position: fixed;
  bottom: 20px;
  right: 30px;
  z-index: 99;
  font-size: 12px;
  border: none;
  outline: none;
  color: white;
  cursor: pointer;
  padding: 15px;
  border-radius: 4px;
}

#topBtn:hover {
  background-color: #555;
}

#topBtn img {
  position: relative;
  z-index: 101;
}

#topBtn img:first-child {
  position: absolute;
  background-color: crimson;
  top: 0;
  left: 0;
  z-index: 100;
}

#topBtn img:hover,.img:active {
  background-color: #555;
}

</style>

<article class="blog-item" id="product_list">
    <div class="blog-heading">
        <h3 class="text-capitalize">Products</h3>
        <h6 class="text-capitalize"><?php
                echo $nb_results." ".($nb_results > 1 ? "results" : "result");
            ?>
        </h6>
    </div>             
    
<div id="products">
    <?php 
        // echo $products_per_page;
        $this->load->view('pages/products_loop', $products);
    ?>
</div>

<div class="ajax-load text-center" style="display:none">
	<p><img src="<?php echo base_url();?>assets/img/loader.gif">Loading More post</p>
</div>

    <div class="single-blog-page-button hidden-xs">    
        <div class="row">
            <div id="pagination" class="col-md-12 text-center">
                <?php echo $pagination; ?>
                <script>
                    $(function(){
                        $("#pagination a").click(function(){
                            $.ajax({
                                type: "GET",
                                url: $(this).attr("href"),
                                success: function(res){
                                        $("#product_list").html(res);
                                    }
                            });
                        return false;
                        });
                    });
                </script>
            </div>
        </div>
    </div>
 
<div onclick="topFunction()" id="topBtn">
    <img src="<?php echo base_url();?>assets/img/back-to-top.png"/>
    <!-- <div>Top</div> -->
</div>

<script type="text/javascript">
    // touch screen back on top
    $("#topBtn img").on("touchstart", function(e){
        if(e.type == 'touchstart') {
            $(this).off('mouseenter mouseleave');
        }
        $(this).toggleClass("hover");
    });

    function toggleImage(e) {
        if (e.type == "touchstart") {
            link.removeEventListener("mouseenter", toggleImage);
            link.removeEventListener("mouseleave", toggleImage);
        }
        link.classList.toggle("hover");
    }

    var link = document.querySelector("#topBtn img");
    ["mouseenter", "mouseleave", "touchstart"].forEach(function (event) {
        link.addEventListener(event, toggleImage, false);
    });

    //infinite scroll 
    var productNum = 0;
    function detectmob() { 
        return (navigator.userAgent.match(/Android/i)
            || navigator.userAgent.match(/webOS/i)
            || navigator.userAgent.match(/iPhone/i)
            || navigator.userAgent.match(/iPad/i)
            || navigator.userAgent.match(/iPod/i)
            || navigator.userAgent.match(/BlackBerry/i)
            || navigator.userAgent.match(/Windows Phone/i));
    }
    
	$(window).scroll(function() {
        if (detectmob()) {
            if($(window).scrollTop() + $(window).height() >= $(document).height()) {
                productNum = productNum + 10;
                loadMoreData(productNum);
            }
        }
	});

	function loadMoreData(productNum){
	  $.ajax({
	            url: window.location.href + ($('#usersSearch').val() != '' ? '/search' : '') + '/ajax/' + productNum + ($('#usersSearch').val() != '' ?  '?data=' + $('#usersSearch').val() : ''),
	            type: "GET",
	            beforeSend: function()
	            {
                    $('.ajax-load').show();
	            }
	        })
	        .done(function(data){
                if(data == ""){                
	                $('.ajax-load').html("<div class='row'><div>No more records found!</div></div>");
	                return;
                }
                $('.ajax-load').hide();
                $("#products").append(data);                
	        })
	        .fail(function(jqXHR, ajaxOptions, thrownError){
	              alert('server not responding...');
	        });
    }
    
    window.onscroll = function() {scrollFunction()};

    function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            document.getElementById("topBtn").style.display = "block";
        } else {
            document.getElementById("topBtn").style.display = "none";
        }
    }

    // When the user clicks on the button, scroll to the top of the document
    function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
    }
</script>

