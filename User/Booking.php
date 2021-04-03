<?php include("include/sidenavbar.php"); ?>
    <br><br>
    <h2 align="center"><b>Booking Details with Service Provider</b></h2><br>
    <table id="sorting-table" class="table mb-0">
        <tbody>
            <tr>
                <td><b>Sr.No</b></td>
                <td><b>Service Name</b></td>
                <td><b>Booking Date</b></td>
                <td><b>Requirement</b></td>
                <td><b>issue</b></td>
                <td><b>Amount</b></td>
                <td><b>Payment Status </b></td>
                <td><b>Booking Status</b></td>
                <td><b>Action</b></td>
            </tr>
    <?php
 if(isset($_SESSION['user_id']))
  {  
    $i=1;
	$id=$_SESSION['user_id'];
   $sql="select *,tbl_payment.book_id as bid from tbl_service,tbl_booking,tbl_payment where user_id='$id' and  tbl_service.id=tbl_booking.service_id and tbl_booking.book_id=tbl_payment.book_id ";
   $result=$connect->query($sql);
   $row=mysqli_num_rows($result);
   while($row = $result->fetch_array())
       {
          
           ?>
            <tr>
                <td><?php echo $i; $i++;  ?></td>
                <td> <?php echo $row['service_name']; ?> </td>
                <td> <?php echo $row['b_date']; ?></td>
                <td> <?php echo $row['requirement']; ?></td>
                <td> 
                    <?php if($row['issue']!=''){ ?>
                <img src="../User/bg/issue/<?php echo $row['issue']; ?>" alt="issue"  height="80" width="150">
                    <?php } else{?>
                        <td> <?php echo "-";} ?></td>      
            </td>
                   <td><font color="blue"> <?php echo $row['TXN_AMOUNT']; ?></font></td>
              
                   <td><font color="blue"> <?php echo $row['payment_status']; ?></font></td>

                      <td><font color="blue"> <?php echo $row['booking_status']; ?></font></td>
                      <?php
                      $status=$row['booking_status'];
                      if($status=='Cancel'){ ?>
                    <td></td>
               <?php }else{ ?>
                      <td align="center">
                    <a href="edit_booking.php?id=<?php echo $row['bid']; ?>" class="btn btn-primary">Cancel Booking</a>
                </td>
               <?php } ?>
            </tr>
        
       <?php } } ?>

       </tbody>
    </table> 
    </div>
       </div>
   <br><br>    
<?php include('include/footer.php'); ?>