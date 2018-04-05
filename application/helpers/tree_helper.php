<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if ( ! function_exists('parseTree')){

    function parseTree($tree, $root = NULL) {
        $return = array();
        # Traverse the tree and search for direct children of the root
        foreach($tree as $child => $parent) {
            # A direct child is found
            if($parent == $root) {
                # Remove item from tree (we don't need to traverse this again)
                unset($tree[$child]);
                # Append the child into result array and parse its children                    
                $children = parseTree($tree, $child);
                if ($children === NULL) {
                    $return[] = array(
                        'text' => $child
                    );
                } else {
                    $return[] = array(
                        'text' => $child,
                        'nodes' => parseTree($tree, $child)
                    );
                }                        
            }
        }
        return empty($return) ? NULL : $return;    
    }
    
}