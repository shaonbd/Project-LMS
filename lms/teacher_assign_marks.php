<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
    <body>
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('class_sidebar.php'); ?>
                <div class="span9" id="content">
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
            <?php
            $my_student = mysql_query("SELECT * FROM teacher_class_student
                        LEFT JOIN student ON student.student_id = teacher_class_student.student_id INNER JOIN class ON class.class_id = student.class_id where teacher_class_id = '$get_id' order by lastname ")or die(mysql_error());
                
                while($row = mysql_fetch_array($my_student)){
                
            ?>                                        
           
           

            <table cellpadding="0" cellspacing="0" border="0" class="table" id="">
                    <thead>
                            <tr>
                                <th>Student Name</th>
                                <th>NSU ID</th>
                                <th>Marks</th> 
                            </tr>                                                
                    </thead>

                <tbody>
                        <?php
                            $my_student = mysql_query(" SELECT * FROM teacher_class_student JOIN student ON student.student_id = teacher_class_student.student_id where teacher_class_id = '$get_id' order by firstname")or die(mysql_error());
                                while($row = mysql_fetch_array($my_student)){
                        
                                $id = $row['student_id'];
                                ?>

                            <tr>
                                <td><?php echo $row['firstname']." ".$row['lastname']; ?></td>
                                <td><?php echo $row['student_id']; ?></td>                                    
                                <td><input type="text" name="<?php echo "marks".$id ?>" id="inputmarks" placeholder="score..."></td>     
                            </tr>

                                                            
                        <?php } ?>  


                                                        
                </tbody> 
            </table>                                                                   
                                            
            <?php } ?>

            <div class="control-group">
                <div class="controls">                                      
                <button name="submit" type="submit" class="btn btn-success"><i class="icon-save"></i>Save</button>
                </div>
            </div>

            </form>

            
        <?php if(isset($_POST['submit'])){

        $temp_str = "marks";    

        $poll_query = mysql_query("SELECT * from full_marks where teacher_class_id = '$get_id' ")or die(mysql_error());
        $teacher_c_s = mysql_query("SELECT * FROM teacher_class_student LEFT JOIN student ON student.student_id = teacher_class_student.student_id INNER JOIN class ON class.class_id = student.class_id where teacher_class_id = '$get_id' "); 



        while($row1 = mysql_fetch_array($poll_query)){

            $poll_count = $row1['poll_id'];

        }
        $lastpoll_value = $poll_count;

    
            if($lastpoll_value){
        
                while($row = mysql_fetch_array($teacher_c_s)) {

                    $t_c_std = $row['teacher_class_student_id'];        
                    $i = $row['student_id'];    
                    $marks = $_POST[$temp_str.$i];  

                mysql_query("INSERT INTO marks (poll_id,marks,teacher_class_student_id) VALUES('$poll_count','$marks',  '$t_c_std')");      
            ?>
            <script>
                window.location = 'show_marks.php<?php echo "?id=".$lastpoll_value?>';
            </script>
               
            <?php
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