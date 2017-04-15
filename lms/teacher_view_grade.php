<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
    <body>
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php //include('my_classmates_link.php'); ?>
                <div class="span12" id="content">
                     <div class="row-fluid">

                        <div class="pull-right">						
							<a id="print" onclick="window.print()"  class="btn btn-success"><i class="icon-print"></i> Print Student Grade</a>
						</div>

					    <!-- breadcrumb -->
				
						<?php   
								$class_query = mysql_query(" SELECT * from teacher_class LEFT JOIN class ON class.class_id = teacher_class.class_id
											   where teacher_class_id = '$get_id' ")or die(mysql_error());

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
					 
                        </div>

                </div>				
				
				<center>
				<div class="span12" id="content">

                    <div class="row-fluid">	


					 
                        <!-- block -->
                        
                        <div id="block_bg" class="block">
	                            <div class="navbar navbar-inner block-header">
								    <div id="" class="muted pull-left"><h4>Grades</h4></div>
								</div>
	                <div class="block-content collapse in">
                    
                    <div class="span12">
					<table cellpadding="0" cellspacing="0" border="0" class="table" id="">
						<thead>
							<tr>
								<th>Name</th>
								<th>ID</th>
								<th>Grade</th>								
							</tr>
						</thead>
					
					<tbody>

                        <?php

                        	$student_query = mysql_query("SELECT * FROM student JOIN teacher_class_student ON 
                        		teacher_class_student.student_id = student.student_id where teacher_class_id = '$get_id' ")or die(mysql_error());
              
                            
                            while($row1 = mysql_fetch_array($student_query)){

									$student_id =  $row1['student_id'];   
									$student_name = $row1['firstname']." ".$row1['lastname'];							
										

						?>	

						<tr>							
							<td><?php echo $student_name; ?></td>
							<td><?php echo $student_id; ?></td>        	
							
							<td>

								<span class="badge badge-success" >

								<?php
								
								$poll_query = mysql_query("SELECT * FROM teacher_class_student RIGHT JOIN marks on marks.teacher_class_student_id = teacher_class_student.teacher_class_student_id INNER JOIN full_marks 
									ON full_marks.poll_id = marks.poll_id where student_id = '$student_id'  ")or die(mysql_error());	
								
								
								$percent_score = 0;
                            	$percent_score_sum = 0;
                            	$percent_weight_total = 0;
                            	$grade_on_percentage = 0;
                        	

									while($row2 = mysql_fetch_array($poll_query)){
										

										$percent_score = round(($row2['marks'] * $row2['poll_weight']) / $row2['number']);
										$percent_score_sum += $percent_score;
										
										$percent_weight_total += $row2['poll_weight'];
										
										$grade_on_percentage = round(($percent_score_sum * 100) / $percent_weight_total);

									}

																		
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

									}

								?>
								</span>	

							</td>							
                                                           			 
						</tr>
						 
					</tbody>
					</table>
						
                    </div>
                        </div>

                    </div>
                        <!-- /block -->
                    </div>


                </div>
                </center>
                </div>
				
				<?php /* include('downloadable_sidebar.php') */ ?>
            </div>
		
        </div>

        <?php include('footer.php'); ?>
		<?php include('script.php'); ?>
    </body>
</html>