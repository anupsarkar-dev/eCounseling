<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="careerAdvisor.aspx.vb" Inherits="StudentCounselling.careerAdvisor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
<div class="container">
	<div class="row">
        <div class="col-lg-11 col-md-11 col-sm-11 col-xs-11 bhoechie-tab-container" style="height:800px">
            <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 bhoechie-tab-menu">
              <div class="list-group">
                <a href="#" class="list-group-item active text-center">
                  <h4 class="glyphicon glyphicon-user"></h4><br/>Profile
                </a>
                <a href="#" class="list-group-item text-center">
                  <h4 class="glyphicon glyphicon-download-alt"></h4><br/>Placement
                </a>
                <a href="#" class="list-group-item text-center">
                  <h4 class="glyphicon glyphicon-edit"></h4><br/>Career
                </a>
                <a href="#" class="list-group-item text-center">
                  <h4 class="glyphicon glyphicon-tag"></h4><br/>Q/A
                </a>
                <a href="#" class="list-group-item text-center">
                  <h4 class="glyphicon glyphicon-credit-share"></h4><br/>Outbox
                </a>
              </div>
            </div>
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10 bhoechie-tab">
                <!-- flight section -->
                <div class="bhoechie-tab-content active">
                    <center>
                         <h3 class="glyphicon glyphicon-user" style="font-size:12em;color:#55518a"></h3>
                        <h4>User Details</h4>
                      <div class="container">
    <div class="row">
        <div class="col-sm-2 col-md-2">
            <img src="Content/user.png"
            alt="" class="img-circle img-responsive" style="
    border: 4px solid gold;
    padding: 5px;
"/>

        </div>
        <div class="col-sm-4 col-md-4">

            <blockquote>
                <h3><asp:Label ID="name" runat="server" Text="Label"></asp:Label></h3> <small><cite title="Source Title"><asp:Label ID="type" runat="server" Text="Label"></asp:Label> Account </cite></small>
            </blockquote>
            <p> <i class="glyphicon glyphicon-envelope"></i> <asp:Label ID="email" runat="server" Text="Label"></asp:Label>
                <br
                /> <i class="glyphicon glyphicon-globe"></i> <asp:Label ID="reg" runat="server" Text="Label"></asp:Label>
                <br /> 
        </div>
       
    </div>
</div>
                    </center>
                </div>
                <!-- train section -->
                <div class="bhoechie-tab-content">


                    <center>
                     
         
                     <div class="container">
    <h3 class="text-center">Placement Guidence</h3>
    
    <div class="row text-center">
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="Content/wipro.png" alt="Paris"  style="width:400px;height:150px" >
          <p><strong>Wipro</strong></p>
          <p>It Company</p>
           <a class="btn btn-primary" href="wipro">Details &raquo;</a>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="Content/TCS.jpg" alt="New York"  style="width:400px;height:150px">
          <p><strong>TCS</strong></p>
         <p>Consultancy Company</p>
            <a class="btn btn-primary" href="tcs">Details &raquo;</a>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="Content/infosys.png" alt="San Francisco"  style="width:400px;height:150px">
          <p><strong>InfoSYS</strong></p>
          <p>Out sourcing company</p>
            <a class="btn btn-primary" href="infosys">Details &raquo;</a>
        </div>
      </div>
    </div>
  </div>
                    
                  
                    </center>
                </div>
    
                <!-- hotel search -->
                <div class="bhoechie-tab-content">
                    <center>
                    
                     <div class="container">
    <h3 class="text-center">Career Guidence</h3>
    
    <div class="row text-center">
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="Content/cse.jpeg" alt="Paris" style="width:400px;height:150px">
          <p><strong>CSE</strong></p>
          <p>Education</p>
           <a class="btn btn-primary" href="cse">Details &raquo;</a>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
         <img src="Content/bba.jpg" alt="New York" style="width:400px;height:150px">
          <p><strong>BBA</strong></p>
         <p>Education</p>
            <a class="btn btn-primary" href="bcom">Details &raquo;</a>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="Content/fashion.jpg" alt="San Francisco" style="width:400px;height:150px">
          <p><strong>Fashion Design</strong></p>
          <p>Education</p>
            <a class="btn btn-primary" href="fashion">Details &raquo;</a>
        </div>
      </div>
    </div>
  </div>
               
                    
                    </center>
                </div>
                <div class="bhoechie-tab-content">
                    <center>
                    
                    </center>
                </div>
                <div class="bhoechie-tab-content">
                    <center>
                      <h1 class="glyphicon glyphicon-share" style="font-size:12em;color:#55518a"></h1>
                      
                    </center>
                </div>
            </div>
        </div>
  </div>
</div>

    <style>
     
  .person {
      border: 10px solid transparent;
      margin-bottom: 25px;
      width: 80%;
      height: 80%;
      opacity: 0.7;
  }
  .person:hover {
      border-color: #f1f1f1;
  }
  .carousel-inner img {
      -webkit-filter: grayscale(90%);
      filter: grayscale(90%); /* make all photos black and white */ 
      width: 100%; /* Set width to 100% */
      margin: auto;
  }
  .carousel-caption h3 {
      color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  .bg-1 {
      background: #2d2d30;
      color: #bdbdbd;
  }
  .bg-1 h3 {color: #fff;}
  .bg-1 p {font-style: italic;}
/*  bhoechie tab */
div.bhoechie-tab-container{
  z-index: 10;
  background-color: #ffffff;
  padding: 0 !important;
  border-radius: 4px;
  -moz-border-radius: 4px;
  border:1px solid #ddd;
  margin-top: 20px;
  margin-left: 50px;
  -webkit-box-shadow: 0 6px 12px rgba(0,0,0,.175);
  box-shadow: 0 6px 12px rgba(0,0,0,.175);
  -moz-box-shadow: 0 6px 12px rgba(0,0,0,.175);
  background-clip: padding-box;
  opacity: 0.97;
  filter: alpha(opacity=97);
}
div.bhoechie-tab-menu{
  padding-right: 0;
  padding-left: 0;
  padding-bottom: 0;
}
div.bhoechie-tab-menu div.list-group{
  margin-bottom: 0;
}
div.bhoechie-tab-menu div.list-group>a{
  margin-bottom: 0;
}
div.bhoechie-tab-menu div.list-group>a .glyphicon,
div.bhoechie-tab-menu div.list-group>a .fa {
  color: #5A55A3;
}
div.bhoechie-tab-menu div.list-group>a:first-child{
  border-top-right-radius: 0;
  -moz-border-top-right-radius: 0;
}
div.bhoechie-tab-menu div.list-group>a:last-child{
  border-bottom-right-radius: 0;
  -moz-border-bottom-right-radius: 0;
}
div.bhoechie-tab-menu div.list-group>a.active,
div.bhoechie-tab-menu div.list-group>a.active .glyphicon,
div.bhoechie-tab-menu div.list-group>a.active .fa{
  background-color: #5A55A3;
  background-image: #5A55A3;
  color: #ffffff;
}
div.bhoechie-tab-menu div.list-group>a.active:after{
  content: '';
  position: absolute;
  left: 100%;
  top: 50%;
  margin-top: -13px;
  border-left: 0;
  border-bottom: 13px solid transparent;
  border-top: 13px solid transparent;
  border-left: 10px solid #5A55A3;
}

div.bhoechie-tab-content{
  background-color: #ffffff;
  /* border: 1px solid #eeeeee; */
  padding-left: 20px;
  padding-top: 10px;
}

div.bhoechie-tab div.bhoechie-tab-content:not(.active){
  display: none;
}
    </style>
    <script>
        $(document).ready(function () {
            $("div.bhoechie-tab-menu>div.list-group>a").click(function (e) {
                e.preventDefault();
                $(this).siblings('a.active').removeClass("active");
                $(this).addClass("active");
                var index = $(this).index();
                $("div.bhoechie-tab>div.bhoechie-tab-content").removeClass("active");
                $("div.bhoechie-tab>div.bhoechie-tab-content").eq(index).addClass("active");
            });
        });
    </script>
</asp:Content>
