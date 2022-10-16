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
            <input type="date" placeholder="Enter Date Of Birth" name="DateOfBirth" id="DateOfBirth"  required>
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
            <select name="Occupation" id="Occupation" >
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

</asp:Content>
