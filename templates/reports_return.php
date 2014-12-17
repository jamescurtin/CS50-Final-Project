<p>
    Hello, <strong><?=ucfirst($userdata["username"])?>!</strong> 
</p><br>
<?php
    if ($report === "alert")
    {
        print("<p> You are missing the occupation and employer of the following individuals: </p><br>");
    }
    else if ($report === "donors")
    {
        print("<p> The following individuals have donated to your campaign: </p><br>");
    }

    if ($voters == [])
    {
        if ($report === "alert")
        {
            print("You are not missing any information."); 
        }
        else if ($report === "donors")
        {
            print("No one has donated to your campaign.");
        }
    }
?>
<div id='print_div'>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Last Name</th>
                <th>First Name</th>
                <th>Occupation</th>
                <th>Employer</th>
                <th>Amount</th>
            </tr>
        </thead>
        <tbody>
            <?php
                foreach ($voters as $voter)
                {
                    print("<tr>");
                    print("<td>" . $voter["last_name"] . "</td>");
                    print("<td>" . $voter["first_name"] . "</td>");
                    print("<td>" . $voter["occupation"] . "</td>");
                    print("<td>" . $voter["employer"] . "</td>");
                    print("<td>" . "$" . $voter["amount"] . ".00" . "</td>");
                    print("</tr>");
                }
                print("</tbody>");
                print("</table>");
            ?>
</div>
<script>
    function printDiv(divName) 
    {
        var printContents = document.getElementById(divName).innerHTML;
        var originalContents = document.body.innerHTML;
        document.body.innerHTML = printContents;
        window.print();
        document.body.innerHTML = originalContents;
    }
</script>
<input type="button" onclick="printDiv('print_div')" value="Print this Page!" /><br><br>
