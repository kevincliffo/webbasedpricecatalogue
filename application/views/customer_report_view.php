<html>
    
    <head>
        <title>Customer Report</title>
        <link href='http://fonts.googleapis.com/css?family=Raleway:500,600,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>css/style.css">
        <link rel="shortcut icon" type="image/icon" href="<?php echo base_url(); ?>images/report.ico" />
        
	<style type="text/css" media="screen">
	#customer_container {
	 width: 979px;
	 margin: auto;
	font-family: helvetica, arial;
	}

	table {
	 width: 979px;
	 margin-bottom: 10px;
	}

	td {
	 border-right: 1px solid #aaaaaa;
	 padding: 1em;
	}

	td:last-child {
	 border-right: none;
	}

	th {
	 text-align: left;
	 padding-left: 1em;
	 background: #cac9c9;
	border-bottom: 1px solid white;
	border-right: 1px solid #aaaaaa;
	}

	#pagination a, #pagination strong {
	 background: #e3e3e3;
	 padding: 4px 7px;
	 text-decoration: none;
	border: 1px solid #cac9c9;
	color: #292929;
	font-size: 13px;
	}

	#pagination strong, #pagination a:hover {
	 font-weight: normal;
	 background: #cac9c9;
	}		
	</style>        
    </head>
    
    <body>
        <div id='content'>
            <div id='printablearea'>
                <div id='tag'>
                    <img src="<?php echo base_url(); ?>images/head.png"/>
                </div>

                <h2>Customer's Report
                    <b  style='float:right;'><?php echo '<b id="username_style">'. $this->session->userdata('username') .'</b>'; echo ' '.anchor('shopping','Home');?></b>
                </h2>
                <div id="customer_container">
                    <?php echo $this->table->generate($records); ?>
                    <?php echo 'page: '; ?>
                    <?php echo $this->pagination->create_links(); ?>
                </div>
                </br>
            </div>
            
            <button  class = 'fg-button teal' onclick="printreport()">Print Report</button>

            <script>
                function printreport() {
                    window.print();
                }
            </script> 
            <?php $this->load->view('page_footer'); ?>
        </div>
        
        <script src="<?php echo base_url(); ?>jquery/jquery.js" type="text/javascript" charset="utf-8"></script>	

        <script type="text/javascript" charset="utf-8">
            $('tr:odd').css('background', '#e3e3e3');
            $('tr:even').css('background', '#a3e7e3');
        </script>        
           
        
    </body>
</html>    