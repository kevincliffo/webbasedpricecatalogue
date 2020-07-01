<html>
    <head>
        <title>About Us</title>
        <link href='http://fonts.googleapis.com/css?family=Raleway:500,600,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>css/style.css">
        <link rel="shortcut icon" type="image/icon" href="<?php echo base_url(); ?>images/aboutus.ico" />
    </head>
    <body>
        <div id='about_us'>
            <div id='content'>
                <div id='tag'>
                    <img src="<?php echo base_url(); ?>images/head.png"/>
                </div>
            
                <h2>"You need it? We have Priced It...!!"
                    <b  style='float:right;'><?php echo '<b id="username_style">'. $this->session->userdata('username') .'</b>'; echo ' '.anchor('shopping','Home');?></b>
                </h2>
                <p style="font-size: 30">What is Web Based Price Catalogue?</p>
                <p style="font-size: 30">
                    We are an E-Commerce Company that enables users to compare the prices of commodities they 
                    intend to purchase without having to physically visit the stores or supermarkets from 
                    which they want to purchase the items from.
                </p>
                <p style="font-size: 30">                
                    Our target is the whole of Kenya but for starters we are dealing with Mombasa County first. 
                    Our intention is to make the consumers work easier when they want to purchase a commodity whose 
                    price they are not sure about and want to get the best offer available.
                </p> 
                <p style="font-size: 30"> 
                    It compares product prices for the Four major supermarkets in Mombasa County namely;
                    <ol style="font-size: 30">
                        <li>Nakumatt Supermarket</li>
                        <li>Uchumi Supermarket</li>
                        <li>Naivas Supermarket</li>
                        <li>Tusky's Supermarket</li>
                    </ol>
                </p> 
                <p>
                    <h2>Contact us</h2>
                    
                    <div id='about_us_table'>
                        <table>
                            <tr>
                                <td>
                                    Telephone
                                </td>
                                <td>
                                    +254725036299
                                </td>
                            </tr>
                            <tr>                              
                                <td>
                                    Email
                                </td>
                                <td>
                                    <a href="mailto:webbasedpricecatalogue@gmail.com">webbasedpricecatalogue@gmail.com</a>
                                </td>                        
                            </tr>
                            <tr>                              
                                <td>
                                    Website
                                </td>
                                <td>
                                    <?php echo anchor('shopping','www.webbasedpricecomparison.com');?>
                                </td>                        
                            </tr>
                            <tr>                              
                                <td>
                                </td>
                                <td>
                                    Mombasa, Kenya
                                </td>                        
                            </tr>                            
                        </table>
                    </div>
                    
                </p>
                <?php $this->load->view('page_footer'); ?>
            </div>
             
        </div>
      
    </body>
</html>
