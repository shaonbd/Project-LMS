<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_SESSION['get_id']; ?>
    <body>
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('take_attendance_link.php'); ?>
                <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-right">
								<?php 
								$my_student = mysql_query("SELECT * FROM teacher_class_student
														LEFT JOIN student ON student.student_id = teacher_class_student.student_id 
														INNER JOIN class ON class.class_id = student.class_id where teacher_class_id = '$get_id' order by lastname ")or die(mysql_error());

								$count_my_student = mysql_num_rows($my_student);
								$row1 = mysql_fetch_array($my_student);
								$t_c_s_id = $row1['teacher_class_student_id'];
								?>
								Number of Students: <span class="badge badge-info"><?php echo $count_my_student; ?></span>
								</div>


								<?php 
								$i=0;
								$std_ids = array();

								$my_student1 = mysql_query("SELECT * FROM teacher_class_student
										LEFT JOIN student ON student.student_id = teacher_class_student.student_id 
										INNER JOIN class ON class.class_id = student.class_id where teacher_class_id = '$get_id' order by lastname ")or die(mysql_error());
						        while ($i < $count_my_student)
						        {
						            $row = mysql_fetch_array($my_student1);
						            $std_ids[$i] = $row['student_id'];
						            $i++;
						        }
						        $i = 0;

								if (isset($_POST['submit'])){

									$class_info = mysql_query("SELECT * FROM teacher_class
													where teacher_class_id = '$get_id'")or die(mysql_error());

									$row = mysql_fetch_array($class_info);
															
									$thr_id = $row['teacher_id'];
						            $cls_id = $row['class_id'];



									while ($i < $count_my_student)
									{
										$temp = "attendance";
										$attend = $_POST[$temp.$i];
										$std_id = $std_ids[$i];
																	

									  	mysql_query ("INSERT INTO attendance (date,course_id,teacher_id, student_id, attendances) 
									  	VALUES(NOW(),'$cls_id', '$thr_id', '$std_id', '$attend')");


									  	if ($attend == "Present")
									  	{
									  		$query = mysql_query("SELECT * FROM teacher_class_student where student_id = '$std_id' AND teacher_id = '$thr_id'")or die(mysql_error());

									  		$row2 = mysql_fetch_array($query);
									  		$prsnt = $row2['Present'];
									  		$prsnt++;

									  		mysql_query("update teacher_class_student set Present = '$prsnt' where student_id = '$std_id' AND teacher_id = '$thr_id'")or die(mysql_error());
									  	}
									  	if ($attend == "Absent") {
									  		$query = mysql_query("SELECT * FROM teacher_class_student where student_id = '$std_id' AND teacher_id = '$thr_id'")or die(mysql_error());

									  		$row2 = mysql_fetch_array($query);
									  		$absnt = $row2['Absent'];
									  		$absnt++;

									  		mysql_query("update teacher_class_student set Absent = '$absnt' where student_id = '$std_id' AND teacher_id = '$thr_id'")or die(mysql_error());
									  	}
									  	if ($attend == "Late")
									  	{
									  		$query = mysql_query("SELECT * FROM teacher_class_student where student_id = '$std_id' AND teacher_id = '$thr_id'")or die(mysql_error());

									  		$row2 = mysql_fetch_array($query);
									  		$late = $row2['Late'];
									  		$late++;

									  		mysql_query("update teacher_class_student set Late = '$late' where student_id = '$std_id' AND teacher_id = '$thr_id'")or die(mysql_error());
									  	}
									  	if ($attend == "Sick")
									  	{
									  		$query = mysql_query("SELECT * FROM teacher_class_student where student_id = '$std_id' AND teacher_id = '$thr_id'")or die(mysql_error());

									  		$row2 = mysql_fetch_array($query);
									  		$sick = $row2['Sick'];
									  		$sick++;

									  		mysql_query("update teacher_class_student set Sick = '$sick' where student_id = '$std_id' AND teacher_id = '$thr_id'")or die(mysql_error());
									  	}
									  	$i++;
									}

									?>
									</br></br></br><center><a href="my_students.php<?php echo '?id='.$get_id; ?>"><i class="icon-chevron-right"></i><i class="icon-group"></i>&nbsp;Go Back to Classroom</a></center>
									<?php 
								};
									?>


                            							
                            </div>
                        </div>
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>
</html>

