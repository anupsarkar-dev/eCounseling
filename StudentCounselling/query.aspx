<%@ Page Title="About" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="query.aspx.vb" Inherits="StudentCounselling.query" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >
    <div style="background-image:url('Content/bg2.jpg');height:100%;max-width:100%">
    <br />
    <br />
    <br />
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <p class="text-danger">
        <asp:Label ID="err" runat="server" ></asp:Label>
    </p>

  

   <div class="row">
    <div class="col-sm-3" style="background-color:lavender;width: 94%;margin-top: 19px;height: 384px;margin-left: 43px;/* margin-right: 160px; */background-color:lavender;">
        
        
      


        <div class="row">
            <div class="col-sm-5">
                  <div class="panel panel-default" style="background-color:lavender">
  <div class="panel-body"><h3>Personal Counselling </h3></div>
                      
            <div class="well"> <img src="Content/personal.jpg" alt="Paris" class="img-responsive"></div>
</div>

            </div>
            <div class="col-sm-7">


                 <ul class="list-group">
  <li class="list-group-item"><a class="btn btn-primary" href="appointment"  style=" width:88%;padding:25px"><span class="glyphicon glyphicon-ok"></span> Make an Appointment &raquo;</a>
  </li>
  <li class="list-group-item"> <a class="btn btn-default" href="workshop"  style=" width:88%;padding:25px"><span class="glyphicon glyphicon-heart"></span> Attend Personal Development Workshop &raquo;</a>
          
  </li>
  <li class="list-group-item"> <a class="btn btn-danger" href="emergency"  style=" width:88%;padding:25px"> <span class="glyphicon glyphicon-fire"></span> Crisis Situation(Emergency) &raquo;</a>

  </li>
         <li class="list-group-item">   
    <a class="btn btn-success" href="feedback"  style=" width:88%;padding:25px">  <span class="glyphicon glyphicon-thumbs-up"></span> Feedback &raquo;</a>
  </li>
</ul>
              
                
                 </div>
           
        </div>
    </div>




    <div class="col-sm-5" style="margin-left:30px;margin-top: 20px;" >  <div class="form-horizontal" id="frm">
      <div class="panel-body"><h3>Enter Query </h3></div>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />

        <div class="well">

       
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="subject" CssClass="col-md-2 control-label">Subject</asp:Label>
             
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="subject" CssClass="form-control" style="width: 88%;"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="subject"
                    CssClass="text-danger" ErrorMessage="The subject field is required." />
            </div>
        </div>
  
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="problems" CssClass="col-md-2 control-label">Select a Category</asp:Label>
            
            
            <div class="col-md-10">
                
               <asp:DropDownList ID="problems" CssClass="form-control"  runat="server" style="width:88%">
                   <asp:ListItem Value="Love &amp; Relationship">Love &amp; Relationship</asp:ListItem>
                   <asp:ListItem Value="Time Management" >Time Management</asp:ListItem>
                   <asp:ListItem Value="Mental & Mind Fitness" >Mental & Mind Fitness</asp:ListItem>
                   <asp:ListItem Value="Lack Of Self Confidence" >Lack Of Self Confidence</asp:ListItem>
                   <asp:ListItem Value="Family & Childhood Issues" >Family & Childhood Issues</asp:ListItem>
                   <asp:ListItem Value="Depression" >Depression</asp:ListItem>
                   <asp:ListItem Value="Alcohol & Drug Addiction" >Alcohol & Drug Addiction</asp:ListItem>

                   <asp:ListItem Value="Anger Management" >Anger Management</asp:ListItem>

                    <asp:ListItem Value="Sexual Assault/Harrasment" >Sexual Assault/Harrasment</asp:ListItem>
                   <asp:ListItem Value="English Language Fluency" >English Language Fluency</asp:ListItem>
              
            </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="problems"
                    CssClass="text-danger" ErrorMessage="Please select a option" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="msgs" CssClass="col-md-2 control-label">Message</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="msgs" CssClass="form-control" TextMode="MultiLine" style="width:88%"  />
               <asp:RequiredFieldValidator runat="server" ControlToValidate="msgs"
                    CssClass="text-danger" ErrorMessage="Please put your query" />
            </div>
        </div>
       
        
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server"  Text="Send" CssClass="btn btn-primary" style=" width:88%;margin-bottom: 50px;" OnClick="submitQuery"/>
            </div>
        </div>
             </div>
    </div>
</div>
    <div class="col-sm-5" style="margin-top: 19px;background-color:lavender;/* width: 550px; */float: right;margin-right: 40px;">
        
         <div class="panel panel-default" style="background-color:lavender;height: 470px;">
  <div class="panel-body"><h3>Upcoming Events</h3></div>
             <br />
            <div class="well">  <ul class="list-group">
  <li class="list-group-item"><h5>Mind Mental Workshop</h5>

      <span class="glyphicon glyphicon-calendar"></span> 1 July 2017 
  </li>
  <li class="list-group-item"><h5>Alcohol & Drug Addiction Management Workshop</h5>

      <span class="glyphicon glyphicon-calendar"></span> 4 May 2017 

  </li>
  <li class="list-group-item"><h5>Sexual Education Workshop</h5>

       <span class="glyphicon glyphicon-calendar"></span> 14 June 2017 

  </li>
            
  
</ul>

            </div>
</div>

    </div>
  </div>


    <style>
        #frm {
            background-color: lavender;
            color: black;
            width:100%;
        }

.container .body-content
    {
    max-width:100%;
    }
   
  

 
    </style>
        </div>

    <br />

    <br />
    <br />
    <br />
    <br />
</asp:Content>
