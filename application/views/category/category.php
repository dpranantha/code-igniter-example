<h2><?php echo $title; ?></h2>

<?php foreach ($categories as $categories_item): ?>

        <h3><?php echo $categories_item['id']; ?></h3>
        <div class="main">
                <?php echo $categories_item['name']; ?>
        </div>
        <p><a href="<?php echo site_url('category/products/'.$categories_item['id']); ?>">View article</a></p>

<?php endforeach; ?>