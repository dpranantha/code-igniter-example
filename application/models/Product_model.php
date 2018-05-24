<?php
class Product_model extends CI_Model {

    public function __construct()
    {
        $this->load->database();
    }

    public function find_products_by_category_id($limit, $start, $c_id = NULL) {
        $this->db->select('p.id, pc.c_id, p.product_code, p.name_de, p.name_en, p.name_cn, p.weight_gr, p.n_piece, ps.url')
        ->from('category AS c, product_category AS pc,product AS p, product_assets AS ps')
        ->where('c.id = pc.c_id AND pc.p_id = p.id AND ps.p_id = p.id')
        ->order_by('p.product_code')
        ->limit($limit, $start)
        ->group_by('p.id');
        
        if ($c_id === NULL) {
            $query = $this->db->get();
            return $query->result_array();
        }
        // this is taken care of by CI to sanitize
        $query = $this->db->where_in('c.id', $c_id)->get();
        return $query->result_array();
    }

    public function count_products_by_category_id($c_id = NULL) {
        $query = $this->db->select('count(p.id) as nbrows')
        ->from('category AS c, product_category AS pc,product AS p')
        ->where('c.id = pc.c_id AND pc.p_id = p.id');        
        
        if ($c_id === NULL) {
            $query = $query->get();
        } else {
            // this is taken care of by CI to sanitize
            $query = $this->db->where_in('c.id', $c_id)->get();        
        }
        $result = $query->row_array();
        if ($result === NULL || $result['nbrows'] === 0) {
            return 1;
        }
        return $result['nbrows'];
    }

    public function find_products_by_search_term($limit, $start, $search_term = NULL) {
        $this->db->select('p.id, pc.c_id, p.product_code, p.name_de, p.name_en, p.name_cn, p.weight_gr, p.n_piece, ps.url')
        ->from('category AS c, product_category AS pc,product AS p, product_assets AS ps')
        ->where('c.id = pc.c_id AND pc.p_id = p.id AND ps.p_id = p.id')
        ->order_by('p.product_code')
        ->limit($limit, $start)
        ->group_by('p.id');
        
        if ($search_term === NULL) {
            $query = $this->db->get();
            return $query->result_array();
        }
        $st = $this->db->escape_str($search_term);
        $query = $this->db->where("(p.name_en like '%".$st."%' or p.name_de like '%".$st."%' or p.name_cn like '%".$st."%')")->get();
        return $query->result_array();
    }

    public function count_products_by_search_term($search_term = NULL) {
        if ($search_term === NULL) {
            return 1;
        }
        // this is taken care of by CI to sanitize
        $query = $this->db->select('count(id) as nbrows')
        ->from('product')
        ->like('name_en', $search_term)
        ->or_like('name_de', $search_term)
        ->or_like('name_cn', $search_term)
        ->get();        
        
        $result = $query->row_array();
        if ($result === NULL || $result['nbrows'] === 0) {
            return 1;
        }
        return $result['nbrows'];
    }

    public function get_product($product_id) {
        $query = $this->db->select('p.id, p.product_code, p.name_de, p.name_en, p.name_cn, p.weight_gr, p.n_piece, p.cooking')
        ->from('product AS p, product_assets AS ps')
        ->where('ps.p_id = p.id AND p.id = '.$this->db->escape($product_id))
        ->get();

        return $query->row_array();
    }

    public function get_product_assets($product_id) {
        $query = $this->db->select('ps.url')
        ->from('product_assets AS ps')
        ->where('ps.p_id = '.$this->db->escape($product_id))
        ->limit(4)
        ->get();

        return $query->result_array();
    }
}
