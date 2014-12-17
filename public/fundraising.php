<?php

    // configuration
    require("../includes/config.php");

    // If they filled out search_form
    if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        // Get username to welcome user
        $userdata = query("SELECT username FROM users WHERE id = ?", $_SESSION["id"]);
        
        // Update the database when the user inputs data
        $rows = query("UPDATE voters SET occupation = ?, employer = ?, amount = amount + ?, isedited = 1 WHERE 
            registration = ?", $_POST["occupation"], $_POST["employer"], $_POST["amount"], $_POST["registration"]);
        
        // Queries the database to select the rows that were just edited
        $returns = query("SELECT last_name, first_name, occupation, employer, amount FROM voters WHERE 
            isedited = 1");
        
        // construct the table of edited rows
        $positions = [];
        
        foreach ($returns as $i => $return)
        {
            $returns[$i]["last_name"] = $return["last_name"];
            $returns[$i]["first_name"] = $return["first_name"];
            $returns[$i]["occupation"] = $return["occupation"];
            $returns[$i]["employer"] = $return["employer"];
            $returns[$i]["amount"] = $return["amount"];
        }
        
        // Reset the bool used to track if row was edited
        $return = query("UPDATE voters SET isedited = 0 WHERE isedited = 1");
             
        // Render the page
        render("fundraising_return.php", ["title" => "Fundraising Return", "userdata" => $userdata[0], 
            "voters" => $returns]);
    } 
    else
    {
        // Display the entry form
        render("fundraising_entry.php", ["title" => "Fundraising Entry"]);
    }
?>
