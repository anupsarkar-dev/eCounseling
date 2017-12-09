<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="appointment.aspx.vb" Inherits="StudentCounselling.appointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



     <div style="background-image:url('Content/bg2.jpg');height:100%">
    
    
          
    
    
          <br />
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <p class="text-danger">
        <asp:Label ID="err" runat="server" ></asp:Label>
    </p>

    <div class="form-horizontal" id="frm">
        <h2 style="text-align:center">Make An Appointment</h2>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />

         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Calendar" CssClass="col-md-2 control-label">Choose A Date:</asp:Label>
             
            <div class="col-md-10">
                <asp:Calendar ID="Calendar" runat="server" BackColor="White" BorderColor="Black" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" SelectedDate="2017-04-25" Width="320px" BorderStyle="Solid" CellSpacing="1">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                    <DayStyle BackColor="#CCCCCC" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="#333399" Font-Bold="True" Font-Size="12pt" ForeColor="White" BorderStyle="Solid" Height="12pt" />
                    <TodayDayStyle BackColor="#999999" ForeColor="White" />
                </asp:Calendar>

            </div>
        </div>
       
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateAppointment_Click" Text="Submit" CssClass="btn btn-primary" style=" margin-bottom: 50px;" Width="316px" />
            </div>
        </div>
    </div>
    <style>
          #frm
        {
            background: rgba(18,18,18,1);
background: -moz-linear-gradient(left, rgba(18,18,18,1) 0%, rgba(20,20,20,1) 12%, rgba(23,23,23,1) 25%, rgba(15,15,15,1) 39%, rgba(10,10,10,1) 50%, rgba(0,0,0,1) 51%, rgba(5,5,5,1) 60%, rgba(10,10,10,1) 76%, rgba(5,5,5,1) 91%, rgba(5,5,5,1) 100%);
background: -webkit-gradient(left top, right top, color-stop(0%, rgba(18,18,18,1)), color-stop(12%, rgba(20,20,20,1)), color-stop(25%, rgba(23,23,23,1)), color-stop(39%, rgba(15,15,15,1)), color-stop(50%, rgba(10,10,10,1)), color-stop(51%, rgba(0,0,0,1)), color-stop(60%, rgba(5,5,5,1)), color-stop(76%, rgba(10,10,10,1)), color-stop(91%, rgba(5,5,5,1)), color-stop(100%, rgba(5,5,5,1)));
background: -webkit-linear-gradient(left, rgba(18,18,18,1) 0%, rgba(20,20,20,1) 12%, rgba(23,23,23,1) 25%, rgba(15,15,15,1) 39%, rgba(10,10,10,1) 50%, rgba(0,0,0,1) 51%, rgba(5,5,5,1) 60%, rgba(10,10,10,1) 76%, rgba(5,5,5,1) 91%, rgba(5,5,5,1) 100%);
background: -o-linear-gradient(left, rgba(18,18,18,1) 0%, rgba(20,20,20,1) 12%, rgba(23,23,23,1) 25%, rgba(15,15,15,1) 39%, rgba(10,10,10,1) 50%, rgba(0,0,0,1) 51%, rgba(5,5,5,1) 60%, rgba(10,10,10,1) 76%, rgba(5,5,5,1) 91%, rgba(5,5,5,1) 100%);
background: -ms-linear-gradient(left, rgba(18,18,18,1) 0%, rgba(20,20,20,1) 12%, rgba(23,23,23,1) 25%, rgba(15,15,15,1) 39%, rgba(10,10,10,1) 50%, rgba(0,0,0,1) 51%, rgba(5,5,5,1) 60%, rgba(10,10,10,1) 76%, rgba(5,5,5,1) 91%, rgba(5,5,5,1) 100%);
background: linear-gradient(to right, rgba(18,18,18,1) 0%, rgba(20,20,20,1) 12%, rgba(23,23,23,1) 25%, rgba(15,15,15,1) 39%, rgba(10,10,10,1) 50%, rgba(0,0,0,1) 51%, rgba(5,5,5,1) 60%, rgba(10,10,10,1) 76%, rgba(5,5,5,1) 91%, rgba(5,5,5,1) 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#121212', endColorstr='#050505', GradientType=1 );
left: 25%;
    width: 50%;

    -webkit-box-shadow: 0px 3px 5px 3px rgba(19,24,112,1);
-moz-box-shadow: 0px 3px 5px 3px rgba(19,24,112,1);
box-shadow: 0px 3px 5px 3px rgba(19,24,112,1);

color:white;


    margin-top: 50px;
    left: 25%;
    margin-left: 300px;


 }
    </style>
      </div>

</asp:Content>
