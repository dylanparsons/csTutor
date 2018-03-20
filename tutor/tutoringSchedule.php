<html>
<head>
    <title>On-Demand Tutors</title>
    <meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
	<link href="css/admin.css" rel="stylesheet" type="text/css">
	<link href="css/twoColFixLtHdr.css" rel="stylesheet" type="text/css">
	
</head>
<body>
    <div id="main">
	<div id="container">
		<div id="header">
			<div id="heading">
				<a href="home_tutor.php"><h1><center>
					On-Demand Tutors
				</center></h1></a>
			</div>
            <ul id="top-navigation">
                <h3>
				<li><a href="about_tutor.php">About Us</a></li>
                <li><a href="tutorDashboard.php">Dashboard</a></li>
                <li><a href="tutoringSchedule.php">Tutoring Schedule</a></li>
				</h3>
            </ul>
        </div>
         <div id="middle">
            <div id="center-column">
                <div class="top-bar">
					<h1>TUTORING SCHEDULE</h1> <br>
                </div> <!-- end #top-bar -->
				
				<!--
				<div class="table">
                    <table class="listing form" cellpadding="0" cellspacing="0">
                     <form action='tutoringSchedule.php' method='GET'>
						<tbody>
                        <tr>
                            <td width="172"><strong>Enter Semester :</strong></td>
                            <td><input type="text" class="text" name="sem" size="5"></td>
                        </tr>
                    </tbody>
					</table>
					<p><input type='submit' name = 'submit' value='Submit'></p>
					</form>
                </div> 
				-->
										
				<?php

				$user = 'root';
				$pass = '';
				$db = 'comptutor';

				$conn = new mysqli('localhost', $user, $pass, $db);
				 if ($conn->connect_errno > 0)
				 {
				  echo "Failed to connect to MySQL: ";
				  die('Unable to connect to database [' . $db->connect_error . ']');
				 }

				$sql=mysqli_query($conn,"SELECT * FROM tutor_schedule");
				if(mysqli_num_rows($sql)>0)
				{
				?>
					<div class="table">
						<table class="listing" cellpadding="0" cellspacing="0">
							<tbody>
							<tr>
								<th> DAY </th>
								<th> TIMINGS </th>
								<th> TUTOR </th>
							</tr>	
							<?php
							/* if(mysqli_fetch_array($sql)==0)
								echo "No data fetched!"; */
							while($row=mysqli_fetch_array($sql))
							{
							?>
							<tr>
								<td class="style2">                    
									<?php echo $row['Day'];?>
								</td>
								<td class="style2">
									<?php echo $row['Time']; ?>
								</td>
								<td class="style3">
									<?php echo $row['Tutor'];?>
								</td>
								
							</tr>
							</tbody>
							<?php
								}
				}		
				?>
				<!-- end if -->
									</table>
								</div> <!-- end "table" -->
			</div> <!-- end #center-column -->
		</div>  <!-- end #middle -->
        <div id="footer">
			<p>
				Department of Mathematics and Computer Science <br>
				SMSU &copy;2016
		</p>
		</div>
    </div> <!-- end #container -->
	</div> <!-- end #main --></div>
</body>
</html>