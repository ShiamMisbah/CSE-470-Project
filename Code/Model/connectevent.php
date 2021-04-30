<?php

    $email = $_POST['email'];
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $phone = $_POST['phone'];
    $event = $_POST['event'];
    $query = $_POST['query'];


    $conn = new mysqli('localhost','root','','form');
    if ($conn ->connect_error) {
        die('Connection Failed : '.$conn ->connect_error);
        
    }
    else {
        $stmt = $conn->prepare("insert into event(email,fname,lname,phone,event,query)
                                values(?,?,?,?,?,?)");
        

        $stmt->bind_param("sssiss",$email,$firstname ,$lastname,$phone,$event,$query);
        $stmt->execute();
        echo nl2br("Your Event Booking has been confirmed. \n Our Team will contact you soon.");
        $stmt ->close();
        $conn->close();
    }

?>