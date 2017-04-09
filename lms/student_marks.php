<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
    <body>
		<?php include('navbar_student.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('student_marks_link.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">
						

						<?php //include('my_students_breadcrums.php'); ?>


                        <!-- editing block -->                         
                             

                       <div id="block_bg" class="block">
                                <div class="navbar navbar-inner block-header">                                    
                                   
                                </div>
                            <div class="block-content collapse in">
                                    <div class="span12">
                                            
                                   
                                <!-- editing poll form -->


            <table cellpadding="0" cellspacing="0" border="0" class="table" id="">
                    <thead>
                            <tr>
                                <th>Test Name</th>
                                <th>Marks</th>
                                <th>Score</th> 
                            </tr>                                                
                    </thead>

                <tbody>
                        <?php
                            $student_marks = mysql_query(" SELECT * FROM marks JOIN full_marks ON full_marks.poll_id = marks.poll_id WHERE teacher_class_student_id = '$get_id' ") or die(mysql_error());
                            
                            while($row = mysql_fetch_array($student_marks)){                            	

                        ?>

                            <tr>
                                <td><?php echo $row['poll_name']; ?></td>
                                <td><?php echo $row['number']; ?></td>
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