<?php

    // configuration
    require("../includes/config.php");

    $password = query("SELECT hash FROM users WHERE id = ?", $_SESSION["id"]);
    
    // if user reached page via GET (as by clicking a link or via redirect)
    if ($_SERVER["REQUEST_METHOD"] == "GET")
    {
        // else render form
        render("reset_password.php", ["title" => "Password Reset"]);
    }

    // else if user reached page via POST (as by submitting a form via POST)
    else if ($_SERVER["REQUEST_METHOD"] == "POST")
    {
        // confirm they have entered a username
        if (empty($_POST["oldpassword"]))
        {
            apologize("Please enter your current password");
        }
        
        // confirm they have entered a password
        else if (empty($_POST["newpassword"]))
        {
            apologize("Please enter a new password");
        }
        
        // confirm they have re-entered password
        else if (empty($_POST["confirmation"]))
        {
            apologize("Please confirm your password");
        }
        
        // confirm they entered their old password correctly
        else if (crypt($_POST["oldpassword"], $password[0]["hash"]) != $password[0]["hash"])
        {
            apologize("You did not enter your current password properly.  Try again.");
        }
        
        // confirm the password and confirmation match
        else if ($_POST["newpassword"] != $_POST["confirmation"])
        {
            apologize("Your new passwords do not match.  Please try again!");
        }
        
        // update password
        $rows = query("UPDATE users SET hash = ? WHERE id = ?", crypt($_POST["newpassword"]), $_SESSION["id"]);
        
        // redirect to portfolio
        redirect("/");
    }
?>
