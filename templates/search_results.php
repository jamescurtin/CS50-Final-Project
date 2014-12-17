<p>
    Hello, <strong><?=ucfirst($userdata["username"])?>!</strong> 
</p><br>
<div id='print_div'>
    <p>
        Your search has returned the following results:
    </p>
    <?php
    if ($voters == [])
        {
            print("<b> Your search has returned no results. Try again with less restrictive terms. </b>"); 
        }
    ?>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>Voter Registration #</th>
                <th>Last Name</th>
                <th>First Name</th>
                <th>Street Number</th>
                <th>Street Name</th>
                <th>Party</th>
                <th>Gender</th>
                <th>Birthdate</th>
                <th>Last Voted</th>
                <th>Precinct Number</th>
            </tr>
        </thead>
        <tbody>
            <?php
                foreach ($voters as $voter)
                {
                    print("<tr>");
                    print("<td>" . $voter["registration"] . "</td>");
                    print("<td>" . $voter["last_name"] . "</td>");
                    print("<td>" . $voter["first_name"] . "</td>");
                    print("<td>" . $voter["street_number"] . "</td>");
                    print("<td>" . $voter["street_name"] . "</td>");
                    print("<td>" . $voter["party"] . "</td>");
                    print("<td>" . $voter["gender"] . "</td>");
                    print("<td>" . $voter["birthdate"] . "</td>");
                    print("<td>" . $voter["last_voted"] . "</td>");
                    print("<td>" . $voter["precinct_number"] . "</td>");
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
</script><br><br>
<input type="button" onclick="printDiv('print_div')" value="Print this Page!" />
