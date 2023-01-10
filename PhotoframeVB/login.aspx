<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="PhotoframeVB.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>login</title>
  
    <link href="StyleSheet1.css" rel ="stylesheet"/>
       <script src="https://kit.fontawesome.com/81399d0262.js" crossorigin="anonymous"></script>
    
</head>
<body>
    <form id="form1" runat="server">
      
       
      
  <section id ="header">
      <a href   ="#"> MIXTILES </a>
      <div>
          <ul id="navbar">
              <li><a class="active"  runat="server" onclick="ClickedClient"  href ="login.aspx">Home</a></li>
               <li><a href ="shop.html">Shop</a></li>
               <li><a href ="">Blog</a></li>
               <li><a href ="">About</a></li>
               <li><a href ="">Contact</a></li> 
               <li>
                   <a href ="Card.html"> 
                 <i class="fa-duotone fa-bag-shopping"></i>
                   </a>
               </li> 


          </ul>
      </div>
      <div id="mobile">
           <asp:Button ID="Button1" runat="server"   class="fas fa-duotone" OnClick="ClickedClient"/>
          <a href ="Card.html"> 
                 <i class="fa-duotone fa-bag-shopping"></i>
             
                   </a>
      </div>
      </section>

  <section id="hero">
      
     <a></a>
      <%-- <a id ="image"> <img  src="Stock/[Downloader.gif"/> </a>--%>
      <div id="text">
            <h2>Turn your photos</h2>
            <h2>into stunning</h2>
            <h2>wall art</h2>
            <h6>Design beautiful walls filled with </h6>
            <h6 class="BottH6Quot">memories using your favorite photos</h6>
          <%--<asp:Button ID="ButtonStart" runat="server" Text="Start Creating" OnClick="ClickedClient" />--%>
         <a href="Create.aspx"><i class="button">Start Creating</i> </a>
          
          <%--<asp:button ID="button" runat="server" CssClass="button" OnClick="ClickedClient" Text="Start Creating" href="Create.aspx"/>--%>
           <p>Free Shipping </p>
      </div>
      
        
      
     

        </section>
        <section id ="feature" >
            <div>
                <div class="box">
                    <img src="Stock/No_Nails_01.gif" />
                <p>No nails needed</p>
                <p>Our frames stick to any wall</p>
                </div>
                
            
                 <div class="box">
                    <img src="Stock/2942807.gif" />
                <p>Free worldwide shipping!</p>
                <p>At your doorstep in a week</p>
                </div>
                
            
                 <div class="box">
                     <img src="Stock/happy-icon-11549849566nqyqfqsufo.gif" />
                <p>Satisfaction guaranteed</p>
                <p>Not satisfied? Get a full refund</p>
                </div>
                
            </div>
        </section>
        <section id="quote">
            <div class ="portrait">
                 <ul>
                <li><h2>The magic frame that </h2></li>
                     <li><h2>sticks to any surface</h2></li>
                <li><h4>Get your photos in stylish frames that stick directly to </h4></li>
                     <li><h4>your wall and leave no damage behind!</h4></li>
            </ul>

            
           

    <img  src="Stock/video.jpg"/>
</div>
           
        </section>
     

    </form>
</body>
</html>
