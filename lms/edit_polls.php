<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
    <body>
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('edit_polls_sidebar.php'); ?>
                <div class="span8" id="content">
                     <div class="row-fluid">						

					<?php 

                        $class_query = mysql_query("SELECT * from class LEFT JOIN teacher_class ON teacher_class.class_id = class.class_id JOIN full_marks ON full_marks.teacher_class_id = teacher_class.teacher_class_id where poll_id = '$get_id'")or die(mysql_error());

                        $class_row = mysql_fetch_array($class_query);
                    ?>
                                    
                        <ul class="breadcrumb">
                            <li><a href="#"><?php echo $class_row['class_name']; ?></a> <span class="divider">/</span></li>
                            <li><a href="#">Academic Year: <?php echo $class_row['school_year']; ?></a> <span class="divider">/</span></li>
                            <li><a href="#"><b>My Students</b></a></li>
                        </ul>

                    <!-- block -->

                    <div id="block_bg" class="block">
                        <div class="navbar navbar-inner block-header">
                            
                        </div>
                            
            <!-- editing block starts -->


			<form class="form-horizontal"  method="post">						                                 
        

            <table cellpadding="0" cellspacing="0" border="0" class="table" id="">
                    <thead>
                            <tr>
                                <th>Poll Name</th>
                                <th>Prev. Weight value</th>
                                <th>Prev. Marks value</th>
                                <th>New Weight value</th>
                                <th>New Marks value</th>
                            </tr>                                                
                    </thead>

                <tbody>
                        <?php
                            $my_student = mysql_query(" SELECT * FROM full_marks WHERE poll_id = '$get_id' ")or die(mysql_error());
                                while($row = mysql_fetch_array($my_student)){
                        
                                $id = $row['poll_id'];
                        ?>

                            <tr>
                                <td><?php echo $row['poll_name']; ?></td> 
                                <td><?php echo $row['poll_weight']; ?></td> 
                                <td><?php echo $row['number']; ?></td>                                    
                                <td><input type="text" name="<?php echo "pollw".$id ?>" id="inputmarks" placeholder="score..."></td>
                                <td><input type="text" name="<?php echo "pollm".$id ?>" id="inputmarks" placeholder="score..."></td>     
                            </tr>

                                                            
                        <?php } ?>                                                
                                                                                                                                     
                </tbody> 
            </table>  

                <div class="control-group">
                    <div class="controls">                                      
                        <button name="submit" type="submit" class="btn btn-success"><i class="icon-save"></i>Save</button>
                    </div>
                </div>                                                               
                                            
            

            

            </form>

            
        <?php if(isset($_POST['submit'])){

        $temp_strm = "pollm"; 
        $temp_strw = "pollw";   

        
        $teacher_c_s = mysql_query(" SELECT * FROM full_marks WHERE poll_id = '$get_id' ");         

    
                    
                while($row = mysql_fetch_array($teacher_c_s)) {
                       
                    $i = $row['poll_id'];    
                    $update_weight = $_POST[$temp_strw.$i]; 
                    $update_marks = $_POST[$temp_strm.$i]; 

                    if ( $update_weight !== "" && $update_marks !== "") {

                        mysql_query("UPDATE full_marks set poll_weight = '$update_weight' , number = '$update_marks'  WHERE poll_id = '$get_id' ");                       
                    }
                    else if($update_weight !== "" && $update_marks == ""){

                        mysql_query("UPDATE full_marks set poll_weight = '$update_weight' WHERE poll_id = '$get_id' ");

                    }
                    else if($update_weight == "" && $update_marks !== ""){
                        mysql_query("UPDATE full_marks set number = '$update_marks'  WHERE poll_id = '$get_id' ");

                    }
                    else if($update_weight == "" && $update_marks == ""){

                    }                                   
    
            ?>
            <script>
               window.location = 'edit_polls.php<?php echo "?id=".$get_id ?>'  ;
            </script>
            
               
            <?php
                } 
            
    } ?>   



         <!-- editing block ends -->  


            </div>

            <!-- /block -->

            </div>
            </div>
            </div>
		
        <?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>
</html>