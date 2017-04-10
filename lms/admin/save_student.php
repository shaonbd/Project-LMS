<?php
include('dbcon.php');
        
               $un = $_POST['un'];
               $fn = $_POST['fn'];
               $ln = $_POST['ln'];
               $eml = $_POST['eml'];
               $class_id = $_POST['class_id'];
               $pss = $_POST['pss'];
               $cnt = $_POST['cnt'];

               mysql_query("insert into student (firstname,lastname,class_id, username, password, email, contact_number,location,status)
		values ('$fn','$ln', '$class_id', '$un', '$pss', '$eml', '$cnt' ,'uploads/NO-IMAGE-AVAILABLE.jpg',  'Unregistered')"
		) 
		or die(mysql_error()); ?>
<?php    ?>