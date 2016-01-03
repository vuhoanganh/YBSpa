<?php
  if(isset($_POST['submit'])){
    $fName = $_POST['txtFName'];
    $lName = $_POST['txtLName'];
    $email = $_POST['txtEmail1'];
    $number = $_POST['txtNumber'];
    $other = $_POST['txtOther'];
    $bLine = "\n";

    $body = "First Name: " .$fName .$bLine;
    $body .= "Last Name: " .$lName .$bLine;
    $body .= "E-mail: " .$email .$bLine;
    $body .= "Phone: " .$number .$bLine .$bLine;
    $body .= "Favorite spa service:" .$bLine;

    $cbType = $_POST['cbType'];

    foreach ($cbType as $type){
      $body .= "- " .$type.$bLine;
    }

    $body .= "- Other:" .$bLine;
    $body .= "  " .$other;
    
    mail('lan@gulfstreaminc.com', 'ContestYB', $body);
	mail('vuhoanganh1603@gmail.com', 'ContestYB', $body);
	mail('vivian@9cmarketing.com', 'ContestYB', $body);
	mail('mai@9cmarketing.com', 'ContestYB', $body);
	?>
	<script type="text/javascript">
		window.onload = function(){
			alert('Message Sent');	
		}
		
	</script>
	<a href="http://youngbeautifulsalonspa.com/HomePage.html">Back to HomePage</a>
	<?php

    header('location: HomePage.html');
    exit(0);

  } else {
    header('location: Contest.html');
    exit(0);
  }
?>
