<?php
session_start(); // Start the session

if (!isset($_SERVER['HTTP_REFERER'])) {
    // redirect them to your desired location
    header('location:../index.php');
    exit;
}
?>
<div class="col-md-10">
    <div class="box">
        <div class="box-header">
            <?php
            include_once('../controller/config.php');
            if (isset($_GET["do"]) && ($_GET["do"] == "show_Timetable")) {
                $id = $_GET['grade'];

                $sql = "select name from grade where id='$id'";
                $result = mysqli_query($conn, $sql);
                $row = mysqli_fetch_assoc($result);
            ?>

                <h3 class="box-title">Timetable - <?php echo $row['name']; ?></h3>
            <?php } ?>
        </div><!-- /.box-header -->
        <div class="box-body table-responsive">
            <table id="example1" class="table table-bordered table-striped">
                <thead style="color:white; background-color:#666;">
                    <th class="col-md-1">Time</th>
                    <th class="col-md-1">Sunday</th>
                    <th class="col-md-1">Monday</th>
                    <th class="col-md-1">Tuesday</th>
                    <th class="col-md-1">Wednesday</th>
                    <th class="col-md-1">Thursday</th>
                    <th class="col-md-1">Friday</th>
                    <th class="col-md-1">Saturday</th>
                </thead>
                <tbody>
                    <?php
                    include_once('../controller/config.php');

                    if (isset($_SESSION["index_number"])) {
                        $index = $_SESSION["index_number"];
                        $current_year = date('Y');

                        $sql1 = "SELECT * FROM teacher WHERE index_number='$index'";
                        $result1 = mysqli_query($conn, $sql1);
                        $row1 = mysqli_fetch_assoc($result1);
                        $id = $row1['id'];

                        $sql2 = "SELECT DISTINCT id, start_time, end_time
                            FROM timetable
                            WHERE teacher_id='$id'
                            ORDER BY start_time";
                        $result2 = mysqli_query($conn, $sql2);

                        // Check if there are any results returned
                        if ($result2) {
                            while ($row2 = mysqli_fetch_assoc($result2)) {
                                // Check if start_time and end_time are not null
                                if (isset($row2['start_time']) && isset($row2['end_time'])) {
                                    $s_time = $row2['start_time'];
                                    $e_time = $row2['end_time'];
                    ?>

                                    <!-- Lines 59-60 -->
                                    <span id="spanSTime_<?php echo $row2['id']; ?>" data-id="<?php echo $s_time; ?>"><?php echo $s_time; ?></span> -
                                    <span id="spanETime_<?php echo $row2['id']; ?>" data-id="<?php echo $e_time; ?>"><?php echo $e_time; ?></span>
                    <?php
                                } // End of isset check
                            } // End of while loop
                        } // End of result2 check
                    } else {
                        echo "Session variable index_number is not set!";
                    }
                    ?>
                </tbody>
            </table>
        </div><!-- /.box-body -->
    </div><!-- /.box -->
</div><!-- /.col-md-10 -->
