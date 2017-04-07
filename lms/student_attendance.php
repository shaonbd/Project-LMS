<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
    <body>
		<?php include('navbar_student.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('my_classmates_link.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">
					     <!-- breadcrumb -->
					<?php $query = mysql_query("select * from teacher_class_student
					LEFT JOIN teacher_class ON teacher_class.teacher_class_id = teacher_class_student.teacher_class_id 
					JOIN class ON class.class_id = teacher_class.class_id 
					where student_id = '$session_id'
					")or die(mysql_error());
					$row = mysql_fetch_array($query);
					$id = $row['teacher_class_student_id'];
					$st_id = $row['student_id'];
					$t_id = $row['teacher_id'];
					$p = $row['Present'];
					$a = $row['Absent'];
					$l = $row['Late'];
					$s = $row['Sick'];

					$query1 = mysql_query("select * from student where student_id = '$st_id'")or die(mysql_error());
					$row1 = mysql_fetch_array($query1);
					$spc = " ";
					?>
					     <ul class="breadcrumb">
							<li><a href="#"><?php echo $row['class_name']; ?></a> <span class="divider">/</span></li>
							<li><a href="#">Academic Year: <?php echo $row['school_year']; ?></a> <span class="divider">/</span></li>
							<li><a href="#"><?php echo $row1['firstname'],$spc,$row1['lastname']; ?></a> <span class="divider">/</span></li>
						</ul>


						<table cellpadding="0" cellspacing="0" border="0" class="table" id="">
							<thead>
								<tr>
									<th>Lecture No</th>
									<th>Date</th>
									<th>Attendance</th>

								</tr>
												
							</thead>
							<tbody>
							<?php
							$i = 1;
							$query = mysql_query("SELECT * FROM attendance where teacher_id = '$t_id' AND student_id = $st_id order by date ")or die(mysql_error());

							while($row = mysql_fetch_array($query) ){
								?>
								<tr>
															
								<td><?php echo "$i" ?></td>
								<td><?php echo $row['date']; ?></td>
								<td><?php echo $row['attendances']; ?></td>                                 

								</tr>

															
							<?php

							$i++;

							} ?>
														
														
							</tbody>
						</table>

						<div id="" class="muted pull-right">
								Total Present : <span class="badge badge-info"><?php echo $p; ?></span></br>
								Total Absent  : <span class="badge badge-info"><?php echo $a; ?></span></br>
								Total Late    : <span class="badge badge-info"><?php echo $l; ?></span></br>
								Total Sick    : <span class="badge badge-info"><?php echo $s; ?></span>
						</div>
         
                    </div>


                </div>
			
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>
</html>