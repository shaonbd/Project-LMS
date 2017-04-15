<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<?php $get_id = $_GET['id']; ?>
    <body>
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('marks_link.php'); ?>
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


                                    <form class="form-vertical" method="post">
                                    <div class="control-group">
                                        <label class="control-label" for="inputEmail">Poll Name</label>
                                        <div class="controls">
                                        <input type="text" name="poll_name" id="inputattendance" placeholder="name...">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label" for="inputEmail">Assign Marks</label>
                                        <div class="controls">
                                        <input type="text" name="full_marks" id="inputassignment" placeholder="marks..." >
                                        </div>
                                    </div> 
                                    <div class="control-group">
                                        <label class="control-label" for="inputEmail">Poll Weight(%)</label>
                                        <div class="controls">
                                        <input type="text" name="poll_weight" id="inputassignment" placeholder="marks in %..." >%
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
         
                                        $poll_name = $_POST['poll_name'];
                                        $full_marks = $_POST['full_marks'];
                                        $poll_weight = $_POST['poll_weight'];

                                        $check_pollname = mysql_query(" SELECT poll_name from full_marks where poll_name = '$poll_name' ");

                                        if(mysql_num_rows($check_pollname) > 0){

                                            echo "This Poll already exists"; die(mysql_error());

                                        }
                                        else{                                        

                                            if(!is_numeric($poll_name) && is_numeric($full_marks)) {
                                        
                                            mysql_query("insert into full_marks (poll_name,poll_weight,number,pdatein,teacher_class_id) values('$poll_name','$poll_weight', '$full_marks',NOW(),'$get_id')")or die(mysql_error());

                                    ?>
                                    <script>
                                       window.location = 'teacher_assign_marks.php<?php echo "?id=".$get_id?>';
                                    </script>

                                    <?php } 

                                            else { echo "Sorry wrong entry! ..."; } 

                                    ?>
                                        
                                    <?php
                                        }
                                    }
                                    ?>  

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