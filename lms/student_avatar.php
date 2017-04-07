 <?php
 include('admin/dbcon.php');
 include('session.php');
 
 
                            if (isset($_POST['change'])) {

                            	$allowedImageTypes = array("image/pjpeg","image/jpeg","image/jpg","image/png","image/x-png","image/gif");
								$file = $_FILES['image'];
								$fileType = $file['type'];
								if (!in_array($fileType, $allowedImageTypes)) { 
								    echo "Unsupported file type";
								}
								else{   

                                $image = addslashes(file_get_contents($_FILES['image']['tmp_name']));
                                $image_name = addslashes($_FILES['image']['name']);
                                $image_size = getimagesize($_FILES['image']['tmp_name']);

                                move_uploaded_file($_FILES["image"]["tmp_name"], "admin/uploads/" . $_FILES["image"]["name"]);
                                $location = "uploads/" . $_FILES["image"]["name"];
								
								mysql_query("update  student set location = '$location' where student_id  = '$session_id' ")or die(mysql_error());
								
								} ?>
 
								<script>
								window.location = "dashboard_student.php";  
								</script>

                       <?php     }  ?>