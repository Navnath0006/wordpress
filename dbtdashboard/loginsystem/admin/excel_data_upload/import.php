<?php
include 'db.php';
if(isset($_POST["Import"])){
		

		echo $filename=$_FILES["file"]["tmp_name"];
		

		 if($_FILES["file"]["size"] > 0)
		 {

		  	$file = fopen($filename, "r");
	         while (($diseasedata = fgetcsv($file, 10000, ",")) !== FALSE)
	         {
	    
	          //It wiil insert a row to our subject table from our csv file`
	           $sql = "INSERT into disease_data (`SAMPLE_ID`, `SAMPLE_NO`, `STATE_NAME`, `DISTRICT_NAME`, `BLOCK_TALUK`, `VILLAGE_NAME`,`DATE`, `SPECIES`, `BREED`, `SEX`, `AGE`, `SAMPLE_TYPE`, `TEST`, `TEST_RESULT`) 
	            	values('$diseasedata[0]','$diseasedata[1]','$diseasedata[2]','$diseasedata[3]','$diseasedata[4]','$diseasedata[5]','$diseasedata[6]','$diseasedata[7]','$diseasedata[8]','$diseasedata[9]','$diseasedata[10]','$diseasedata[11]','$diseasedata[12]','$diseasedata[13]')";
	         //we are using mysql_query function. it returns a resource on true else False on error
	          $result = mysqli_query( $conn, $sql );
				if(! $result )
				{
					echo "<script type=\"text/javascript\">
							alert(\"Invalid File:Please Upload CSV File.\");
							window.location = \"index.php\"
						</script>";
				
				}

	         }
	         fclose($file);
	         //throws a message if data successfully imported to mysql database from excel file
	         echo "<script type=\"text/javascript\">
						alert(\"CSV File has been successfully Imported.\");
						window.location = \"index.php\"
					</script>";
	        
			 

			 //close of connection
			mysqli_close($conn); 	
			
		 }
	}	 
?>		 