<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="StudentCounselling._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-image:url('Content/aaa.jpg');background-repeat: repeat-x;color: black;text-shadow:unset">
        <h1>Your True Friend</h1>
        
        <h3 class="lead">Get Free, Trusted Help from an Expert Right Now</h3>
        <h5>Sometimes you need someone to talk to. We’re here for you.</h5>
        <p><a href="" class="btn btn-primary btn-lg">Consult Us &raquo;</a></p>
    </div>

    <div class="row">

                <div class="col-md-4">
            <h2>PERSONAL</h2>
            <p>
               Depression can be prevented and treated. Know what Depression is, and seek help instead of suffering silently. It's time we open up about Depression.
            </p>
            <p> <%If Session("id") = Nothing Then%>
                        <a class="btn btn-default" href="Account/Login">Get ASSISTANCE &raquo;</a>

                        <%End If %>
                                <%If Session("type") = "normal" Then%>
                          
                      <a class="btn btn-default" href="query">Get ASSISTANCE &raquo;</a>
                       
                  <%ElseIf Session("type") = "admin" Then%>
                          
                          <a class="btn btn-default" href="adminPanel">Provide Your ASSISTANCE &raquo;</a>
                        <%End If%>
            </p>
        </div>
   



        <div class="col-md-4">
            <h2>ACADEMIC</h2>
            <p>
                Depression can be prevented and treated. Know what Depression is, and seek help instead of suffering silently. It's time we open up about Depression.
            </p>
            <p>
                
                        <%If Session("id") Is Nothing Then%>
                        <a class="btn btn-default" href="Account/Login">Get ASSISTANCE &raquo;</a>

                        <%End If %>
                                <%If Session("type") = "normal" Then%>
                          
                      <a class="btn btn-default" href="query">Get ASSISTANCE &raquo;</a>
                       
                  <%ElseIf Session("type") = "admin" Then%>
                          
                          <a class="btn btn-default" href="adminPanel">Provide Your ASSISTANCE &raquo;</a>
                        <%End If%>
                
            </p>
        </div>
        <div class="col-md-4">
            <h2>CAREER</h2>
            <p>
               Depression can be prevented and treated. Know what Depression is, and seek help instead of suffering silently. It's time we open up about Depression.
            </p>
            <p> <%If Session("id") Is Nothing Then%>
                        <a class="btn btn-default" href="Account/Login">Get ASSISTANCE &raquo;</a>

                        <%End If %>
                                <%If Session("type") = "normal" Then%>
                          
                      <a class="btn btn-default" href="careerAdvisor">Get ASSISTANCE &raquo;</a>
                       
                  <%ElseIf Session("type") = "admin" Then%>
                          
                          <a class="btn btn-default" href="adminPanel">Provide Your ASSISTANCE &raquo;</a>
                        <%End If%>
            </p>
        </div>
     </div>

<div class="container-fluid bg-3 text-center">
  <h1>You Can Talk To Experts About</h1> <br />
  
      <br />


  <div class="row">
    <div class="col-sm-4">
      <h2>Love & Relationship</h2>
        <br />
      <img src="Content/a.jpg" alt="Image" class="img-circle" width="140" height="140">

      <h5>(Relationship counseling, Marriage Counseling, Couple Therapy, Break-up Support)</h5>
    </div>
    <div class="col-sm-4">
      <h2>Career & Academics</h2>
    <br />
      <img src="Content/ca.jpg" alt="Image" class="img-circle" width="140" height="140">

      <h5>(Exam Preparation, Career Questions, Work-Life Balance, Workplace Conflict Resolution)</h5>
    </div>
    <div class="col-sm-4">
        <h2>Sexual Wellness</h2>
        <br />
  
      <img src="Content/s.png" alt="Image" class="img-circle" width="140" height="140">
     <h5>(Porn & Masturbation, Sexual Orientation, LGBT Queries)</h5>
    </div>
  </div>
</div>


</asp:Content>
