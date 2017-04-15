<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
    <body>
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('show_marks_link.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">
						

						<?php //include('my_students_breadcrums.php'); ?>


                        <!-- editing block -->                         
                             

                        <div id="block_bg" class="block">
                                <div class="navbar navbar-inner block-header">
                        <?php
                            $student_marks = mysql_query(" SELECT * FROM marks as m JOIN full_marks as f ON f.poll_id = m.poll_id where f.poll_id = '$get_id' ") or die(mysql_error());

                            
                            $row = mysql_fetch_array($student_marks);

                                echo $row['poll_name']; 
                            
                        ?>
                                    
                                   
                                </div>
                            <div class="block-content collapse in">
                                    <div class="span12">
                                            
                                   
                                <!-- editing poll form -->


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
                            $student_marks = mysql_query(" SELECT * FROM marks JOIN teacher_class_student ON teacher_class_student.teacher_class_student_id = marks.teacher_class_student_id INNER JOIN student ON student.student_id=teacher_class_student.student_id where poll_id = '$get_id' ") or die(mysql_error());

                            
                            while($row = mysql_fetch_array($student_marks)){
                        ?>

                            <tr>
                                <td><?php echo $row['firstname']." ".$row['lastname']; ?></td>
                                <td><?php echo $row['student_id']; ?></td>                                    
                                <td><?php echo $row['marks']; ?></td>   
                            </tr>

                                                            
                        <?php } ?>                                            
                                                        
                </tbody> 
            </table>  

                                <!-- editing poll form -->    


                                </div>
                            </div>
                        </div>
                        <!-- /block --> 



                        <!-- /editing block -->


                    </div>
                </div>
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>
</html>