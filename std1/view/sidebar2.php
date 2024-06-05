<!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
<?php
include_once('../controller/config.php');

// Ensure session variable is set
if (!isset($_SESSION["index_number"])) {
    die("Index number is not set in the session.");
}

$index = $_SESSION["index_number"];

$sql = "SELECT * FROM teacher WHERE index_number='$index'";
$result = mysqli_query($conn, $sql);

// Check if the query was successful
if (!$result) {
    die("Database query failed: " . mysqli_error($conn));
}

// Fetch the result
$row = mysqli_fetch_assoc($result);

// Check if the row is not null
if ($row) {
    $name = $row['i_name'];
    $image = $row['image_name'];
} else {
    // Handle the case where no data was found
    $name = "No data found"; // Customize this message as needed
    $image = "default_image.jpg"; // Provide a default image or handle accordingly
}

// Safely output $name and $image
// echo "Name: " . htmlspecialchars($name, ENT_QUOTES, 'UTF-8') . "<br>";
// echo '<img src="path/to/images/' . htmlspecialchars($image, ENT_QUOTES, 'UTF-8') . '" alt="Profile Image">';
?>
     
      
      <div class="user-panel">
      	<div class="pull-left image">
        	<img src="../<?php echo $image; ?>" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
        	<p><?php echo $name; ?></p>
            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
        <li class="active treeview">
          <a href="dashboard2.php">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
          </a>
        </li>
        <li>
          <a href="teacher_profile2.php">
            <i class="fa fa-flag"></i> <span>My Profile</span>
          </a>
        </li>
         <li>
          <a href="my_student.php">
            <i class="fa fa-graduation-cap"></i> <span>My Student</span>
          </a>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-book"></i>
            <span>Subject</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="my_subject2.php"><i class="fa fa-circle-o"></i> My Subject</a></li>
            <li><a href="all_subject2.php"><i class="fa fa-circle-o"></i> All Subject</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-calendar-plus-o"></i>
            <span>Timetable</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="my_timetable2.php"><i class="fa fa-circle-o"></i> My Timetable</a></li>
            <li><a href="all_timetable2.php"><i class="fa fa-circle-o"></i>All Timetable</a></li>
          </ul>
        </li>
         <li class="treeview">
          <a href="#">
            <i class="fa fa-calendar-check-o"></i>
            <span>Attendance</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="my_attendance2.php"><i class="fa fa-circle-o"></i> My Attendance</a></li>
            <li><a href="my_attendance_history2.php"><i class="fa fa-circle-o"></i>My Attendance History</a></li>
          </ul>
        </li>
        
         
         <li class="treeview">
          <a href="#">
            <i class="fa fa-certificate"></i>
            <span>Exam</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="my_student_exam_marks.php"><i class="fa fa-circle-o"></i> My Student Exam Marks</a></li>
            <li><a href="my_student_exam_marks_history.php"><i class="fa fa-circle-o"></i> My Student Exam Marks History</a></li>
            <li><a href="exam_timetable2.php"><i class="fa fa-circle-o"></i>Exam Timetable</a></li>
          </ul>
        </li>
        
         <li class="treeview">
          <a href="#">
            <i class="fa fa-calendar"></i>
            <span>Events</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
          	<li><a href="my_events2.php"><i class="fa fa-circle-o"></i> My Events</a></li>
          	<li><a href="all_events2.php"><i class="fa fa-circle-o"></i> All Events</a></li>
          </ul>
        </li>

        <!-- <li class="treeview">
          <a href="#">
            <i class="fa fa-facebook"></i>
            <span>Friends</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
          	<li><a href="add_friends2.php"><i class="fa fa-circle-o"></i> Add Friends</a></li>
            <li><a href="my_friends2.php"><i class="fa fa-circle-o"></i> My Friends</a></li>
          </ul>
        </li> -->

        <!-- <li>
          <a href="#" class="disabled">
            <i class="fa fa-yen disabled"></i> <span>My Petty Cash (Locked)</span>
          </a>
        </li> -->

        <!-- <li>
          <a href="#" class="disabled">
            <i class="fa fa-money disabled" ></i> <span>My Salary (Locked)</span>
          </a>
        </li> -->
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>