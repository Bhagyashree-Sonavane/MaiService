<?php include("include/sidenavbar.php"); ?>
    <br><br>
    <h2 align="center"><b>Appointment Details with Service Provider</b></h2><br>
    
    <?php
 if(isset($_SESSION['user_id']))
  {  
      $i=1;
	$id=$_SESSION['user_id'];
  
           ?>
  <table id="sorting-table" class="table mb-0">
        <tbody>
            <tr>
                <td><b>Sr.No</b></td>
                <td><b>Service Name</b></td>
                <td><b>Appointment Date</b></td>
                <td><b>Time</b></td>
                <td><b>Provider Response</b></td>
                <td><b>Appointment Action</b></td>
            </tr>
            <?php

   $sql="select *,tbl_appointment.id as aid from tbl_service,tbl_appointment where userid='$id' and  tbl_service.id=tbl_appointment.service_id group by tbl_appointment.id";
   $result=$connect->query($sql);
   $row=mysqli_num_rows($result);
   while($row = $result->fetch_array())
       {
        $aid=$row['aid'];
        $service_name=$row['service_name'];
        $a_date=$row['a_date'];
        $time=$row['time'];
        $status=$row['status'];
       
           ?>
            <tr>
                <td><?php echo $i; $i++; ?></td>
                <td> <?php echo $service_name; ?> </td>
                <td> <?php echo $a_date; ?></td>
                <td> <?php echo $time; ?></td>
                <td><font color="blue"> <?php echo $status; ?></font></td>
                <?php if(($status=='Reject') OR ($status=='Cancel') OR ($status=='Approve')){ ?>
                    <td></td>
               <?php }else{ ?>
                <td align="center">
                    <a href="edit_appointment.php?id=<?php echo $row['aid']; ?>" class="btn btn-primary">Cancel Appointment</a>
                </td>
                <?php } ?>
            </tr>
        
               <?php  }
    } ?>
       </tbody>
    </table>
    
       </div>
       </div>
       <br><br>
<?php include('include/footer.php'); ?>