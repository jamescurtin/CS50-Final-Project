<p>
    Hello, <strong><?=ucfirst($userdata["username"])?>!</strong> 
</p><br>
<div id='print_div'>
    <p>
        Your have updated the following records:
    </p>
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
                if ($voters == [])
                {
                    print("An error has occurred.  Please try again."); 
                }
                else
                {
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
                }
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
<input type="button" onclick="printDiv('print_div')" value="Print this Page!" />
