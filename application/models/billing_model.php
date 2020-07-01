<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Billing_model extends CI_Model {
    
     // Get all details ehich store in "products" table in database.
        public function get_all()
	{
		$query = $this->db->get('products');
		return $query->result_array();
	}
    
    // Insert customer details in "customer" table in database.
	public function insert_customer($data)
	{
		$this->db->insert('customers', $data);
		$id = $this->db->insert_id();
		return (isset($id)) ? $id : FALSE;		
	}
	
        // Insert order date with customer id in "orders" table in database.
	public function insert_order($data)
	{
		$this->db->insert('orders', $data);
		$id = $this->db->insert_id();
		return (isset($id)) ? $id : FALSE;
	}
	
        // Insert ordered product detail in "order_detail" table in database.
	public function insert_order_detail($data)
	{
		$this->db->insert('order_detail', $data);
	}
        
        public function getcustomers()
        {
		$query = $this->db->get('customers');
                //$query = $this->db->field_data('customers');
		return $query->result();            
        }

        public function getproductstotalrows()
        {
            $query = $this->db->get('products')->num_rows();
            return $query; 
        }
        
        public function getproductsrecords($config)
        {
            $query = $this->db->get('products', $config['per_page'], $this->uri->segment(3));
            return $query;            
        }
}