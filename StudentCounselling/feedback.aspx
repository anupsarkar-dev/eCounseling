<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="feedback.aspx.vb" Inherits="StudentCounselling.feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   

        <link href="https://fonts.googleapis.com/css?family=Oleo+Script:400,700" rel="stylesheet">
   	<link href="https://fonts.googleapis.com/css?family=Teko:400,700" rel="stylesheet">
   	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  
<section id="contact" style="padding:120px">
			<div class="section-content">
				<h1 class="section-header">Give us <span class="content-header wow fadeIn " data-wow-delay="0.2s" data-wow-duration="2s"> aFeedback</span></h1>
				<h3>We will get back to you soon</h3>
			</div>
			<div class="contact-section">
			<div class="container">
				<form>
					<div class="col-md-6 form-line">
			  			<div class="form-group">
			  				<label for="exampleInputUsername">Your name</label>
					    	<input type="text" class="form-control" id="" placeholder=" Enter Name">
				  		</div>
				  		<div class="form-group">
					    	<label for="exampleInputEmail">Email Address</label>
					    	<input type="email" class="form-control" id="exampleInputEmail" placeholder=" Enter Email id">
					  	</div>	
					  	<div class="form-group">
					    	<label for="telephone">Mobile No.</label>
					    	<input type="tel" class="form-control" id="telephone" placeholder=" Enter 10-digit mobile no.">
			  			</div>
			  		</div>
			  		<div class="col-md-6">
			  			<div class="form-group">
			  				<label for ="description"> Message</label>
			  			 	<textarea  class="form-control" id="description" placeholder="Enter Your Message"></textarea>
			  			</div>
			  			<div>

			  				<button type="button" class="btn btn-default submit"><i class="fa fa-paper-plane" aria-hidden="true"></i>  Send Message</button>
			  			</div>
			  			
					</div>
				</form>
			</div>
		</section>


    <style>
        /*Contact sectiom*/
.content-header{
  font-family: 'Oleo Script', cursive;
  color:#fcc500;
  font-size: 45px;
}

.section-content{
  text-align: center; 

}
#contact{
    
    font-family: 'Teko', sans-serif;
  padding-top: 60px;
  width: 100%;
  width: 100vw;
  height: 550px;
  background: #3a6186; /* fallback for old browsers */
  background: -webkit-linear-gradient(to left, #3a6186 , #89253e); /* Chrome 10-25, Safari 5.1-6 */
  background: linear-gradient(to left, #3a6186 , #89253e); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    color : #fff;    
}
.contact-section{
  padding-top: 40px;
}
.contact-section .col-md-6{
  width: 50%;
}

.form-line{
  border-right: 1px solid #B29999;
}

.form-group{
  margin-top: 10px;
}
label{
  font-size: 1.3em;
  line-height: 1em;
  font-weight: normal;
}
.form-control{
  font-size: 1.3em;
  color: #080808;
}
textarea.form-control {
    height: 135px;
   /* margin-top: px;*/
}

.submit{
  font-size: 1.1em;
  float: right;
  width: 150px;
  background-color: transparent;
  color: #fff;

}

    </style>
</asp:Content>
