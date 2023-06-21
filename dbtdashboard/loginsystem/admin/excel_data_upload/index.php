<!DOCTYPE html>
<?php 
	include 'db.php';
	


?>	
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>DATA VALIDATION</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="Import Excel File To MySql Database Using php">

		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
		<link rel="stylesheet" href="css/bootstrap-custom.css">


	</head>
	<body>    

	<!-- Navbar
    ================================================== -->

	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container"> 
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="#">SECOND STAGE  DBT-ONE HEALTH DATA VALIDATION </a>
				
			</div>
		</div>
	</div>

	<div id="wrap">
	<div class="container">
		<div class="row">
			<div class="span3 hidden-phone"></div>
			<div class="span6" id="form-login">
				<form class="form-horizontal well" action="import.php" method="post" name="upload_excel" enctype="multipart/form-data">
					<fieldset>
						<legend>Import CSV/Excel file</legend>
						<div class="control-group">
							<div class="control-label">
								<label>CSV/Excel File:</label>
							</div>
							<div class="controls">
								<input type="file" name="file" id="file" class="input-large">
							</div>
						</div>
						
						<div class="control-group">
							<div class="controls">
							<button type="submit" id="submit" name="Import" class="btn btn-primary button-loading" data-loading-text="Loading...">Upload</button>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
			<div class="span3 hidden-phone"></div>
		</div>
		

		<table class="table table-bordered">
			<thead>
				  	<tr>
				  		<th>SAMPLE ID</th>
				  		<th>SAMPLE NUMBER</th>
				  		<th>STATE NAME</th>
				  		<th>DISTRICT NAME</th>
				  		<th>BLOCK NAME</th>
				  		<th>VILLAGE NAME</th>
						<th>DATE OF COLLECTION</th>
				  		<th>SPECIES</th>
				  		<th>BREED</th>
				  		<th>SEX</th>
				  		<th>AGE</th>
				  		<th>SAMPLE TYPE</th>
				  		<th>TEST1</th>
				  		<th>TEST1 RESULTS</th>	
				  		<th>TEST2</th>
				  		<th>TEST2 RESULTS</th>				 		
				 
				  	</tr>	
				  </thead>
			<?php
				$SQLSELECT = "SELECT * FROM disease_data";
				$result_set =  mysqli_query($conn, $SQLSELECT);
				while($row = mysqli_fetch_array($result_set))
				{
				?>
					<tr>
						<td><?php echo $row['SAMPLE_ID']; ?></td>
						<td><?php echo $row['SAMPLE_NO']; ?></td>
						<td><?php echo $row['STATE_NAME']; ?></td>
						<td><?php echo $row['DISTRICT_NAME']; ?></td>
						<td><?php echo $row['BLOCK_TALUK']; ?></td>
						<td><?php echo $row['VILLAGE_NAME']; ?></td>
						<td><?php echo $row['DATE']; ?></td>
						<td><?php echo $row['SPECIES']; ?></td>
						<td><?php echo $row['BREED']; ?></td>
						<td><?php echo $row['SEX']; ?></td>
						<td><?php echo $row['AGE']; ?></td>
						<td><?php echo $row['SAMPLE_TYPE']; ?></td>
						<td><?php echo $row['TEST']; ?></td>
						<td><?php echo $row['TEST_RESULT']; ?></td>
						<td><?php echo $row['TEST2']; ?></td>
						<td><?php echo $row['TEST_RESULT2']; ?></td>
						
					</tr>
				<?php
				}
			?>
		</table>
	</div>

	</div>

	</body>
</html>