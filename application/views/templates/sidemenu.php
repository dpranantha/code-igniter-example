
<!-- CSS for sidemenu  -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/bootstrap-treeview.min.css">

<!-- JS for submenu  -->
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/bootstrap-treeview.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/underscore.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/treeview-util.js"></script>

 <!-- begin sidemenu -->
 <aside class="col-md-3 col-md-pull-9">                                 
        <div class="collapse navbar-collapse">
                <h4>Categories</h4>
                <div id="default-tree"></div>                             
        </div>
</aside>
<!-- end sidebar -->

<script type="text/javascript">


var sidemenu = $('#default-tree').treeview({
        //JSON data from controller
        data: <?php echo $tree; ?>,
        
        // custom icons
        expandIcon: 'glyphicon glyphicon-plus',
        collapseIcon: 'glyphicon glyphicon-minus',
        emptyIcon: 'glyphicon',
        nodeIcon: '',
        selectedIcon: '',
        checkedIcon: 'glyphicon glyphicon-check',
        uncheckedIcon: 'glyphicon glyphicon-unchecked',

        // colors
        color: undefined, // '#000000',
        backColor: undefined, // '#FFFFFF',
        borderColor: undefined, // '#dddddd',
        onhoverColor: '#F5F5F5',
        selectedColor: '#FFFFFF',
        selectedBackColor: '#428bca',
        searchResultColor: '#D9534F',
        searchResultBackColor: undefined, //'#FFFFFF',

        // enables links
        enableLinks: false,

        // highlights selected items
        highlightSelected: false,

        // highlights search results
        highlightSearchResults: false,

        // shows borders
        showBorder: false,

        // shows icons
        showIcon: true,

        // shows checkboxes
        showCheckbox: true,

        // shows tags
        showTags: false,

        // enables multi select, we use check
        multiSelect: false,

        onNodeChecked: function(event, node) {                
                autoChecked(node, $(this));   
                var root = _getRoot(node, $(this));
                var checkedLeafNodes = _.map(_getAllCheckedLeafNodesFromRoot(root), 'id').join("~");                 
                var url = "<?php echo site_url('products/filter/');?>"+checkedLeafNodes;        
                $("#product_list").load(url);                
        },
        
        onNodeUnchecked: function (event, node) {
                autoUnchecked(node, $(this));    
                var root = _getRoot(node, $(this));
                var checkedLeafNodes = _.map(_getAllCheckedLeafNodesFromRoot(root), 'id').join("~");  
                var url = "<?php echo site_url('products/filter/');?>"+checkedLeafNodes;       
                $("#product_list").load(url);                
        }
});

</script>