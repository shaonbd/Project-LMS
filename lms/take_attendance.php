<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
<?php $_SESSION['get_id'] = $get_id; ?>
    <body>
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('take_attendance_link.php'); ?>
                <div class="span8" id="content">
                     <div class="row-fluid">					

					<?php include('my_students_breadcrums.php'); ?>

                    <!-- block -->

                    <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-right">
								<?php 
								$my_student = mysql_query("SELECT * FROM teacher_class_student
														LEFT JOIN student ON student.student_id = teacher_class_student.student_id 
														INNER JOIN class ON class.class_id = student.class_id where teacher_class_id = '$get_id' order by lastname ")or die(mysql_error());
								$space=" ";
								$newLine="\n";
								$count_my_student = mysql_num_rows($my_student);?>
								Number of Students: <span class="badge badge-info"><?php echo $count_my_student; ?></span>
								</div>
								<div class="block-content collapse in">
                                <div class="span12">
                                <form action="insert_attendance.php" method="POST">
									<table cellpadding="0" cellspacing="0" border="0" class="table" id="">
										<thead>
										    <tr>
										    	<th>Students NSU ID</th>
												<th>Student Name</th>
												<th>Attendance</th>	
											</tr>
												
										</thead>
										<tbody>
										    		<?php
										    		$i = 0;
														$my_student = mysql_query("SELECT * FROM teacher_class_student
														LEFT JOIN student ON student.student_id = teacher_class_student.student_id 
														INNER JOIN class ON class.class_id = student.class_id where teacher_class_id = '$get_id' order by lastname ")or die(mysql_error());

														while(($row = mysql_fetch_array($my_student)) && ($i < $count_my_student) ){
															?>
															<tr>
															
																<td><?php echo $row['student_id']; ?></td>
						                                        <td><?php  echo $row['firstname'],$space,$row['lastname']; ?></td>                                    
						                                        <td width="40">
																<select name="<?php echo "attendance".$i ?>"  required>										
																<option >Present</option>
																<option >Absent</option>
																<option >Late</option>
																<option>Sick</option>
					                                            </select>
																</td> 
															</tr>

															
														<?php

														$i++;

														} ?>
														
														
										</tbody>
									</table>
									<input type="submit" value="Submit" name="submit" class="btn btn-success">
									</form>
                                </div>

                            </div>	
                            							
                            </div>
                        </div>
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>
</html>

