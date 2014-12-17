<!DOCTYPE html>

<html>

    <head>

        <link href="/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="/css/bootstrap-theme.min.css" rel="stylesheet"/>
        <link href="/css/styles.css" rel="stylesheet"/>

        <?php if (isset($title)): ?>
            <title>CS50 Voter Management: <?= htmlspecialchars($title) ?></title>
        <?php else: ?>
            <title>CS50 Voter Management</title>
        <?php endif ?>

        <script src="/js/jquery-1.11.1.min.js"></script>
        <script src="/js/bootstrap.min.js"></script>
        <script src="/js/scripts.js"></script>

    </head>

    <body>

        <div class="container">

            <div id="top">
                <a href="/"><img alt="CS50 Voter Management" src="/img/logo.gif"/></a>
            </div>

            <div id="middle">
                <ul class="nav nav-pills">
                    <li><a href="search.php">Search</a></li>
                    <li><a href="fundraising.php">Fundraising</a></li>
                    <li><a href="reports.php">Generate Reports</a></li>
                    <li><a href="import.php">Upload Voter Roll</a></li>
                    <li><a href="election_commission.php">Election Commission Reporting</a></li>
                </ul>

