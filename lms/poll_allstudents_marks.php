<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
    <body>
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				
                <div class="span12" id="content">
                     <div class="row-fluid">


				<!-- editing sidebar --> 		

			<div class="span3" id="sidebar">
                <img id="avatar" src="admin/<?php echo $row['location']; ?>" class="img-polaroid">
            <ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
                <li class=""><a href="dasboard_teacher.php"><i class="icon-chevron-right"></i><i class="icon-chevron-left"></i>&nbsp;Back</a></li>               
            </ul>
            </div>



                <!-- editing sidebar --> 


                        <!-- editing block -->                         
                             

                    <div id="block_bg" class="block">
                        <div class="navbar navbar-inner block-header">
                            <B>
                            <?php
                                $student_marks = mysql_query(" SELECT * FROM marks as m JOIN full_marks as f ON f.poll_id = m.poll_id where f.poll_id = '$get_id' ") or die(mysql_error());

                                
                                $row = mysql_fetch_array($student_marks);

                                    echo $row['poll_name']; 
                                
                            ?>
                            </B>            
                                       
                        </div>
                            <div class="block-content collapse in">
                                <div class="span12">
                                            
                                   
                            <!-- editing poll form -->


            <table cellpadding="0" cellspacing="0" border="0" class="table" id="">
                    <thead>
                            <tr>
                                <th>Student Name</th>
                                <th>ID</th>
                                <th>Score /Alloted Number</th>
                                <th>Score / Alloted Weight(%)</th>
                            </tr>                                                
                    </thead>

                <tbody>
                        

                        <?php
                                    $query = mysql_query("SELECT * FROM student JOIN teacher_class_student ON teacher_class_student.student_id = student.student_id RIGHT JOIN marks on marks.teacher_class_student_id = teacher_class_student.teacher_class_student_id INNER JOIN full_marks ON full_marks.poll_id = marks.poll_id where full_marks.poll_id = '$get_id' ")or die(mysql_error());

                                        while($row = mysql_fetch_array($query)){
                                        
                                        
                                        $percent_score = round(($row['marks'] * $row['poll_weight']) / $row['number']);
                                        $id = $row['poll_id'];
                                            
                    
                                        
                        ?>  

                            <tr>
                                <td><?php echo $row['firstname']." ".$row['lastname']; ?></td>
                                <td><?php echo $row['student_id']; ?></td>                                    
                                <td><?php  echo $row['marks'] ."/". $row['number']; ?></td>
                                <td><?php  echo $percent_score."/". $row['poll_weight']; ?></td>   
                            </tr>

                                                            
                        <?php } ?>                                            
                                                        
                </tbody> 

            </table>  

            <a href="update_student_marks.php<?php echo "?id=".$id ?>">EDIT</a>

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