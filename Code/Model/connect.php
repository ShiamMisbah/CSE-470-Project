<?php

    $email = $_POST['email'];
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $age = $_POST['age'];
    $phone = $_POST['phone'];
    $area = $_POST['area'];
    $address = $_POST['address'];
    $deldate = $_POST['delivery'];


    $conn = new mysqli('localhost','root','','form');
    if ($conn ->connect_error) {
        die('Connection Failed : '.$conn ->connect_error);
        
    }
    else {
        $stmt = $conn->prepare("insert into users(email,fname,lname,age,phone,area,address,delivery_date)
                                values(?,?,?,?,?,?,?,?)");
        

        $stmt->bind_param("sssiisss",$email,$firstname ,$lastname,$age,$phone,$area,$address,$deldate);
        $stmt->execute();
        echo nl2br("Your Booking has been confirmed. \n Our Team will contact you soon.");
        $stmt ->close();
        $conn->close();
    }

?>