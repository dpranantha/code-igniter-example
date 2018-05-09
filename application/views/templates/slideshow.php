<!-- CSS for slides  -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/slideshow.css">

<!-- Container for the image gallery -->
<div class="container-image">

  <!-- Full-width images with number text -->
  <?php 
        $i = 1;
        $cnt = count($assets);
        foreach($assets as $asset) {                                     
            echo '<div class="slides">
                    <div class="numbertext">'.$i. '/ '.$cnt.'</div>
                      <img src="'.base_url($asset['url']).'" style="width:100%"">
                  </div>';
            $i++;
        }
     ?>

  <br/>
  <!-- Next and previous buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>

  <!-- Thumbnail images -->
  <div class="row" style="padding-left:15px;padding-right:15px;">
    <?php 
        $i = 1;
        $cnt = count($asset);        
        foreach($assets as $asset) {                                     
            echo '<div class="column">
                    <img class="slideImage cursor" src="'.base_url($asset['url']).'" style="width:100%" onclick="currentSlide('.$i.')" alt="'.$product['name_en'].'">
                  </div>';                
            $i++;
        }
    ?>
    </div>
</div>

<!-- JS for slides  -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/slideshow.js"></script>
