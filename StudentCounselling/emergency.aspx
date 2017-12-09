<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="emergency.aspx.vb" Inherits="StudentCounselling.emergency" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">





    <div class="container" style="
    margin-top: 100px;
    margin-bottom: 100px;
">
    <div class="well well-sm quick-contact">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-4">
                        <h1 class="title-contact">
                        Emergency Quick Contact</h1>
                    </div>
                    <div class="col-md-4 contact-email">
                        <h2>
                            info@studentcounselling.com</h2>
                        <h3>
                            +91 8146251170  , +91 9888691624</h3>
                    </div>
                    <div class="col-md-4">
                        <div class="row contact row-first">
                            <div class="col-md-6">
                                <a href="http://www.skype.com" class="skype"><i class="fa fa-skype"></i>skypeuser</a>
                            </div>
                            <div class="col-md-6">
                                <a href="http://www.account.google.com" class="google"><i class="fa fa-google-plus"></i>googleplus</a>
                            </div>
                        </div>
                        <div class="row contact">
                            <div class="col-md-6">
                                <a href="http://www.linkedin.com" class="linkedin"><i class="fa fa-linkedin"></i>linkedin_id</a>
                            </div>
                            <div class="col-md-6">
                                <a href="http://www.twitter.com" class="twitter"><i class="fa fa-twitter"></i>twitter_id</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    <script>
        $(document).ready(function () {
            $(".title-contact, .contact-email").fadeIn("slow");
        });
    </script>
<style>
    @import url(http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css);
body{margin-top:20px}
.fa{font-size:24px;margin-right:5px}
.row-first{margin-bottom:10px;margin-top:8px}
.title-contact{margin-top:32px;display:none;}
.contact-email { display:none; }
a{transition:all .3s ease;-webkit-transition:all .3s ease;-moz-transition:all .3s ease;-o-transition:all .3s ease}
.quick-contact{color:#fff;background-color:#000;background-image:url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACMAAAAiCAMAAADiW5DOAAAAaVBMVEUjIyMlJSUhISEaGhoZGRkcHBwREREHBwcMDAwODg4PDw8NDQ0LCwsICAgQEBAYGBgbGxsiIiIkJCQUFBQKCgoVFRUJCQkSEhITExMdHR0XFxcFBQUGBgYfHx8WFhYeHh4gICAEBAQmJiYtaDO6AAAC4UlEQVR42iVTi5arIAykl4cSMNAFeah1t/v/H3knXT3VyoQkMxmUUo8Hfv+0NtYtq6cQvI8bW53y8wsIbmAmy2VyCXElZscUatiNBpRtTlklqw0+EtL45r3rozjmtbK22Rid9TRqpozwiW/L1XMvY++uh3XIPiuZkkpG4lEPyTggS9nHcIFzxkpG9iOrel7Xspyr0eZ1e8TsexmO9m9j73pd57ks6ty2pbWz7drM3LkPhHRXtDV5LEuttZ2qtjVGkI1aJ3tIot7Z6W+T7/WKYFpXFSl48iFUhw5sD647Tzd4T2rN0wpMeSLX2YdaE6o9H0/R9CcbXVao5bhzUEIXilCsA0H5OyfQsVpbXwMxSg9SHiEDbH0teuojHeBrRPu+hi5SlK7wkst5D7WgmDnw0BAYarkBcOzKiWr7IJ+m1iK3aIdHmrdngfqtPrKhofHK4N7O7Trf55om5O88gPWhGFMcnbpshjm2Zavt2gYSvg5gaIcV0+hMvNusU2qtxRWaLsEk1NwJPiCnfpTY7OuF6em+Re+hFdUmiezr+fhV6qmmMSJIBqej1uAgqOPQ1iOLecSBVh1iwTtlaxNfyD1AmMg3B9QksdBEnoQNaMYmt0F6kYSYas9a1oHCq3hrKY6b2JVyQzYXKItQny4OeGy5zuusyaAauYGYUZiOqS3M8T6X81TbVdvW3sttjf52kqigoTExMwePAVxUrTFAkdrEY5k9PFZ8twafcQNRQCquwcNisXbpHFUcdRoZffSt+uA5eBXQqGNC0GHM/Pd4/H6p58/U6Y4tABnEij7zcrRuu3gLXBE6UYoatpcOTIkNZXCh7UeC/TA3vGAijqiwg0FXPIr8Ye+1zYhIH+n+TiTjIB2j/MXAq5TQg0nSuKig0zxIPHZ/YvZdTi9PUTq+r+u9vSN013NQH/dAreBQsXPPsszL1XAt8NjHKzR2VFAlgHt3xWI2d9wgGY5m88eE/QcLefcf4Go/mGyl89EAAAAASUVORK5CYII=');text-align:center}
.contact a{-webkit-border-radius:2px;-moz-border-radius:2px;-o-border-radius:2px;border-radius:2px;display:block;background-color:rgba(255,255,255,0.25);font-size:20px;text-align:center;color:#fff;padding:7px}
.contact a:hover{background-color:rgba(255,255,255,0.85);text-decoration:none}
.contact a.skype:hover,.fa-skype{color:#00aff0}
.contact a.google:hover,.fa-google-plus{color:#dd4b39}
.contact a.linkedin:hover,.fa-linkedin{color:#0e76a8}
.contact a.twitter:hover,.fa-twitter{color:#00acee}
</style>

</asp:Content>
