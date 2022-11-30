<?php
  session_start();
  if(isset($_SESSION['email'])){
  include('../includes/connection.php');
  $query = "select * from menu";
  $query_run = mysqli_query($connection,$query);
  echo "<table class='table'>
    <tr>
      <th>day</th>
      <th>meal1</th>
      <th>meal2</th>
      <th>meal3</th>
      <th>meal4</th>
    </tr>";
  while($row = mysqli_fetch_assoc($query_run)){
    echo "
      <tr>
        <td>$row[day]</td>
        <td>$row[meal1]</td>
        <td>$row[meal2]</td>
        <td>$row[meal3]</td>
        <td>$row[meal4]</td>
      </tr>
    ";
  }
  echo "</table>";
?><?php }
else{
  header('location:../index.php');
}
