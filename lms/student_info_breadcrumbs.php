	 <!-- breadcrumb -->
	<?php $class_query = mysql_query("select * from teacher_class_student
	LEFT JOIN teacher_class ON teacher_class.teacher_class_id = teacher_class_student.teacher_class_id	
	JOIN class ON class.class_id = teacher_class.class_id
	where student_id = '$get_id'")or die(mysql_error());
	$class_row = mysql_fetch_array($class_query);
	?>
				
	<ul class="breadcrumb">
		<li><a href="#"><?php echo $class_row['class_name']; ?></a> <span class="divider">/</span></li>
		<li><a href="#">Academic Year: <?php echo $class_row['school_year']; ?></a> <span class="divider">/</span></li>
		<li><a href="#"><b>Student Info</b></a></li>
	</ul>
	<!-- end breadcrumb -->