<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if ( ! function_exists('parseTree')){

    function parseTree($tree, $checkedNodes, $root = NULL) {
        $return = array();
        $all_checked = count($checkedNodes) === 0;
        # Traverse the tree and search for direct children of the root
        foreach($tree as $child => $value) {
            # A direct child is found
            $parent = $value[0];    
            $id = $value[1];    
            $checked = $all_checked || in_array($id, $checkedNodes);
            if($parent == $root) {
                # Remove item from tree (we don't need to traverse this again)
                unset($tree[$child]);
                # Append the child into result array and parse its children                    
                $children = parseTree($tree, $checkedNodes, $child);
                if ($children === NULL) {
                    $return[] = array(
                        'id' => $id,
                        'text' => $child,
                        'state' => array(
                            'expanded' => true,
                            'checked' => $checked
                        )                        
                    );
                } else {
                    $return[] = array(
                        'id' => $id,
                        'text' => $child,
                        'nodes' => parseTree($tree, $checkedNodes, $child),
                        'state' => array(
                            'expanded' => true,
                            'checked' => $checked
                        )                        
                    );
                }                        
            }
        }
        return empty($return) ? NULL : $return;    
    }
    
}