<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
    <body>
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php //include('class_sidebar.php'); ?>
                <div class="span12" id="content">
                     <div class="row-fluid">
						

					<?php include('my_students_breadcrums.php'); ?>

                    <!-- block -->

                    <div id="block_bg" class="block">
                        <div class="navbar navbar-inner block-header">
                            <div id="" class="muted pull-right">
							<?php 
							$my_student = mysql_query("SELECT * FROM teacher_class_student
										LEFT JOIN student ON student.student_id = teacher_class_student.student_id INNER JOIN class ON class.class_id = student.class_id where teacher_class_id = '$get_id' order by lastname ")or die(mysql_error());
							$count_my_student = mysql_num_rows($my_student); ?>
							Number of Students: <span class="badge badge-info"><?php echo $count_my_student;?>
                                
                            </span>
                                
							</div>
                        </div>
                            
            <!-- editing block starts -->


			<form class="form-horizontal"  method="post">						                                 
        

            <table cellpadding="0" cellspacing="0" border="0" class="table" id="">
                    <thead>
                            <tr>
                                <th>Poll Name</th>
                                <th>Weight Previous value</th>
                                <th>Marks Previous value</th>
                                <th>Weight new value</th>
                                <th>Marks new value</th>
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
                    else{

                    }
                    

                      
            ?>
            
               
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