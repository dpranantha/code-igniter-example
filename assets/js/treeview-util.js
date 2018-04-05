// Author: Danu Pranantha
// Utility functions for bootstrap-treeview
// requires: underscore.min.js, bootstrap-treeview.min.js, bootstrap-treeview.min.css, jquery-2.1.3.min.js

// use for autochecked

function autoChecked(node, tree) {
    var childrenNodes = _.map(_getChildren(node), 'nodeId');
    var allNodes = childrenNodes.concat(_.map(_getParentsNeedToBeAutoChecked(node, $(tree)), 'nodeId'));                
    $(tree).treeview('checkNode', [allNodes, {silent: true}]);     
}

function autoUnchecked(node, tree) {
    var childrenNodes = _.map(_getChildren(node), 'nodeId')
    var parentNodes = _.map(_getParents(node, $(tree)), 'nodeId');
    var allNodes = parentNodes.concat(childrenNodes);
    $(tree).treeview('uncheckNode', [allNodes, {silent: true}]);            
}

// library
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