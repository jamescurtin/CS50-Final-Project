<?php
    // configuration
    require("../includes/config.php");

    // if they filled out search_form
    if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        // Get username to welcome user
        $userdata = query("SELECT username FROM users WHERE id = ?", $_SESSION["id"]);
        
        // Query the three figures required by the election commission
        $totalreciepts = query("SELECT SUM(amount) FROM voters");
        $underfifty = query("SELECT amount FROM voters WHERE amount < 50");
        $largedonors = query("SELECT last_name, first_name, occupation, employer, amount FROM voters 
            WHERE amount > 200");
        
        // Construct the table of the large donors
        $positions = [];
        
        foreach ($largedonors as $i => $largedonor)
        {
            $largedonors[$i]["last_name"] = $largedonor["last_name"];
            $largedonors[$i]["first_name"] = $largedonor["first_name"];
            $largedonors[$i]["occupation"] = $largedonor["occupation"];
            $largedonors[$i]["employer"] = $largedonor["employer"];
            $largedonors[$i]["amount"] = $largedonor["amount"];
        }
             
         // Render the page
         render("ec_calculations.php", ["title" => "Election Commission Report", "userdata" => $userdata[0], 
         "totalreciepts" => $totalreciepts, "underfifty" => $underfifty, "largedonors" => $largedonors]);
    } 
    else
    {
        // Display the submit page
        render("ec_entry.php", ["title" => "Election Commission"]);
    }
?>
