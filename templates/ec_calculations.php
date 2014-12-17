<p>
    Hello, <strong><?=ucfirst($userdata["username"])?>!</strong> 
</p><br>

<div id='print_div'>
    <p>
        Total receipts are:
        <?php
            print("<b> $" . $totalreciepts[0]["SUM(amount)"] . ".00 </b>");
        ?>
    </p>
    <p>
        The total of all donations of less than $50 each are:
        <?php
            // Add all donations that were under $50 each
            $counter = 0;
            foreach ($underfifty as $underfiftys)
            {
                $counter = $counter + $underfiftys["amount"];
            }
            print("<b> $" . $counter . ".00 </b>");
        ?>
    </p>
    <p>
        The following individuals have donated $200 or greater:
    </p>
    <?php
        // If array is empty
        if ($largedonors == [])
        {
            print("<b>No donors have contributed more than $200. </b><br><br>"); 
        }
    ?>
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
            foreach ($largedonors as $largedonor)
            {
                print("<tr>");
                print("<td>" . $largedonor["last_name"] . "</td>");
                print("<td>" . $largedonor["first_name"] . "</td>");
                print("<td>" . $largedonor["occupation"] . "</td>");
                print("<td>" . $largedonor["employer"] . "</td>");
                print("<td>" . "$" . $largedonor["amount"] . ".00" . "</td>");
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
