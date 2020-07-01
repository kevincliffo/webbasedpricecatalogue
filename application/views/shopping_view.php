<html>
    <head>
        <title>Price Comparison WBPCS</title>
        <link href='http://fonts.googleapis.com/css?family=Raleway:500,600,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>css/style.css">
        <link rel="shortcut icon" type="image/icon" href="<?php echo base_url(); ?>images/favicon.ico" />

        <script type="text/javascript">
           // window.history.forward();
            
            // To conform clear all data in cart.
            function clear_cart() {
                var result = confirm('Are you sure want to clear all bookings?');

                if (result) {
                    window.location = "<?php echo base_url(); ?>index.php/shopping/remove/all";
                } else {
                    return false; // cancel button
                }
            }
        </script>
        <script src="<?php echo base_url(); ?>jquery/jquery.js" type="text/javascript" charset="utf-8"></script>
 
    </head>
    <body>
        <?php 
            $this->output->set_header('Last-Modified:'.gmdate('D, d M Y H:i:s').'GMT');
            $this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate');
            $this->output->set_header('Cache-Control: post-check=0, pre-check=0',false);
            $this->output->set_header('Pragma: no-cache');
        ?>
        <div id='content'>
            <div id='tag'>
                <!-- Formget Fugo logo image -->
                 <img src="<?php echo base_url(); ?>images/head.png"/>
            </div>
            <div id="cart" >
                <div id = "heading">
                    <h2 align="">Welcome  
                        <b  style='float:right;'><?php echo '<b id="username_style">'. $this->session->userdata('username') .'</b>'; echo ' '.anchor('login/logout','Logout');?></b>
                    </h2>
                    <h2> 
                        <?php 
                            echo anchor('shopping/aboutus','About Us') . ' | ';
                            echo anchor('shopping/customerreport','Customer Report') . ' | ';
                            echo anchor('shopping/productsreport','Products Report') . ' | ';
                            echo anchor('shopping/ordereditemsreport','Ordered Items Report') . ' | ';
                            echo anchor('shopping','Home') . ' | ';
                            if($this->session->userdata('username') == 'admin'){
                                echo anchor('shopping/admin_interface','Administrator') . ' | ';
                            }
                        ?> 
                    </h2>                    
                </div>
                <div id="text"> 
                    <?php  $cart_check = $this->cart->contents();
            
                        // If cart is empty, this will show below message.
                        if(empty($cart_check)) {
                            echo 'To add Products to your Order List, select Store/Price from drop down list and click on "Add Order" Button'; 
                        }          
                    ?> 
                </div>
            
                <table id="table" border="0" cellpadding="6px" cellspacing="1px">
                    <?php
                        // All values of cart store in "$cart". 
                        if ($cart = $this->cart->contents()): ?>
                            <tr id= "main_heading">
                              <td>Serial</td>
                              <td>Store</td>
                              <td>Name</td>
                              <td>Price</td>
                              <td>Quantity</td>
                              <td>Amount</td>
                              <td>Cancel Product</td>
                            </tr>
                            <?php
                                // Create form and send all values in "shopping/update_cart" function.
                                echo form_open('shopping/update_cart');
                                $grand_total = 0;
                                $i = 1;

                                foreach ($cart as $item):
                                    //   echo form_hidden('cart[' . $item['id'] . '][id]', $item['id']);
                                    //  Will produce the following output.
                                    // <input type="hidden" name="cart[1][id]" value="1" />

                                    echo form_hidden('cart[' . $item['id'] . '][id]', $item['id']);
                                    echo form_hidden('cart[' . $item['id'] . '][store]', $item['store']);
                                    echo form_hidden('cart[' . $item['id'] . '][rowid]', $item['rowid']);
                                    echo form_hidden('cart[' . $item['id'] . '][name]', $item['name']);
                                    echo form_hidden('cart[' . $item['id'] . '][price]', $item['price']);
                                    echo form_hidden('cart[' . $item['id'] . '][qty]', $item['qty']);
                            ?>
                            <tr>
                                <td>
                                    <?php echo $i++; ?>
                                </td>
                                <td>
                                    <?php echo $item['store']; ?>
                                </td>                                
                                <td>
                                    <?php echo $item['name']; ?>
                                </td>
                                <td>
                                    KES <?php echo number_format($item['price'], 2); ?>
                                </td>
                                <td>
                                    <?php echo form_input('cart[' . $item['id'] . '][qty]', $item['qty'], 'maxlength="3" size="1" style="text-align: right"'); ?>
                                </td>
                                <?php $grand_total = $grand_total + $item['subtotal']; ?>
                                <td>
                                    KES <?php echo number_format($item['subtotal'], 2) ?>
                                </td>
                                <td>
                              
                                    <?php 
                                        // cancle image.
                                        $path = "<img src='http://localhost/webbasedpricecatalogue/images/cart_cross.jpg' width='25px' height='20px'>";
                                        echo anchor('shopping/remove/' . $item['rowid'], $path); 
                                    ?>
                                </td>
                                <?php endforeach; ?>
                            </tr>
                            <tr>
                                <td>
                                    <b>Order Total: KES <?php echo number_format($grand_total, 2); ?></b>
                                </td>
                                <td>
                                    <b></b>
                                </td>                        
                                <?php // "clear cart" button call javascript confirmation message ?>
                                    <td colspan="5" align="right"><input type="button" class ='fg-button teal' value="Clear Order" onclick="clear_cart()">
                            
                                    <?php //submit button. ?>
                                    <input type="submit" class ='fg-button teal' value="Update Order">
                                    <?php echo form_close(); ?>
                            
                                    <!-- "Place order button" on click send "billing" controller  -->
                                    <input type="button" class ='fg-button teal' value="Place Order" onclick="window.location = 'shopping/billing_view'"></td>
                            </tr>
                        <?php endif; ?>
                </table>
                 
                </div>

                <div id="products_e" align="center">

                    <h2 id="head" align="center">
                        Available Products as at 
                        <?php 
                            $format = "D d M Y";
                            $time = date("h:i:sa");
                            echo date($format);//, $time.'');
                        ?>                                           
                    </h2>
                    <?php
            
                        // "$products" send from "shopping" controller,its stores all product which available in database. 
                        foreach ($products as $product):
                            $id = $product['serial'];
                            $name = $product['name'];
                            $description = $product['description'];
                            $nakumatt_price = $product['nakumatt_price'];
                            $tuskys_price = $product['tuskys_price'];
                            $uchumi_price = $product['uchumi_price'];
                            $naivas_price = $product['naivas_price'];
                    ?>
                
                    <div id='product_div'>  
                    <div id='image_div'>
                        <img src="<?php echo base_url() . $product['picture'] ?>"/>
                    </div>
                    <div id='info_product'>
                        <div id='name'><?php echo $name; ?></div>
                        <div id='desc'>  <?php echo $description; ?></div>
                        <?php
                        // Create form and send values in 'shopping/add' function.
                        echo form_open('shopping/add');
                        echo form_hidden('id', $id);
                        echo form_hidden('name', $name);

                        $options = array(
                                        'Nakumatt-'.$nakumatt_price  => 'Nakumatt-'.$nakumatt_price,
                                        'Tuskys-'.$tuskys_price    => 'Tuskys-'.$tuskys_price,
                                        'Uchumi-'.$uchumi_price    => 'Uchumi-'.$uchumi_price,
                                        'Naivas-'.$naivas_price    =>  'Naivas-'.$naivas_price,
                                        );                                    
                        echo form_dropdown('stores', $options);                        
                        ?> 
                    </div> 

                    <div id='add_button'>
                        <?php
                        $btn = array(
                            'class' => 'fg-button teal',
                            'value' => 'Add Order',
                            'name' => 'action'
                        );
                        
                        // Submit Button.
                        echo form_submit($btn);
                        echo form_close();
                        ?>
                        
              
                    </div>
                        
                </div> 
                
            <?php endforeach; ?>
            </div>  
              
        </div> 
            
    </body>    
</html>
 