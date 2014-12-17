<p>
    Enter informaton into the form to search the voter database.  Try searching with fewer terms to return 
    more results.
</p><br>
<form action="search.php" method="post">
    <fieldset>
        <div class="control-group">
            <label for="precincts">Precinct Number:</label>
		    <select name="precincts" id="precincts">
			    <option value="">Select a Precinct</option>
                <option value='1'>Precinct 1</option>
                <option value='2'>Precinct 2</option>
                <option value='3'>Precinct 3</option>
                <option value='4'>Precinct 4</option>
                <option value='5'>Precinct 5</option>
                <option value='6'>Precinct 6</option>
                <option value='7'>Precinct 7</option>
            </select><br><br>
            <fieldset>    
                <b> Gender: </b>
                <input type="radio" name="gender" id="Unspecified_gender" value="" checked style="display:none">
                <input type="radio" name="gender" id="Male" value="M">Male
                <input type="radio" name="gender" id="Female" value="F">Female
            </fieldset><br>
            <fieldset>
                <b> Party: </b>
                <input type="radio" name="party" id="Unspecified_party" value="" checked style="display:none">
                <input type="radio" name="party" id="Democrat" value="D">Democrat
                <input type="radio" name="party" id="Republican" value="R">Republican
                <input type="radio" name="party" id="Unenrolled" value="U">Unenrolled
            </fieldset><br>
            <label for="last_name">Last Name:</label>	<input type="text" name="last_name" id="last_name" 
                value="" /><br />
            <label for="first_name">First Name:</label>	<input type="text" name="first_name" id="first_name" 
                value=""/><br />
            <label for="street_name">Street Name:</label>	<input type="text" name="street_name" id="street_name" 
                value=""/><br><br>
            <input type="submit" value="Submit">
        </div><br>
    </fieldset>
</form>
