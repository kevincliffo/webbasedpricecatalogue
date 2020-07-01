<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
    include('orderobject.php');
    class Shopping extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		//load model
		$this->load->model('billing_model');
                $this->load->library('cart');
                
	}

	public function index()
	{        
                //$username = $this->session->userdata('username');
                $is_logged_in = $this->session->userdata('is_logged_in');
                
                if($is_logged_in == 1)
                {
                    //Get all data from database
                    $data['products'] = $this->billing_model->get_all();
                    //send all product data to "shopping_view", which fetch from database.		
                    $this->load->view('shopping_view', $data);
                }
                else{
                    redirect('login/index');
                }
	}

        public function add_update_stores()
        {
            $selected_button = $this->input->post('action');
            $Update = FALSE;

            switch ($selected_button) {
                case "Update Naivas":
                    $Update = TRUE;
                    $storename = $this->input->post('storename_UpdateNaivas');
                    $storeemail = $this->input->post('storeemail_UpdateNaivas');
                    $storeid = $this->input->post('storeid_UpdateNaivas');                    
                    break;
                
                case "Update Nakumatt":
                    $Update = TRUE;
                    $storename = $this->input->post('storename_UpdateNakumatt');
                    $storeemail = $this->input->post('storeemail_UpdateNakumatt');
                    $storeid = $this->input->post('storeid_UpdateNakumatt');                   
                    break;
                
                case "Update Uchumi":
                    $Update = TRUE;
                    $storename = $this->input->post('storename_UpdateUchumi');
                    $storeemail = $this->input->post('storeemail_UpdateUchumi');
                    $storeid = $this->input->post('storeid_UpdateUchumi');
                    break;
                
                case "Update Tuskys":
                    $Update = TRUE;
                    $storename = $this->input->post('storename_UpdateTuskys');
                    $storeemail = $this->input->post('storeemail_UpdateTuskys');
                    $storeid = $this->input->post('storeid_UpdateTuskys');
                    break; 
                
                case "Add":
                    $Update = FALSE;
                    $maxstoreid = $product_detail = $this->db->query("SELECT MAX(storeid) AS MAX_StoreId FROM stores")->result();
                    $nextstoreid = $maxstoreid[0]->MAX_StoreId + 1;
                    $storename = $this->input->post('storename_Add');
                    $storeemail = $this->input->post('storeemail_Add');
                    $sql = "INSERT INTO stores(storeid, storename, storeemail) VALUES(" .$nextstoreid."" .", '" .$storename."', '". $storeemail."')";

                    $this->db->query($sql);
                    break;
            }
            
            if($Update){               
                $sql = "UPDATE stores SET storename='".$storename. "' ,storeemail='".$storeemail."' WHERE storeid=".$storeid;
                $this->db->query($sql);
                $sql = "ALTER TABLE stores ADD " .$storename. "_price float NOT NULL DEFAULT 0.0";
                $this->db->query($sql);
            }
            
            redirect('shopping/admin_interface');
        }
        
        public function admin_interface()
        {
            $this->load->view('admin_interface_view');
        }
        
	public function aboutus()
        {
            $this->load->view('aboutus_view');
        }
        
        public function userhaspriviledges($username)
        {
            $userhaspriviledges = FALSE;
            if(strtolower ($username) == 'admin')
            {
                $userhaspriviledges = TRUE;
            }
            return $userhaspriviledges;
            
        }
        
        public function productsreport()
        { 
            $this->load->library('pagination');
            $this->load->library('table');
            $this->load->model('billing_model');

            $config['base_url'] = base_url().'shopping/productsreport';
            //$config['total_rows'] = $this->db->get('products')->num_rows(); 
            $config['total_rows'] = $this->billing_model->getproductstotalrows();
            $config['per_page'] = 10;
            $config['num_links'] = 20;
            $config['full_tag_open'] = '<div id="pagination">';
            $config['full_tag_close'] = '</div>';

            
            $this->pagination->initialize($config);

            //$data['records'] = $this->db->get('products', $config['per_page'], $this->uri->segment(3));
            $data['records'] = $this->billing_model->getproductsrecords($config);
            
            $this->load->view('products_report_view', $data);
        }
        
        public function ordereditemsreport()
        {
            $this->load->library('pagination');
            $this->load->library('table');
            
            $username = $this->session->userdata('username');
            $userhaspriviledges = $this->userhaspriviledges($username);
            
            if($userhaspriviledges)
            {
                $sql = 'SELECT '
                     . ' products.serial        AS Products_Serial, '
                     . ' products.name          AS Products_Name, '
                     . ' products.description   AS Products_Description, '
                     . ' order_detail.orderid   AS OrderDetail_OrderId, '
                     . ' orders.customerid      AS Orders_Customer, '
                     . ' orders.date            AS Orders_Date, '
                     . ' customers.name         AS Customer_Name, '
                     . ' customers.email        AS Customer_Email, '
                     . ' customers.address      AS Customer_Address, '
                     . ' customers.phone        AS Customer_Phone '
                     . ' FROM products '
                     . ' INNER JOIN order_detail ON products.serial = order_detail.productid '
                     . ' INNER JOIN orders ON order_detail.orderid = orders.serial '
                     . ' INNER JOIN customers ON orders.customerid = customers.serial';

                $this->table->set_heading('Product_Serial', 'Product_Name', 'Product_Description', 'Order_Detail_OrderId', 'Order_CustomerId', 'Order_Date', 'Customer_Name', 'Customer_Email', 'Customer_Address', 'Customer_Phone');
                $config['base_url'] = 'http://localhost/webbasedpricecatalogue/shopping/ordereditemsreport';

                $config['total_rows'] = $this->db->query($sql)->num_rows();
                $config['per_page'] = 10;
                $config['num_links'] = 20;
                $config['full_tag_open'] = '<div id="pagination">';
                $config['full_tag_close'] = '</div>';

                $this->pagination->initialize($config);

                $data['records'] = $this->db->query($sql)->result_array();

                $this->load->view('ordered_items_report_view', $data);            
            }  else {
                echo "<script>alert('$username You do not have permission to view this Report.')</script>";
                $this->index();
            }
        }

        public function customerreport()
        { 
            $this->load->library('pagination');
            $this->load->library('table');
                
            $username = $this->session->userdata('username');
            $userhaspriviledges = $this->userhaspriviledges($username);
            
            if($userhaspriviledges)
            {            
                $config['base_url'] = 'http://localhost/webbasedpricecatalogue/shopping/customerreport';
                $config['total_rows'] = $this->db->get('customers')->num_rows();
                $config['per_page'] = 10;
                $config['num_links'] = 20;
                $config['full_tag_open'] = '<div id="pagination">';
                $config['full_tag_close'] = '</div>';

                $this->pagination->initialize($config);

                $data['records'] = $this->db->get('customers', $config['per_page'], $this->uri->segment(3));

                $this->load->view('customer_report_view', $data);
            }  else {
                echo "<script>alert('$username You do not have permission to view this Report.')</script>";
                $this->index();
            }
            
        }
        
	public function add()
	{
              // Set array for send data.
            $store_price = $this->input->post('stores');
            $collItems = explode('-', $store_price);
            $price = ((double)($collItems[1]));
            $store = $collItems[0];
     
            $insert_data = array(
                    'id' => $this->input->post('id'),
                    'store' => $store,
                    'name' => $this->input->post('name'),
                    'price' => $price,
                    'qty' => 1
            );		

            // This function add items into cart.
           $this->cart->insert($insert_data);

           // This will show insert data in cart.
           redirect('shopping');
        }
	
        function remove($rowid) {
                    // Check rowid value.
            if ($rowid==="all"){
                // Destroy data which store in  session.
                 $this->cart->destroy();
            }else{
                // Destroy selected rowid in session.
                    $data = array(
                            'rowid'   => $rowid,
                            'qty'     => 0
                    );
                 // Update cart data, after cancle.
                    $this->cart->update($data);
            }
		
            // This will show cancle data in cart.
            redirect('shopping');
	}
	
        function update_cart(){

            // Recieve post values,calcute them and update
            $cart_info =  $_POST['cart'] ;
            foreach( $cart_info as $id => $cart)
            {	
                $rowid = $cart['rowid'];
                $price = $cart['price'];
                $amount = $price * $cart['qty'];
                $qty = $cart['qty'];

                $data = array(
                        'rowid'   => $rowid,
                        'price'   => $price,
                        'amount' =>  $amount,
                        'qty'     => $qty
                );

                $this->cart->update($data);
            }
            redirect('shopping');        
	}	
        function billing_view(){
                // Load "billing_view".
            $this->load->view('billing_view');
        }
        
        public function save_order()
	{
          // This will store all values which inserted  from user.
            $orderobjects = array();
            $customer = array(
                    'name'      => $this->input->post('name'),
                    'email' 	=> $this->input->post('email'),
                    'address' 	=> $this->input->post('address'),
                    'phone' 	=> $this->input->post('phone')
            );		
            // And store user imformation in database.
            $cust_id = $this->billing_model->insert_customer($customer);
            $customer_name = $this->input->post('name');
            $customer_email = $this->input->post('email');
            $customer_address = $this->input->post('address');
            $customer_phone = $this->input->post('phone');
            
            $order = array(
                    'date'          => date('Y-m-d'),
                    'customerid'    => $cust_id
            );		

            $ord_id = $this->billing_model->insert_order($order);

            if ($cart = $this->cart->contents()):
                foreach ($cart as $item):
                    $total_price = $item['qty'] * $item['price'];
                    $orderobject = new OrderDetails();
                    
                    $order_detail = array(
                                    'orderid' 		=> $ord_id,
                                    'productid'          => $item['id'],
                                    'quantity' 		=> $item['qty'],
                                    'price' 		=> $item['price'],
                                    'total_price'       => $total_price,
                                    'store' 		=>  $item['store']
                    );

                    $cust_id = $this->billing_model->insert_order_detail($order_detail);                
                    $orderobject->SetStoreName($item['store']);
                
                    $orderobject->SetCustomerName($customer_name);
                    $orderobject->SetCustomerEmail($customer_email);
                    $orderobject->SetCustomerTelephone($customer_phone);
                    $orderobject->SetCustomerAddress($customer_address);
                    $orderobject->SetProductId($item['id']);
                    $orderobject->SetProduct($item['store']);
                    $orderobject->SetPrice($item['price']);
                    $orderobject->SetTotalPrice($total_price);
                    
                    $orderobjects[] = $orderobject;
                
                endforeach;
            endif;
            
            $this->sendemail($orderobjects);
            // After storing all imformation in database load "billing_success".
            $this->load->view('billing_success');
	}

        private function sendemail($orderobjects){
            $config = array(
                    'protocol' => 'smtp',
                    'smtp_host' => 'ssl://smtp.gmail.com',
                    'smtp_port' => '465',
                    'smtp_user' => 'ptimetechnologies@gmail.com',
                    'smtp_pass' =>'12345678',
                    'mailtype' => 'html'
                    );

            $this->load->library('email');
            $this->email->initialize($config);
            $this->email->set_newline("\r\n");
            
            $collnakumatt = array();
            $colltuskys = array();
            $collnaivas = array();
            $colluchumi = array();
                     
            foreach ($orderobjects as $orderobject) {
                switch ($orderobject->GetStoreName()) {                    
                    case 'Nakumatt':
                        $collnakumatt[] = $orderobject;
                        break;
                    case 'Naivas':
                        $collnaivas[] = $orderobject;
                        break;
                    case 'Tuskys':
                        $colltuskys[] = $orderobject;
                        break;
                    case 'Uchumi':
                        $colluchumi[] = $orderobject;
                        break;                    
                }                
            }
            
            $this->sendmailtostore($collnakumatt);
            $this->sendmailtostore($collnaivas);
            $this->sendmailtostore($colltuskys);
            $this->sendmailtostore($colluchumi);            
            
        }
        
        private function sendmailtostore($collstore){
            $first = TRUE;
            
            while(TRUE){
                if(count($collstore) == 0){
                    break;
                }
                                
                foreach ($collstore as $order_object) {
					print_r($order_object);
					print_r("\n");
                    if($first){
                        $first = FALSE; 
                        $email_content = "<html><h1>Request from Customer ".$order_object->GetCustomerName()+"" . "</h1></html>";
                        $email_content = $email_content . "<html><h2>Customer Details</h2></html>";
                        $email_content = $email_content . "<html>Customer Name: ".$order_object->GetCustomerName(). "</html><br>";
                        $email_content = $email_content . "<html>Customer Email: ".$order_object->GetCustomerEmail(). "</html><br>";
                        $email_content = $email_content . "<html>Customer Address: ".$order_object->GetCustomerAddress(). "</html><br>";
                        $email_content = $email_content . "<html>Customer Telephone: ".$order_object->GetCustomerTelephone(). "</html><br><br>"; 

                        $sql = "SELECT storeemail FROM stores where storename = '". $order_object->GetStoreName(). "'";
                        $store_result = $this->db->query($sql)->result();
                    }

                    $sql = "SELECT name, description, picture FROM products where serial = ". $order_object->GetProductId(). "";
                    $product_detail = $this->db->query($sql)->result();
                    $email_content = $email_content . "<html><h2>Product Details</h2></html>";
                    $email_content = $email_content . "<html>Product Name: ".$product_detail[0]->name. "</html><br>";
                    $email_content = $email_content . "<html>Product Description: ".$product_detail[0]->description. "</html><br>";
                    $email_content = $email_content . "<html>Product Price: ".$order_object->GetPrice(). "</html><br>";
                    $email_content = $email_content . "<html>Product Total Price: ".$order_object->GetTotalPrice(). "</html><br><br>";


                    $this->email->attach($product_detail[0]->picture);
                }
                
                $this->email->from('ptimetechnologies@gmail.com', 'PTime Tech Ltd.');

                $this->email->to($store_result[0]->storeemail);	 
                $this->email->subject('Order Email');		
                $this->email->message($email_content); 

                if($this->email->send()){
                    //echo 'Your email was sent, Succesfully.';
                }
                else{
                    show_error($this->email->print_debugger());
                }
                $this->email->clear(TRUE);
                break;
            }
            
        }
    }
