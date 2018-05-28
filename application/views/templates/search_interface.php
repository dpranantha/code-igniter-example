<!-- CSS for sidemenu  -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/searchbar.css">

<div class="row">
    <div id="search-input">
        <div class="input-group col-md-12">
            <div class="form-group has-feedback has-clear">
                <input type="text" class="search-query form-control" name="usersSearch" id="usersSearch" placeholder="Search in all categories" />
                <span id="searchClear" class="form-control-clear glyphicon glyphicon-remove form-control-feedback hidden"></span>
            </div>    
            <span class="input-group-btn">
                <button id="searchButton" class="btn" type="button">
                    <span class=" glyphicon glyphicon-search"></span>
                </button>
            </span>
        </div>
    </div>
</div>

<script type="text/javascript">
    $('document').ready(function(){
        $('#searchButton').click(function(){
            var searchTerm = $('#usersSearch').val();
            if (searchTerm.trim() != '') {
                $.get("<?php echo site_url('products/search/');?>", {data: searchTerm},function(response){                
                    $("#product_list").html(response);      
                });                
                $.get("<?php echo site_url('products/resettree');?>", {},function(tree){                
                    $("#sidemenu").html(tree);    
                });
            } else {
                resetSearchText();
            }
        })
        $('#usersSearch').keypress(function(e){
            if(e.which == 13){//Enter key pressed
                $('#searchButton').click();
            }
        });
        $('.has-clear input[type="text"]').on('input propertychange', function() {
            var $this = $(this);
            var visible = Boolean($this.val());
            $this.siblings('.form-control-clear').toggleClass('hidden', !visible);
        }).trigger('propertychange');
        $('.form-control-clear').click(function() {
            $(this).siblings('input[type="text"]').val('');
            $(this).toggleClass('hidden', true);
            resetSearchText();
        });
    });

    function resetSearchText() {
        var nodes = $('#default-tree').treeview('search', [ 'All', {
            ignoreCase: true,     // case insensitive
            exactMatch: true     // like or equals
        }]);
        if (nodes.length > 0) {
            var root = nodes[0];
            var checkedLeafNodes = _.map(_getAllCheckedLeafNodesFromRoot(root), 'id').join("~");                  
            var url = "<?php echo site_url('products/filter/');?>"+checkedLeafNodes;       
            $("#product_list").load(url);            
        }
    }
</script>