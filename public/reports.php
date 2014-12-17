<?php

    // configuration
    require("../includes/config.php");

    // if they filled out search_form
    if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        // Get username to welcome user
        $userdata = query("SELECT username FROM users WHERE id = ?", $_SESSION["id"]);

        // If they requested the report for missing information
        if ($_POST["report"] === "alert")
        {
            $rows = query("SELECT last_name, first_name, occupation, employer, amount FROM voters WHERE 
                ((occupation = ' ' OR employer = ' ') OR (occupation IS NULL OR employer IS NULL)) AND 
                amount > 200");
        }
        // If they requested the report on all donors
        else if ($_POST["report"] === "donors")
        {
            $rows = query("SELECT last_name, first_name, occupation, employer, amount FROM voters WHERE 
                amount > 0");
        }
        
        // Construct the table for either of the reports
        $positions = [];

        foreach ($rows as $i => $row)
        {
            $rows[$i]["last_name"] = $row["last_name"];
            $rows[$i]["first_name"] = $row["first_name"];
            $rows[$i]["occupation"] = $row["occupation"];
            $rows[$i]["employer"] = $row["employer"];
            $rows[$i]["amount"] = $row["amount"];
        }
             
         // Render the page
         render("reports_return.php", ["title" => "Reports Return", "userdata" => $userdata[0], "voters" => $rows, 
         "report" => $_POST["report"]]);
    } 
    else
    {
        // Display the report selection page
        render("reports_entry.php");
    }
?>
