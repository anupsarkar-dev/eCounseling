<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="workshops.aspx.vb" Inherits="StudentCounselling.workshops" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" style="text-align:center;margin:0 auto;background-image:url('Content/bg2.jpg')"  >
           <a href="#" class="list-group-item text-center"  
">   </a>
                  <span class="glyphicon glyphicon-user" style="
    font-size: -webkit-xxx-large; color:white"></span><br/><h3 style="color:white">Upcoming Workshops</h3>
        
        
        <div style="
   
    margin-left: 18%;

">


                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="25" CellSpacing="4" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="888px">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                      
                        <asp:CommandField ShowSelectButton="True" />
                      
                        <asp:BoundField DataField="id" HeaderText="No" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="name" HeaderText="Workshop Name" SortExpression="name" />
                        <asp:BoundField DataField="date" HeaderText="Start Date" SortExpression="date" />
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
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:counsellingConnectionString %>" SelectCommand="SELECT [id], [name], [date] FROM [workshops]" UpdateCommand="update workshops set user_id=@id , code='A' + convert(varchar(30),1) where id=@id">
               <UpdateParameters>
                   <asp:Parameter Name="id" />
               </UpdateParameters>
           </asp:SqlDataSource>
              
           <br />
           <br />
                         </div>

                <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="DropDownList1" CssClass="col-md-2 control-label"><h3 style="color:white" >Choose a Workshop </h3></asp:Label>
            <div class="col-md-10">
               
                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:counsellingConnectionString %>" SelectCommand="SELECT [id], [name] FROM [workshops]"></asp:SqlDataSource>
          <div style="
    width: 50%;
    margin-left: 270px;
    margin-top:40px;
">

          
                 <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="id" >
           </asp:DropDownList>
          </div>     <asp:RequiredFieldValidator runat="server" ControlToValidate="DropDownList1"
                    CssClass="text-danger" ErrorMessage="Please Select a workshop" />
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server"  Text="Subscribe Workshop" CssClass="btn btn-primary" style=" width:50%;margin-bottom: 50px;" OnClick="submitSubscribe"/>
            </div>
        </div>

    </div>

     <p class="text-danger">
        <asp:Label ID="err" runat="server" ></asp:Label>
    </p>

</a>

     <div class="intro-header"> 
<div class="container2"  align="center">

<div class="tab-content custom-tab-content" align="center">
<div class="subscribe-panel">
<h1>Newsletter!!!</h1>
<p>Subscribe to our weekly Newsletter and stay tuned.</p>
                
             
                    	
							<div class="col-md-4"></div>
							<div class="col-md-4">
								<div class="input-group">
									<span class="input-group-addon"><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i></span>
									
                                     <asp:TextBox runat="server" placeholder="Your Email" ID="email" CssClass="form-control input-lg"   />
           
								</div>
							</div>
							<div class="col-md-4"></div>
                    <br/><br/><br/>

                     <asp:Button runat="server"  Text="Subscribe Now!" CssClass="btn btn-warning btn-lg"  OnClick="submitEmail"/>
                   <br />
        

     <asp:RequiredFieldValidator runat="server" ControlToValidate="email"
                    CssClass="text-danger" ErrorMessage="Please put your Email" />

    <br />
     <p class="text-danger">
        <asp:Label ID="Label1" runat="server" ></asp:Label>
    </p>


</div>
</div>
</div>
</div>
    <style>
        .intro-header {
	color: #f8f8f8;
	text-align: center;
}

.container2{
margin-top:150px;
background-color:#00bfff;
width:100%;

height:220px;
}
.custom-tab-content{
color:#fff;
font-family: 'Open Sans', sans-serif;
}

    </style>

</asp:Content>
