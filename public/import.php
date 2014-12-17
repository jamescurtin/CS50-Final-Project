<?php
    // Configuration
    require("../includes/functions.php");
    
    // Starts $_SESSION because it wasn't starting on this page, for some reason.
    if(!isset($_SESSION)) { session_start(); }
    
    // Autodetect line endings because they are not otherwise returning properly 
    ini_set("auto_detect_line_endings", true);
    
    // if user reached page via GET (as by clicking a link or via redirect)
    if ($_SERVER["REQUEST_METHOD"] == "GET")
    {
        render("import_form.php", ["title" => "Import Voter Data"]);
    }
    else if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        // ensure propery entry
        $file = $_FILES["csv"]["tmp_name"];
        if (empty($file))
        {
            apologize("Please enter the path to the file.");
        }
        else
        {
            //Import uploaded file to Database
            $handler = fopen($file, "r");
        }
        if (is_readable($file))
        {
            while ($data = fgetcsv($handler, 0, ","))
            {
                $import = query("INSERT INTO voters(registration, last_name, first_name, middle_name, 
                    street_number, street_name, zip_code, party, gender, birthdate, last_voted, precinct_number,
                    id, Occupation, Employer, Amount, isedited) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 
                    ?, ?, ?)", $data[0], $data[1], $data[2], $data[3], $data[4], $data[5], $data[6], $data[7], 
                    $data[8], $data[9], $data[10], $data[11], $_SESSION["id"], " ", " ", " ", "0"); 
            }
        } 
        else 
        {
            apologize("The file is not readable.");
        }
        fclose($handler);
        render("import_success.php", ["title" => "Successful Import"]);
    }
?>
