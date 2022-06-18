<?php

/**
 * @author gencyolcu
 * @copyright 2020
 */

$dbName="covid19";
$dbUserName="root";
$dbPassword="covid19";
$dbHost="localhost";

$connection=mysqli_connect($dbHost, $dbUserName, $dbPassword, $dbName);

// Check connection
if ($connection->connect_error) {
    die("Connection failed: " . $db->connect_error);
}


// Open uploaded CSV file with read-only mode
            $csvFile = fopen('countries.csv', 'r');
            
            // Skip the first line
            fgetcsv($csvFile);
            
            // Parse data from CSV file line by line
            while(($line = fgetcsv($csvFile)) !== FALSE){
                // Get row data
                $country   = $line[0];
                echo $country;
                $query="insert into countries('country') values ('$country')";
                
                mysqli_query($connection, $query);                
                }
?>