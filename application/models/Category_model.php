<?php
class Category_model extends CI_Model {

    public function __construct()
    {
        $this->load->database();
    }

    public function get_category_tree()
    {
        $query = $this->db->query('SELECT child.name as child_name, parent.name as parent_name, child.id as id
            FROM category AS child, category AS parent
            WHERE child.parent_id = parent.id
            UNION
            SELECT name, NULL, id 
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

    public function get_sub_category_tree($id = NULL) {
        if ($id === NULL)
        {
            $query = $this->db->get('category');
            return $query->result_array();
        }

        // sanitize
        $query = $this->db->select('id, name, parent_id')
        ->from("(select * from category order by parent_id, id) category, (select @pv := ".$this->db->escape($id).") initialisation")
        ->where("find_in_set(parent_id, @pv) and length(@pv := concat(@pv, ',', id))")
        ->get();
        return $query->result_array();
    }
}
