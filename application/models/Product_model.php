<?php
class Product_model extends CI_Model {

    public function __construct()
    {
        $this->load->database();
    }

    public function find_products_by_category_id($c_id = NULL) {
        $query_string = 'SELECT p.id, pc.c_id, p.product_code, 
                            p.name_nl, p.name_en, p.name_cn, p.weight_gr,
                            p.n_piece, p.price, ps.url
                            FROM category AS c, 
                            product_category AS pc, 
                            product AS p,
                            product_assets AS ps
                            WHERE c.id = pc.c_id
                            AND pc.p_id = p.id
                            AND ps.p_id = p.id';
        $group_by = ' GROUP BY p.id';
        if ($c_id === NULL) {
            $query = $this->db->query($query_string.$group_by);
            return $query->result_array();
        }

        $query_string = $query_string. " AND c_id  = '?' ".$group_by;
        $query = $this->db->query($query_string, array('c_id' => $c_id));
        return $query->result_array();
    }
}
