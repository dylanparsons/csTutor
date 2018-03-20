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
				<a href="home_admin.php"><h1><center>
					On-Demand Tutors
				</center></h1></a>
			</div>
            <ul id="top-navigation">
                <h3>
				<li><a href="about.php">About Us</a></li>
                <li><a href="adminDashboard.php">Dashboard</a></li>
				<li><a href="tutoringSchedule.php">Tutoring Schedule</a></li>
                <li><a href="logout.php">Logout</a></li>
				</h3>
            </ul>
        </div>
        <div id="middle">
            <div id="center-column">			
                <div class="top-bar">
                    <h1>ADD ENTRY TO UPDATE SCHEDULE</h1><br>
                </div>
                
                <div class="table">
                    <table class="listing form" cellpadding="0" cellspacing="0">
                     <form action='add.php' method='GET'>
						<tbody><tr>
                            <th class="full" colspan="2">Submit entry to Add into Schedule</th>
                        </tr>
                        <tr>
                            <td width="172"><strong>Day:</strong></td>
                            <td><input type="text" class="text" name='day'></td>
                        </tr>
                        <tr>
                            <td><strong>Timings:</strong></td>
                            <td><input type="text" class="text" name='timings'></td>
                        </tr>
                        <tr>
                            <td><strong>Tutor:</strong></td>
                            <td><input type="text" class="text" name='tutor'></td>
                        </tr>
                        <!--tr>
                            <td><strong>Course:</strong></td>
                            <td><input type="text" class="text" name='course'></td>
                        </tr-->
					</tbody>
					</table>
					<p><input type='submit' name = 'submit' value='Submit'></p>
					</form>
                </div> <!-- end #table -->
				
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
				
				if (isset($_GET['submit']))
				{				
					$insert = "INSERT INTO tutor_schedule(Day,Time,Tutor) VALUES ('$_GET[day]', '$_GET[timings]', '$_GET[tutor]')" ;
					$sql = mysqli_query($conn,$insert);
					if($sql)
						echo "\nSchedule Updated!";
					else
						echo "\nError in updating! Please re-enter correct data";
				}
				?>
		    </div> <!-- end #center -->
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