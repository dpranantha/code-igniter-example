<?php
class Product_model extends CI_Model {

    public function __construct()
    {
        $this->load->database();
    }

    public function find_products_by_category_id($c_id = NULL) {
        $this->db->select('p.id, pc.c_id, p.product_code, p.name_nl, p.name_en, p.name_cn, p.weight_gr, p.n_piece, p.price, ps.url')
        ->from('category AS c, product_category AS pc,product AS p, product_assets AS ps')
        ->where('c.id = pc.c_id AND pc.p_id = p.id AND ps.p_id = p.id')
        ->group_by('p.id');
        
        if ($c_id === NULL) {
            $query = $this->db->get();
            return $query->result_array();
        }
        // this is taken care of by CI to sanitize
        $query = $this->db->where_in('c.id', $c_id)->get();
        return $query->result_array();
    }
}
