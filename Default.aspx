<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PremiumCalculator._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Monthly Premium Calculator:</h1>

    </div>

    <div class="row">

        <div class="form-group">
            <label for="Name"><b>Name</b></label>
            <input type="text" placeholder="Enter Name" name="name" id="name" required>
        </div>

        <div class="form-group">
            <label for="DateOfBirth"><b>Date Of Birth</b></label>
            <input type="date" placeholder="Enter Date Of Birth" name="DateOfBirth" id="DateOfBirth" onchange="fnCalculateAge()"  required>
        </div>

        <div class="form-group">
            <label for="Age"><b>Age</b></label>
            <input type="number" placeholder="Enter Age" name="Age" id="Age" readonly required>
        </div>

        <div class="form-group">

            <label for="CoverAmount"><b>Death – Sum Insured</b></label>
            <input type="number" placeholder="Death Cover Amount" name="CoverAmount" id="CoverAmount" required>
        </div>

        <div>
            <label for="Select Occupation:"><b>Occupation:</b></label>
            <select name="Occupation" id="Occupation" oninput="fnPremiumCalculation()" >
                <option value="Option">Please select a option</option>
                <option value="1.50">Cleaner</option>
                <option value="1.0">Doctor</option>
                <option value="1.25">Author</option>
                <option value="1.75">Farmer</option>
                <option value="1.75">Mechanic</option>
                <option value="1.50">Florist</option>
            </select>
        </div>
        <br>

        <b>Total Premium:</b>
        <label id="TotalPremium" style="color: deeppink">
        </label>


    </div>

    <script type="text/javascript">

        function fnCalculateAge() {


            var userDateinput = document.getElementById("DateOfBirth").value;

            // convert user input value into date object
            var birthDate = new Date(userDateinput);

            // get difference from current date;
            var difference = Date.now() - birthDate.getTime();

            var ageDate = new Date(difference);
            var calculatedAge = Math.abs(ageDate.getUTCFullYear() - 1970);
            document.getElementById('Age').value = calculatedAge;

        }

        // Calculate monthly death premium
        function fnPremiumCalculation() {
            var Name = document.getElementById("name").value;
            var Age = document.getElementById("Age").value;
            var Dob = document.getElementById("DateOfBirth").value;
            var CoverAmount = document.getElementById("CoverAmount").value;
            var Occupation = document.getElementById("Occupation").value;
            if ((Name == "") || (Dob == "")) {
                window.alert("All fields are mandatory, Please fill all fields");
            }
            else {
                var result = ((CoverAmount * Occupation * Age) / (1000 * 12)).toFixed(2);

                document.getElementById('TotalPremium').innerHTML = result;

            }
        }
    </script>

</asp:Content>
