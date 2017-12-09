<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AdminPanel.aspx.vb" Inherits="StudentCounselling.AdminPanel" %>
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
                  <h4 class="glyphicon glyphicon-download-alt"></h4><br/>Inbox
                </a>
                <a href="#" class="list-group-item text-center">
                  <h4 class="glyphicon glyphicon-edit"></h4><br/>Answers
                </a>
                <a href="#" class="list-group-item text-center">
                  <h4 class="glyphicon glyphicon-time"></h4><br/>All Appointments
                </a>
                <a href="#" class="list-group-item text-center">
                  <h4 class="glyphicon glyphicon-star"></h4><br/>All Workshops
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
                     
         
                        <p>
                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="20" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="758px" CellSpacing="4" DataKeyNames="id">
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <Columns>
                                    <asp:CommandField ShowEditButton="True" />
                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                    <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
                                    <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                                    <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                                    <asp:BoundField DataField="query" HeaderText="query" SortExpression="query" />
                                    <asp:BoundField DataField="answer" HeaderText="answer" SortExpression="answer" />
                                    <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#000065" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:counsellingConnectionString %>" SelectCommand="
SELECT id,user_name, category,subject, query, answer, time FROM tbl_query WHERE (answer = @answer2)
" UpdateCommand="UPDATE tbl_query SET answer = @answer,updated_by=@updated_by WHERE (id = @id)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="Yet Not Answered !" Name="answer2" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="answer" />
                                    <asp:Parameter Name="updated_by" />
                                    <asp:Parameter Name="id" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </p>
                     
                    
                  
                    </center>
                </div>
    
                <!-- hotel search -->
                <div class="bhoechie-tab-content">
                    <center>
                      <h3 class="glyphicon glyphicon-check" style="font-size:12em;color:#55518a"></h3>
                        <h4>Answered Questions</h4>
                     <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="20" DataSourceID="SqlDataSource2" GridLines="Vertical" Width="751px" CellSpacing="1">
                         <AlternatingRowStyle BackColor="#DCDCDC" />
                         <Columns>
                             <asp:BoundField DataField="user_name" HeaderText="user_name" SortExpression="user_name" />
                             <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                             <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                             <asp:BoundField DataField="query" HeaderText="query" SortExpression="query" />
                             <asp:BoundField DataField="answer" HeaderText="answer" SortExpression="answer" />
                         </Columns>
                         <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                         <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                         <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                         <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                         <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                         <SortedAscendingCellStyle BackColor="#F1F1F1" />
                         <SortedAscendingHeaderStyle BackColor="#0000A9" />
                         <SortedDescendingCellStyle BackColor="#CAC9C9" />
                         <SortedDescendingHeaderStyle BackColor="#000065" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:counsellingConnectionString %>" SelectCommand="SELECT [user_name], [category],[subject], [query], [answer] FROM [tbl_query] WHERE ([updated_by] = @updated_by)">
                            <SelectParameters>
                                <asp:SessionParameter Name="updated_by" SessionField="id" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </center>
                </div>
                <div class="bhoechie-tab-content">
                    <center>
                      <h1 class="glyphicon glyphicon-time" style="font-size:12em;color:#55518a"></h1>
         <h4>All Appointments</h4>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="20" DataSourceID="SqlDataSource3" GridLines="Horizontal" Width="656px">
                            <AlternatingRowStyle BackColor="#F7F7F7" />
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                                <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
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
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:counsellingConnectionString %>" SelectCommand="SELECT [id], [date], [status], [user_id] FROM [appintment]"></asp:SqlDataSource>
                    </center>
                </div>
                <div class="bhoechie-tab-content">
                    <center>
                      <h1 class="glyphicon glyphicon-star-empty" style="font-size:12em;color:#55518a"></h1>
                      <h4>All Workshops</h4>
                        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="20" DataSourceID="SqlDataSource4" GridLines="Horizontal" Width="678px">
                            <AlternatingRowStyle BackColor="#F7F7F7" />
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
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
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:counsellingConnectionString %>" SelectCommand="SELECT [id], [name], [date] FROM [workshops]"></asp:SqlDataSource>
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
