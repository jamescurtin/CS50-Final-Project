<p>
    Enter your donor's registration number into the form, followed by their occupation, employer, and amount 
    donated. Note that information about occupation and employer must be collected from each individual who donates
    more than $200. To ensure acccuracy, you must enter the voter registration number.  This can be found using the
    search functionality.
</p><br>
<form action="fundraising.php" method="post">
    <fieldset>
        <div class="control-group">
            <label for="registration">Registration #:</label>	<input type="text" name="registration" 
                id="registration" /><br />
            <label for="occupation">Occupation:</label>	<input type="text" name="occupation" 
                id="occupation" value="" /><br />
            <label for="employer">Employer:</label>	<input type="text" name="employer" id="employer" value="" 
                /><br />
            <label for="amount">Amount:</label>	<input type="text" name="amount" id="amount" /><br><br>
            <input type="submit" value="Submit">
        </div> <br>
    </fieldset>
</form>

