<?php
class Category_model extends CI_Model {

    public function __construct()
    {
        $this->load->database();
    }

    public function get_category_tree()
    {
        $query = $this->db->query('SELECT child.name as child_name, parent.name as parent_name
            FROM category AS child, category AS parent
            WHERE child.parent_id = parent.id
            UNION
            SELECT name, NULL 
            FROM category
            WHERE parent_id IS NULL');
        return $query->result_array();
    }

    public function get_category_by_id($id = NULL)
    {
        if ($id === NULL)
        {
            $query = $this->db->get('category');
            return $query->result_array();
        }

        $query = $this->db->get_where('category', array('id' => $id));
        return $query->row_array();
    }
}
