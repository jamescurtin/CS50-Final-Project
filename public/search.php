<?php
    // configuration
    require("../includes/config.php");

    // if they filled out search_form
    if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        // Get username to welcome user
        $userdata = query("SELECT username FROM users WHERE id = ?", $_SESSION["id"]);
        
        // Search the database using concatinated string of search terms
        $rows = query("SELECT registration, last_name, first_name, street_number, street_name, party, 
            gender, birthdate, last_voted, precinct_number FROM voters WHERE precinct_number LIKE ? AND 
            party LIKE ? AND gender LIKE ? AND last_name LIKE ? AND first_name LIKE ? AND street_name LIKE ?", 
            "%" . $_POST["precincts"] . "%", "%" . $_POST["party"] . "%", "%" . $_POST["gender"] . "%",
            "%" . $_POST["last_name"] . "%", "%" . $_POST["first_name"] . "%", "%" . $_POST["street_name"] . "%");
        
        // construct the table of search results
        $positions = [];

        foreach ($rows as $i => $row)
        {
            $rows[$i]["registration"] = $row["registration"];
            $rows[$i]["last_name"] = $row["last_name"];
            $rows[$i]["first_name"] = $row["first_name"];
            $rows[$i]["street_number"] = $row["street_number"];
            $rows[$i]["street_name"] = $row["street_name"];
            $rows[$i]["party"] = $row["party"];
            $rows[$i]["gender"] = $row["gender"];
            $rows[$i]["birthdate"] = $row["birthdate"];
            $rows[$i]["last_voted"] = $row["last_voted"];
            $rows[$i]["precinct_number"] = $row["precinct_number"];
        }
             
         // render the page
         render("search_results.php", ["title" => "Search Return", "userdata" => $userdata[0], "voters" => $rows]);
    } 
    else
    {
        // Display the search form
        render("search_form.php");
    }
?>
