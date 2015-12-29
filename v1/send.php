<?php
  if(isset($_POST['submit'])){
    $fName = $_POST['txtFName'];
    $lName = $_POST['txtLName'];
    $email = $_POST['txtEmail'];
    $number = $_POST['txtNumber'];
    $other = $_POST['txtOther'];
    $bLine = "\n";

    $body = "First Name: " .$fName .$bLine;
    $body .= "Last Name: " .$lName .$bLine;
    $body .= "E-mail: " .$email .$bLine;
    $body .= "Phone: " .$number .$bLine .$bLine;
    $body .= "Favorite spa service:" .$bLine;

    $body .= "- Other:" .$bLine;
    $body .= "  " .$other;
    
    mail('shadowsong24@gmail.com', 'Contest', $body);
	mail('vuhoanganh1603@gmail.com', 'Contest', $body);

    header('location: HomePage.html');
    exit(0);

  } else {
    header('location: Contest.html');
    exit(0);
  }
?>
