<?php
if (!isset($_SERVER['HTTP_REFERER'])) {
    header('location:../index.php');
    exit;
}
?>
<div class="col-md-10">
    <div class="box">
        <div class="box-header">
            <?php
            include_once('../controller/config.php');
            if (isset($_GET["do"]) && ($_GET["do"] == "show_exam_Timetable")) {
                $grade_id = $_GET['grade'];
                $exam_id = $_GET['exam'];

                $sql = "SELECT name FROM grade WHERE id='$grade_id'";
                $result = mysqli_query($conn, $sql);
                $row = mysqli_fetch_assoc($result);

                $sql1 = "SELECT name FROM exam WHERE id='$exam_id'";
                $result1 = mysqli_query($conn, $sql1);
                $row1 = mysqli_fetch_assoc($result1);
            ?>
                <a href="#" onClick="showModal(this)" class="btn btn-success btn-sm pull-right" data-id="<?php echo $grade_id; ?>,<?php echo $exam_id; ?>">Add <span class="glyphicon glyphicon-plus"></span></a>
                <h3 class="box-title">Exam Timetable - <?php echo $row['name']; ?> - <?php echo $row1['name']; ?></h3>
            <?php } ?>
        </div><!-- /.box-header -->
        <div class="box-body table-responsive">
            <table id="example1" class="table table-bordered table-striped">
                <thead style="color:white; background-color:#666;">
                    <th class="col-md-1">Time</th>
                    <th class="col-md-1">Monday</th>
                    <th class="col-md-1">Tuesday</th>
                    <th class="col-md-1">Wednesday</th>
                    <th class="col-md-1">Thursday</th>
                    <th class="col-md-1">Friday</th>
                    <th class="col-md-1">Saturday</th>
                </thead>
                <tbody>
                    <?php
                    $days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
                    $grade_id = $_GET['grade'];
                    $exam_id = $_GET['exam'];

                    $sql2 = "SELECT DISTINCT start_time, end_time FROM exam_timetable WHERE grade_id='$grade_id' AND exam_id='$exam_id' ORDER BY start_time";
                    $result2 = mysqli_query($conn, $sql2);
                    while ($row2 = mysqli_fetch_assoc($result2)) {
                        $s_time = $row2['start_time'];
                        $e_time = $row2['end_time'];
                    ?>
                        <tr id="<?php echo $s_time; ?>_<?php echo $e_time; ?>">
                            <th style="color:white; background-color:#666;">
                                <span id="spanSTime_<?php echo $row2['start_time']; ?>" data-id="<?php echo $s_time; ?>"><?php echo $s_time; ?></span> -
                                <span id="spanETime_<?php echo $row2['end_time']; ?>" data-id="<?php echo $e_time; ?>"><?php echo $e_time; ?></span>
                            </th>
                            <?php
                            foreach ($days as $day) {
                            ?>
                                <td>
                                    <?php
                                    $sql = "SELECT exam_timetable.id as ett_id, exam_timetable.start_time as ett_stime, exam_timetable.end_time as ett_etime, subject.name as s_name, class_room.name as c_name
                                            FROM exam_timetable
                                            INNER JOIN subject ON exam_timetable.subject_id=subject.id
                                            INNER JOIN class_room ON exam_timetable.classroom_id=class_room.id
                                            WHERE exam_timetable.start_time='$s_time' AND exam_timetable.end_time='$e_time' AND exam_timetable.grade_id='$grade_id' AND exam_timetable.exam_id='$exam_id' AND exam_timetable.day='$day'";
                                    $result = mysqli_query($conn, $sql);
                                    if (mysqli_num_rows($result) > 0) {
                                        while ($row = mysqli_fetch_assoc($result)) {
                                    ?>
                                            <?php echo $row['s_name']; ?><br>
                                            <?php echo $row['c_name']; ?><br>
                                            <a href="#" onClick="showModal2(this)" class="btn btn-info btn-xs" data-id="<?php echo $row['ett_id']; ?>,<?php echo $grade_id; ?>,<?php echo $exam_id; ?>" data-toggle="modal">Edit</a><br>
                                            <a href="#" class="confirm-delete btn btn-danger btn-xs" data-id="<?php echo $row['ett_id']; ?>,<?php echo $grade_id; ?>,<?php echo $exam_id; ?>">Delete</a><br>
                                        <?php
                                        }
                                    } else {
                                        ?>
                                        <a id="a1" href="#" onClick="showModal1(this)" class="btn btn-success btn-xs" data-id="<?php echo $day; ?>,<?php echo $grade_id; ?>,<?php echo $exam_id; ?>" data-toggle="modal">Add <span class="glyphicon glyphicon-plus"></span></a>
                                    <?php
                                    }
                                    ?>
                                </td>
                            <?php
                            }
                            ?>
                        </tr>
                    <?php
                    }
                    ?>
                </tbody>
            </table>
        </div><!-- /.box-body -->
    </div><!-- /.box -->
</div><!-- /.col-md-10 -->
