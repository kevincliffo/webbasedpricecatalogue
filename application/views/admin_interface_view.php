<html>
    <head>
        <title>Admin Interface</title>
        <link href='http://fonts.googleapis.com/css?family=Raleway:500,600,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>css/style.css">
        <link rel="shortcut icon" type="image/icon" href="<?php echo base_url(); ?>images/user_admin.ico" />
    </head>
    <body>
        <div id='about_us'>
            <div id='content'>
                <div id='tag'>
                    <img src="<?php echo base_url(); ?>images/head.png"/>
                    
                </div>
                <div id = "heading">
                    <h2 align="">Administrator Interface  
                        <b  style='float:right;'> <?php echo ' '.anchor('shopping','Home');?></b>
                    </h2>
                </div>
                
                <h3>Stores Management Interface</h3>
                <b><h4>Update</h4></b>
                <?php
                    $sql = "SELECT * FROM stores";
                    $store_result = $this->db->query($sql)->result();
                    
                    
                    foreach ($store_result as $value) {
                        $storeids[] = $value->storeid;
                        $storenames[] = $value->storename;
                        $storeemails[] = $value->storeemail;
                    }
                    
                    echo form_open('shopping/add_update_stores');                                  
                    for($i=0;$i<=count($store_result)-1;$i++){
                        echo form_label($storenames[$i], 'username'). "<br>"; 
                        echo form_input(array('name'=>'storeid_Update'.$storenames[$i], 'size'=>'1', 'readonly'=>'true', 'value'=>$storeids[$i])). " ";
                        echo form_input(array('name'=>'storename_Update'.$storenames[$i], 'value'=>$storenames[$i])). " ";
                        echo form_input(array('name'=>'storeemail_Update'.$storenames[$i], 'value'=>$storeemails[$i])). " ";

                        $btnUpdate = array('value' => 'Update '.$storenames[$i]."",
                                           'name' => 'action'
                                           );
                    
                        echo form_submit($btnUpdate). "<br>"."<br>";
                    }
                    
                    echo "<b><h4>Add</h4></b>";
                    echo form_input(array('name' => 'storename_Add', 'value' => '', 'placeholder' => 'Store Name' )). " ";
                    echo form_input(array('name' => 'storeemail_Add', 'value' => '', 'placeholder' => 'Store Email' )). " ";
                    $btnAdd = array('value' => 'Add',
                                    'name' => 'action'
                                    );
                    echo form_submit($btnAdd). "<br>"."<br>";
                    echo form_close();
                ?> 
            </div>
        </div>
    </body>
</html>