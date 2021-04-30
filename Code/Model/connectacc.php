<?php

    $email = $_POST['email'];
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    // $age = $_POST['age'];
    $phone = $_POST['phone'];
    $part = $_POST['part'];
    $area = $_POST['area'];
    // $address = $_POST['address'];
    // $deldate = $_POST['delivery'];


    $conn = new mysqli('localhost','root','','form');
    if ($conn ->connect_error) {
        die('Connection Failed : '.$conn ->connect_error);
        
    }
    else {
        $stmt = $conn->prepare("insert into buyaccessories(email,fname,lname,phone,part,area)
                                values(?,?,?,?,?,?)");
        

        $stmt->bind_param("sssiss",$email,$firstname ,$lastname,$phone,$part,$area);
        $stmt->execute();
        echo nl2br( "Your order has been confirmed.\n Our Team will contact you soon.");
        $stmt ->close();
        $conn->close();
    }

?>