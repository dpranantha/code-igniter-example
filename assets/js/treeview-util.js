// Author: Danu Pranantha
// Utility functions for bootstrap-treeview
// requires: underscore.min.js, bootstrap-treeview.min.js, bootstrap-treeview.min.css, jquery-2.1.3.min.js

// use for autochecked

function autoChecked(node, tree) {
    var childrenNodes = _getChildren(node);
    var parentNodes = _getParentsNeedToBeAutoChecked(node, $(tree));
    var allNodes = childrenNodes.concat(parentNodes);      
    $(tree).treeview('checkNode', [allNodes, {silent: true}]);     
    // bug in treeview
    $(tree).treeview('checkNode', [_.map(allNodes, 'nodeId'), {silent: true}]);     
}

function autoUnchecked(node, tree) {
    var childrenNodes = _getChildren(node);
    var parentNodes = _getParents(node, $(tree));
    var allNodes = parentNodes.concat(childrenNodes);
    $(tree).treeview('uncheckNode', [allNodes, {silent: true}]);
    // bug in treeview
    $(tree).treeview('uncheckNode', [_.map(allNodes, 'nodeId'), {silent: true}]);
}

// library
function _getAllCheckedLeafNodesFromRoot(node) {
    return _.chain(_getLeafChildren(node))
    .filter(function(leaf) { return leaf.state.checked;})
    .value();    
}

function _getLeafChildren(node) {
    if (node.nodes === undefined) return [node];
    var childrenNodes =[];
    node.nodes.forEach(function(child) {  
            childrenNodes = childrenNodes.concat(_getLeafChildren(child));            
    });
    return childrenNodes;
}

function _getChildren(node) {
    if (node.nodes === undefined) return [];
    var childrenNodes = node.nodes;
    node.nodes.forEach(function(child) {
            childrenNodes = childrenNodes.concat(_getChildren(child));
    });
    return childrenNodes;
}

function _getSiblings(node, tree) {
    if (node === undefined) return [];
    var siblings = $(tree).treeview('getSiblings', node);
    if (siblings == undefined) return [];        
    return siblings;
}
function _getRoot(node, tree) {
    if (node === undefined) return null;
    var currNode = node; 
    while (currNode.parentId !== undefined) {
        currNode = $(tree).treeview('getParent', currNode);            
    }
    return currNode;
}

function _getDirectParent(node, tree) {
    if (node === undefined || node.parentId === undefined) return [];
    return [$(tree).treeview('getParent', node)];
}

function _getParents(node, tree) {
    if (node === undefined) return [];
    var parentNodes = [];
    var currNode = node; 
    while (currNode.parentId !== undefined) {
            currNode = $(tree).treeview('getParent', currNode);
            parentNodes.push(currNode);        
    }
    return parentNodes;
}

function _isAllSiblingsChecked(node, tree) {
    if (node === undefined) return false;
    var numberOfUnchecked = _.chain(_getSiblings(node, $(tree)))
                    .filter(function(sibling){ return !sibling.state.checked; })
                    .value()
                    .length;
    if (numberOfUnchecked == 0) {
            return true;
    }
    return false;
}

function _getParentsNeedToBeAutoChecked(node, tree) {
    if (node === undefined || node.parentId === undefined) return [];
    var parentNodes = [];
    var currNode = node;
    var allSiblingsChecked = _isAllSiblingsChecked(currNode, tree);
    while (allSiblingsChecked && currNode.parentId !== undefined) {                
            currNode = $(tree).treeview('getParent', currNode);
            allSiblingsChecked = _isAllSiblingsChecked(currNode, tree);
            parentNodes.push(currNode);        
    } 
    return parentNodes;
}