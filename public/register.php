<?php

    // configuration
    require("../includes/config.php");

    // if user reached page via GET (as by clicking a link or via redirect)
    if ($_SERVER["REQUEST_METHOD"] == "GET")
    {
        // else render form
        render("register_form.php", ["title" => "Register"]);
    }

    // else if user reached page via POST (as by submitting a form via POST)
    else if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        // confirm they have entered a username
        if (empty($_POST["username"]))
        {
            apologize("Please enter a unique username");
        }
        
        // confirm they have entered a password
        else if (empty($_POST["password"]))
        {
            apologize("Please enter a password");
        }
        
        // confirm they have re-entered password
        else if (empty($_POST["confirmation"]))
        {
            apologize("Please confirm your password");
        }
        
        // confirm the password and confirmation match
        else if ($_POST["password"] != $_POST["confirmation"])
        {
            apologize("Your passwords do not match.  Please try again!");
        }
        
        // query database to see if user exists
        $rows = query("SELECT * FROM users WHERE username = ?", $_POST["username"]);
        
        if (count($rows) == 1)
        {
            apologize("This username has been taken.  Try another.");
        }
       
        else
        {
            // enter a new user into the database
            $newuser = query("INSERT INTO users (username, hash) VALUES(?, ?)", $_POST["username"], crypt($_POST["password"]));
            
            // check for existing username
            if ($newuser === false)
            {
                apologize("Unable to register user.  Try again.");
            }
            
            // log user in to portfolio
            $rows = query("SELECT LAST_INSERT_ID() AS id");
            if (count($rows) == 1)
            {
                // first (and only) row
                $row = $rows[0];

                // remember that user's now logged in by storing user's ID in session
                $_SESSION["id"] = $row["id"];

                // redirect to portfolio
                redirect("/");
            }
        }
    }
?>
