<%@ Page Title="user panel" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userPanel.aspx.vb" Inherits="StudentCounselling.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   


    
   


    <br />

<div class="container" style="overflow:scroll">
	<div class="row">
        <div class="col-lg-11 col-md-11 col-sm-11 col-xs-11 bhoechie-tab-container" style="height:1000px">
            <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 bhoechie-tab-menu">
              <div class="list-group">
                <a href="#" class="list-group-item active text-center">
                  <h4 class="glyphicon glyphicon-user"></h4><br/>Profile
                </a>
                <a href="#" class="list-group-item text-center">
                  <h4 class="glyphicon glyphicon-download-alt"></h4><br/>Sent Questios
                </a>
                <a href="#" class="list-group-item text-center">
                  <h4 class="glyphicon glyphicon-edit"></h4><br/>Answered Question
                </a>
                <a href="#" class="list-group-item text-center">
                  <h4 class="glyphicon glyphicon-tag"></h4><br/>Q/A
                </a>
                <a href="#" class="list-group-item text-center">
                  <h4 class="glyphicon glyphicon-share"></h4><br/>Appointments
                </a>

                   <a href="#" class="list-group-item text-center">
                  <h4 class="glyphicon glyphicon-star-empty"></h4><br/>Workshops
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
                     
                    
                   <h3 class="glyphicon glyphicon-download-alt" style="font-size:12em;color:#55518a"></h3>
                        <h4>Inbox Items</h4>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateEditButton="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="16" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Vertical" Width="351px" CellSpacing="2" Height="354px" Font-Size="Large">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
                                <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                                <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                                <asp:BoundField DataField="answer" HeaderText="answer" SortExpression="answer" />
                                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                                <asp:BoundField DataField="updated_by" HeaderText="updated_by" SortExpression="updated_by" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="Gray" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:counsellingConnectionString %>" SelectCommand="SELECT [user_name], [subject], [category], [answer], [time], [updated_by] FROM [tbl_query] WHERE ([user_id] = @user_id)">
                            <SelectParameters>
                                <asp:SessionParameter Name="user_id" SessionField="id" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:counsellingConnectionString %>" 
                            SelectCommand="SELECT id,user_name, category, query, answer, time FROM tbl_query WHERE (answer = @answer2)"
                             UpdateCommand="UPDATE tbl_query SET answer = @answer,updated_by=@updated_by WHERE (id = @id)">
                            <SelectParameters>
                                <asp:QueryStringParameter DefaultValue="Yet Not Answered !" Name="answer2" QueryStringField="temp" />
                            </SelectParameters>

                            <UpdateParameters>
                               
                                <asp:Parameter Name="answer" Type="String" />

                                <asp:SessionParameter Name="updated_by" SessionField="id" Type="Int32" />

                                <asp:Parameter Name="id" type="Int32"/>
                            </UpdateParameters>


                        </asp:SqlDataSource>
                     
                    
                  
                    </center>
                </div>
    
                <!-- hotel search -->
                <div class="bhoechie-tab-content">
                    <center>
                      <h3 class="glyphicon glyphicon-check" style="font-size:12em;color:#55518a"></h3>
                        <h4>Answered Questions</h4>
                     <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="16" DataSourceID="SqlDataSource4" GridLines="Horizontal" Width="696px" CellSpacing="4">
                         <AlternatingRowStyle BackColor="#F7F7F7" />
                         <Columns>
                             <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                             <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                             <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                             <asp:BoundField DataField="query" HeaderText="query" SortExpression="query" />
                             <asp:BoundField DataField="answer" HeaderText="answer" SortExpression="answer" />
                             <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                         </Columns>
                         <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                         <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                         <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                         <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                         <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                         <SortedAscendingCellStyle BackColor="#F4F4FD" />
                         <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                         <SortedDescendingCellStyle BackColor="#D8D8F0" />
                         <SortedDescendingHeaderStyle BackColor="#3E3277" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:counsellingConnectionString %>" SelectCommand="SELECT [id], [category],[subject], [query], [answer], [time] FROM [tbl_query] WHERE ([user_id] = @user_id)">
                            <SelectParameters>
                                <asp:SessionParameter Name="user_id" SessionField="id" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:counsellingConnectionString %>" SelectCommand="SELECT [user_name], [category], [query], [answer] FROM [tbl_query] WHERE ([updated_by] = @updated_by)">
                            <SelectParameters>
                                <asp:SessionParameter Name="updated_by" SessionField="id" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </center>
                </div>
                <div class="bhoechie-tab-content">
                    <center>
                      <h1 class="glyphicon glyphicon-tag" style="font-size:12em;color:#55518a"></h1>

                        <h3> <a runat="server" href="~/query" ></span> Submit Your Problem/Query/Question to the Expert for Assistance </a>
</h3>
         
                    </center>
                </div>
                <div class="bhoechie-tab-content">
                    <center>
                      <h1 class="glyphicon glyphicon-share" style="font-size:12em;color:#55518a"></h1>
                          <h4>Your Appointments</h4>
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="8" DataSourceID="SqlDataSource5" GridLines="Horizontal" Width="678px" AllowSorting="True" CellSpacing="8" Font-Italic="True" Font-Names="Malgun Gothic" Font-Size="Large" Height="590px" HorizontalAlign="Center">
                            <AlternatingRowStyle BackColor="#F7F7F7" />
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="date" HeaderText="Appointment Date" SortExpression="date" />
                                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                            </Columns>
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <SortedAscendingCellStyle BackColor="#F4F4FD" />
                            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                            <SortedDescendingCellStyle BackColor="#D8D8F0" />
                            <SortedDescendingHeaderStyle BackColor="#3E3277" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:counsellingConnectionString %>" SelectCommand="SELECT [date], [status] FROM [appintment] WHERE ([user_id] = @user_id)">
                            <SelectParameters>
                                <asp:SessionParameter Name="user_id" SessionField="id" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                      
                    </center>
                </div>

                <div class="bhoechie-tab-content">
                    <center>
                      <h1 class="glyphicon glyphicon-star-empty" style="font-size:12em;color:#55518a"> </h1>
                         <h4>Your Assaigned Workshops</h4>
                       <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="24" CellSpacing="4" DataSourceID="SqlDataSource6" GridLines="Horizontal" Width="684px">
                           <AlternatingRowStyle BackColor="#F7F7F7" />
                           <Columns>
                               <asp:BoundField DataField="name" HeaderText="Workshop Name" SortExpression="name" />
                               <asp:BoundField DataField="date" HeaderText="Workshop Date" SortExpression="date" />
                               <asp:BoundField DataField="code" HeaderText="Workshop Code" SortExpression="code" />
                           </Columns>
                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                           <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                           <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                           <SortedAscendingCellStyle BackColor="#F4F4FD" />
                           <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                           <SortedDescendingCellStyle BackColor="#D8D8F0" />
                           <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
         
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:counsellingConnectionString %>" SelectCommand="SELECT workshops.name, workshops.date, assigned_Workshop.code FROM workshops INNER JOIN assigned_Workshop ON workshops.id = assigned_Workshop.workshop_id WHERE (workshops.user_id = @id)">
                            <SelectParameters>
                                <asp:SessionParameter Name="id" SessionField="id" />
                            </SelectParameters>
                        </asp:SqlDataSource>
         
                    </center>
                </div>
            </div>
        </div>
  </div>
</div>

    <style>
        
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
