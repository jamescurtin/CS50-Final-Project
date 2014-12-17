<?php

    // Configuration
    require("../includes/config.php"); 

    // Get username to welcome user
    $userdata = query("SELECT username FROM users WHERE id = ?", $_SESSION["id"]);
         
     // Render the page
     render("startpage.php", ["title" => "Home", "userdata" => $userdata[0]]);

?>
