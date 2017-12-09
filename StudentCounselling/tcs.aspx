<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="tcs.aspx.vb" Inherits="StudentCounselling.tcs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
  <div class="row">
    <div class="col-sm-8">
      <h2>Tata Consultancy Services(TCS)</h2>
      <h4>We appreciate your interest in exploring career opportunities with us.</h4>      
      <p>At TCS, we service a wide range of industry verticals, technology platforms, and business functions. This multifarious exposure 
provides you with growth opportunities at every step of your career. TCS lets you draw upon its superlative treasure of experience 
and expertise to add to yours.

We believe in providing a multi-faceted exposure across domains and roles that are equipped with a flexibility that allows you to 
discover your ideal role, and thus helping you achieve your true potential. This translates into:

Constant opportunities to discover your forte while you work across domains.
Benefit of	best-in-class practices and learning for our customers.</p>
      <button class="btn btn-default btn-lg">Get Placed</button>
    </div>
    <div class="col-sm-4">
  <img src="Content/TCS.jpg" alt="Paris" width="400" height="300">
    </div>
  </div>
</div>

<div class="container-fluid bg-grey">
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-globe logo"></span>
    </div>
    <div class="col-sm-8">
      <h2>What We Are:</h2>
      <h4><strong>MISSION:</strong> 
We believe in providing a multi-faceted exposure across domains and roles that are equipped with a flexibility that allows you to 
discover your ideal role, and thus helping you achieve your true potential. This translates into:</h4>      
      <p><strong>Current Jobs @ TCS IT:</strong> <ul class="list-group">
  <li class="list-group-item">C Programmer</li>
  <li class="list-group-item">Java Developer</li>
  <li class="list-group-item">Web Developer</li>
            <li class="list-group-item">Grafics Designer</li>
  <li class="list-group-item">Gaming COder</li>
</ul></p>
    </div>
  </div>
</div>
 <style>
  .jumbotron {
      background-color: #f4511e;
      color: #fff;
      padding: 100px 25px;
  }
  .container-fluid {
      padding: 60px 50px;
  }
  .bg-grey {
      background-color: #f6f6f6;
  }
  .logo {
      width:400px;
      height:300px;
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
  }
  </style>
</asp:Content>
