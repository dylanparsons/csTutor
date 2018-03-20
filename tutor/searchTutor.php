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
				<a href="home_student.php"><h1><center>
					On-Demand Tutors
				</center></h1></a>
			</div>
            <ul id="top-navigation">
                <h3>
				<li><a href="about_student.php">About Us</a></li>
                <li><a href="studentDashboard.php">Dashboard</a></li>
                <li><a href="logout.php">Logout</a></li>
				</h3>
            </ul>
        </div>
        <div id="middle">
            <div id="center-column">
                <div class="top-bar">
                    <h1>Search for Tutors </h1><br>
                </div>
				                
                <div class="table">
                    <form action='searchTutor.php' method='GET' >
						<table class="listing form" cellpadding="0" cellspacing="0">
							<tbody>
								<tr>
									<td><strong>Tutor Name:</strong></td>
									<td><input type="text" class="text" name='tutorName'></td>
								</tr>
								<!--tr>
									<td><strong>Rating: </strong></td>
									<td><input type="text" class="text" name='et'></td>
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
				$name = $_GET['tutorName'];				
				$sql=mysqli_query($conn,"SELECT * FROM tutor_rating WHERE FirstName = '$name' ORDER BY Rating");
				if(mysqli_num_rows($sql)>0)
				{
				?>
					<div class="table">
						<table class="listing" cellpadding="0" cellspacing="0">
							<tbody>
							<tr>
								<th> TUTOR NAME </th>
								<th> RATING </th> 
							</tr>	
							<?php
							while($row=mysqli_fetch_array($sql))
							{
							?>
							<tr>
								<td class="style2">                    
									<?php echo $row['FirstName'];?>
								</td>
								<td class="style2">
									<?php echo $row['Rating']; ?>
								</td>
							</tr>
							</tbody>
							<?php
							}
					}		
				}?>
					<!-- end if -->
					</table>
					</div> <!-- end "table" -->
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