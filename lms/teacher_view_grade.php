<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
    <body>
		<?php include('navbar_student.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php //include('my_classmates_link.php'); ?>
                <div class="span4" id="content">
                     <div class="row-fluid">

					    <!-- breadcrumb -->
				
						<?php   $class_query = mysql_query(" SELECT * from teacher_class LEFT JOIN class ON class.class_id = teacher_class.class_id
											   where teacher_class_id = '$get_id'")or die(mysql_error());

								$class_row = mysql_fetch_array($class_query);
								$class_id = $class_row['class_id'];
								$school_year = $class_row['school_year'];
						?>
				
					    <ul class="breadcrumb">
							<li><a href="#"><?php echo $class_row['class_name']; ?></a> <span class="divider">/</span></li>
							<li><a href="#">Academic Year: <?php echo $class_row['school_year']; ?></a> <span class="divider">/</span></li>
							<li><a href="#"><b>View Grade</b></a></li>
						</ul>
						 
						<!-- end breadcrumb -->
					 
                        <!-- block -->
                        
                        <!-- /block -->
                    </div>


                </div>
				
				
				
				<div class="span10" id="content">

                    <div class="row-fluid">
					    <!-- breadcrumb -->		
							
				
					     <ul class="breadcrumb">
		
							<li><a href="#"></a></li>
						</ul>
						 <!-- end breadcrumb -->
					 
                        <!-- block -->
                        <?php
                            $percent_score_sum = 0;
                            $percent_weight_total = 0;
                            $grade_on_percentage = 0;
							
							$query = mysql_query("SELECT * FROM student JOIN			teacher_class_student ON teacher_class_student.student_id = student.student_id RIGHT JOIN marks on marks.teacher_class_student_id =  teacher_class_student.teacher_class_student_id INNER JOIN full_marks ON full_marks.poll_id = marks.poll_id where full_marks.teacher_class_id = '$get_id' ")or die(mysql_error());

								while($row = mysql_fetch_array($query)){
										
								$percent_score = round(($row['marks'] * $row['poll_weight']) / $row['number']);
								$percent_score_sum += $percent_score;
								$percent_weight_total += $row['poll_weight'];
								$grade_on_percentage = round(($percent_score_sum * 100) / $percent_weight_total);		
					
									    
						?>	
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
							    <div id="" class="muted pull-left"><h4>Grades</h4></div>
							</div>
                            <div class="block-content collapse in">
                            <div class="span12">
			
					<table cellpadding="0" cellspacing="0" border="0" class="table" id="">
					<thead>
						<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Grade</th>										
						</tr>
					</thead>
					<tbody>

                        <?php
                            $percent_score_sum = 0;
                            $percent_weight_total = 0;
                            $grade_on_percentage = 0;
							
							$query = mysql_query("SELECT * FROM student JOIN			teacher_class_student ON teacher_class_student.student_id = student.student_id RIGHT JOIN marks on marks.teacher_class_student_id =  teacher_class_student.teacher_class_student_id INNER JOIN full_marks ON full_marks.poll_id = marks.poll_id where full_marks.teacher_class_id = '$get_id' ")or die(mysql_error());

								while($row = mysql_fetch_array($query)){
										
								$percent_score = round(($row['marks'] * $row['poll_weight']) / $row['number']);
								$percent_score_sum += $percent_score;
								$percent_weight_total += $row['poll_weight'];
								$grade_on_percentage = round(($percent_score_sum * 100) / $percent_weight_total);		
					
									    
						?>	
						<tr>
							<td><?php echo $row['student_id']; ?></td>
							<td><?php echo $row['firstname']." ".$row['lastname']; ?></td>        	<td>
							<?php 
								     

							if($grade_on_percentage >= 93){
							    	echo "A"; 
							}
							else if($grade_on_percentage >= 90 && $grade_on_percentage <= 92){
							    	echo "A-"; 
							}
							else if($grade_on_percentage >= 87 && $grade_on_percentage <= 89){
							    	echo "B+"; 
							}
							else if($grade_on_percentage >= 83 && $grade_on_percentage <= 86){
									echo "B"; 
							}
							else if($grade_on_percentage >= 80 && $grade_on_percentage <= 82){
									echo "B-"; 
							}
							else if($grade_on_percentage >= 77 && $grade_on_percentage <= 79){
									echo "C+"; 
						    }
							else if($grade_on_percentage >= 73 && $grade_on_percentage <= 76){
									echo "C"; 
							}
							else if($grade_on_percentage >= 70 && $grade_on_percentage <= 72){
									echo "C-"; 
							}
							else if($grade_on_percentage >= 67 && $grade_on_percentage <= 69){
									echo "D+"; 
							}
							else if($grade_on_percentage >= 60 && $grade_on_percentage <= 66){
									echo "D"; 
							}
							else if($grade_on_percentage <= 60){
									echo "F"; 
							}
							else{
									echo "I/W";
							}

							?>								    	
							</td>							
                                                           			 
						</tr>

					<?php } ?>
						 
								</tbody>
							</table>
						
                            </div>
                        </div>

                             </div>
                        <!-- /block -->
                    </div>


                </div>
				
				<?php /* include('downloadable_sidebar.php') */ ?>
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>
</html>