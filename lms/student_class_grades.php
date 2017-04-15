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
						

						<?php //include('my_students_breadcrums.php'); ?>



                        <!-- editing block -->                            
                             

                       
                        <div id="block_bg" class="block">
                                <div class="navbar navbar-inner block-header">
                                    
                                    <?php 

                                            $my_student = mysql_query("SELECT student_id,firstname, lastname FROM student
                                                                        where student_id = '$get_id' ")or die(mysql_error()); 

                                            while ($row = mysql_fetch_array($my_student)) {
                                                
                                                $id = $row['student_id'];

                                                if ($id= $get_id){
                                                                    
                                                    echo $row['firstname']." ".$row['lastname'];                                                                                                        
                                                } 
                                            }  
                               
                                    ?>     
                                </div>
                            <div class="block-content collapse in">
                                    <div class="span12">
                                            
                                   
                                    <!-- editing grade form -->


                                        <form class="form-vertical" method="post">
                                        <div class="control-group">
                                            <label class="control-label" for="inputEmail">Attendance</label>
                                            <div class="controls">
                                            <input type="text" name="attendance" id="inputattendance" placeholder="Score...">
                                            </div>
                                        </div>
                                        <div class="control-group">
                                            <label class="control-label" for="inputEmail">Assignment</label>
                                            <div class="controls">
                                            <input type="text" name="assignment" id="inputassignment" placeholder="Score..." >
                                            </div>
                                        </div> 

                                        <div class="control-group">
                                            <label class="control-label" for="inputEmail">Quiz</label>
                                            <div class="controls">
                                            <input type="text" name="quiz" id="inputquiz" placeholder="Score...">
                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="inputEmail">Midterm</label>
                                            <div class="controls">
                                            <input type="text" name="midterm" id="inputmidterm" placeholder="Score...">
                                            </div>
                                        </div>

                                        <div class="control-group">
                                            <label class="control-label" for="inputEmail">Final</label>
                                            <div class="controls">
                                            <input type="text" name="final" id="inputfinal" placeholder="Score...">
                                            </div>
                                        </div>


                                        <div class="control-group">
                                        <div class="controls">                                      
                                        <button name="save" type="submit" class="btn btn-success"><i class="icon-save"></i>Save</button>
                                        </div>
                                        </div>

                                        </form>

                                        <?php
                                        if (isset($_POST['save'])){
         
                                        $attendance_score = $_POST['attendance'];
                                        $assignment_score = $_POST['assignment'];
                                        $quiz_score = $_POST['quiz'];
                                        $midterm_score = $_POST['midterm'];
                                        $final_score = $_POST['final'];
                                        $total_score = $_POST['attendance'] + $_POST['assignment'] + $_POST['quiz'] +$midterm_score + $_POST['final'];

                                            if(is_numeric($attendance_score) && is_numeric($assignment_score) && is_numeric($quiz_score) && is_numeric($midterm_score) && is_numeric($final_score) ) {
                                        
                                            mysql_query("insert into student_marks (student_id,attendance,assignment,quiz_number,midterm,final,total) values('$get_id','$attendance_score','$assignment_score','$quiz_score','$midterm_score','$final_score','$total_score')")or die(mysql_error());

                                            }

                                            else { echo "Sorry wrong entry! ...All fields require Numbers only ... try again"; }

                                        ?>
                                        <!-- <script>
                                        window.location = 'teacher_quiz.php';
                                        </script> -->
                                        <?php
                                        }
                                        ?>  

                                    <!-- editing grade form -->    


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