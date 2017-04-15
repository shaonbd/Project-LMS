<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
    <body>
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('update_student_marks_sidebar.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">
						

					<?php include('my_students_breadcrums.php'); ?>

                    <!-- block -->

                    <div id="block_bg" class="block">
                        <div class="navbar navbar-inner block-header">
                            <div id="" class="muted pull-right">
							<?php 
							$my_student = mysql_query("SELECT * FROM teacher_class_student JOIN marks ON marks.teacher_class_student_id = teacher_class_student.teacher_class_student_id INNER JOIN full_marks ON full_marks.poll_id = marks.poll_id WHERE full_marks.poll_id = '$get_id' ")or die(mysql_error());
                            
							$count_my_student = mysql_num_rows($my_student); ?>

							Number of Students: 
                            <span class="badge badge-info"><?php echo $count_my_student;?></span>
                                
							</div>
                            <div id="" class="muted pull-left">
                                <span class="badge badge-info">

                                <?php 
                                    while ($row = mysql_fetch_array($my_student)) {
                                        $poll_name = $row['poll_name'];
                                    }
                                    echo $poll_name;
                                ?>
                                    
                                </span>
                            </div>    
                        </div>
                            
            <!-- editing block starts -->


			<form class="form-horizontal"  method="post">						                                 
        

            <table cellpadding="0" cellspacing="0" border="0" class="table" id="">
                    <thead>
                            <tr>
                                <th>Student Name</th>
                                <th>NSU ID</th>                                
                                <th>Prev. Obtained Marks / Alloted Marks</th>
                                <th>Score / Alloted Weight(%)</th>
                                <th>Update Marks</th>
                            </tr>                                                
                    </thead>

                <tbody>
                        <?php
                            $my_student = mysql_query(" SELECT * FROM student LEFT JOIN teacher_class_student ON teacher_class_student.student_id = student.student_id RIGHT JOIN marks ON marks.teacher_class_student_id = teacher_class_student.teacher_class_student_id JOIN full_marks ON full_marks.poll_id = marks.poll_id WHERE marks.poll_id = '$get_id' ")or die(mysql_error());
                                
                                while($row = mysql_fetch_array($my_student)){
                        
                                $id = $row['student_id'];
                                $number = $row['number'];
                                $percent_score = round(($row['marks'] * $row['poll_weight']) / $row['number']);
                                ?>

                            <tr>
                                <td><?php echo $row['firstname']." ".$row['lastname']; ?></td>
                                <td><?php echo $row['student_id']; ?></td> 
                                <td><?php echo $row['marks']." / ".$row['number']; ?></td>
                                <td><?php  echo $percent_score."/". $row['poll_weight']; ?></td>                                   
                                <td><input type="text" name="<?php echo "marks".$id ?>" id="inputmarks" class="input focused" placeholder="update score..."></td>     
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

            
        <?php 
        if(isset($_POST['submit'])){

        $temp_str = "marks";    

        
        $teacher_c_s = mysql_query(" SELECT * FROM student LEFT JOIN teacher_class_student ON teacher_class_student.student_id = student.student_id RIGHT JOIN marks ON marks.teacher_class_student_id = teacher_class_student.teacher_class_student_id WHERE poll_id = '$get_id' ");         

    
                    
                while($row = mysql_fetch_array($teacher_c_s)) {

                    $t_c_std = $row['teacher_class_student_id'];        
                    $i = $row['student_id'];    
                    $update_marks = $_POST[$temp_str.$i];  

                    if ($update_marks !== "") {

                        if ($update_marks <= $number) {
                            mysql_query("UPDATE marks set marks = '$update_marks' WHERE teacher_class_student_id = '$t_c_std' AND poll_id = '$get_id' ");
                        ?>
                        <script>
                            window.location = 'update_student_marks.php<?php echo "?id=".$get_id ?>';
                        </script>  

                        <?php
                        }
                        else{                           
                        
                            echo "Obtained marks can not exceed alloted marks";                       
                        
                        }                       


                    }                   
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