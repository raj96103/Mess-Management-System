<?php
  include('includes/header.php');
  if(isset($_SESSION['email'])){
    include('includes/connection.php');
?>
<!DOCTYPE html>
<html lang="en" >
  <head>
    <meta charset="utf-8">
    <title>User Dashboard</title>
  </head>
  <body style="background:gray;">
    <div class="row">
      <div class="col-md-3">
        <div class="card">
          <div class="card-header">
            <b>Mess Timings</b>
          </div>
          <div class="card-body">
            <b>Breakfast:</b> 8:00 AM to 9:00 AM <br>
            <b>Lunch:</b> 12:00 PM to 2:00 PM <br>
            <b>Snacks:</b> 4:00 PM to 5:00 PM <br>
            <b>Dinner:</b> 8:00 PM to 9:30 PM
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="card">
          <div class="card-header">
            <b>Today's Menu</b>
          </div>
          <div class="card-body">
            <?php
              $today = date("l");
              $query = "select * from menu where day='$today'";
              $query_run = mysqli_query($connection,$query);
              while($row = mysqli_fetch_assoc($query_run)){
            ?>
              <b>Breakfast: </b> <?php echo $row['meal1']; ?> <br>
              <b>Lunch: </b> <?php echo $row['meal2']; ?> <br>
              <b>Snacks: </b> <?php echo $row['meal3']; ?> <br>
              <b>Dinner: </b> <?php echo $row['meal4']; ?>
            <?php } ?>
          </div>
          <div class="card-footer">
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#meal_modal">View Full Week's Menu</button>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card">
          <div class="card-header">
            <b>Important Notice</b>
          </div>
          <div class="card-body" style="color:#E50D02;  ">
          <marquee direction="up" scrollamount="2"><ul><b>
              <li> Please always wear mask and sanitize your hands timely.</li>
              <li> Always maintain social distance.</li>
              <li> Give your valuable feedback to improve us.</li></b></marquee>
            </ul>
          </div>
        </div>
      </div>
    </div> <br>

    <!-- Buttons -->
    <div class="row">
      <div class="col-md-2 m-auto">
        <a href="edit_profile.php" type="button" class="btn btn-block btn-warning">Edit Profile</a>
        <a href="feedback.php" type="button" class="btn btn-block btn-danger">Submit feedback</a>
      </div>
    </div>
    <!-- Week Meal MODAL -->
    <div class="modal fade" id="meal_modal">
      <div class="modal-dialog">
        <div class="modal-content">
      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Full Week Menu</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <!-- Modal body -->
      <?php
        $query = "select * from menu";
        $query_run = mysqli_query($connection,$query);
        while($row = mysqli_fetch_assoc($query_run)){
      ?>
      <div class="modal-body">
        <h4><?php echo $row['day']; ?></h4>
        <p>
          <b>Breakfast: </b> <?php echo $row['meal1']; ?> <br>
          <b>Lunch:</b> <?php echo $row['meal2']; ?> <br>
          <b>Snacks:</b> <?php echo $row['meal3']; ?> <br>
          <b>Dinner:</b> <?php echo $row['meal4']; ?>
        </p>
      <?php } ?>

      </div>
      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
      </div>
    </div>
</body>
</html>
<?php }
else{
  header('location:index.php');
}
