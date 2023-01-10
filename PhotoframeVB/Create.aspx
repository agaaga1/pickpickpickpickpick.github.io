<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Create.aspx.vb" Inherits="PhotoframeVB.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="StyleSheet2.css" rel ="stylesheet"/>
    
       <script src="https://kit.fontawesome.com/81399d0262.js" crossorigin="anonymous"></script>
    <title></title>
</head>

<<body>
    <form id="Start_Createing" runat="server">
       <section id ="header">
      <a href="#"> MIXTILES </a>
      <div>
          <ul id="navbar">
              <li><a class="active" href ="login.aspx">Home</a></li>
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
          
          <a href ="Card.html"> 
                 <i class="fa-duotone fa-bag-shopping"></i>
             
                   </a>
      </div>
      </section>
       
        <section id="WhosFor">
             
            <a href="PickPhoto.aspx"><div>
                <img src="Stock/mirror.gif"/>
                 <ul>
                     <li><h4>Per Vete</h4></li>
                     <li> <p>Dua te kthej murin ne art</p></li>
                 </ul>
            </div></a>
             <div>
                 <img  src="Stock/giftbox.gif"/>
                 <ul>
                     <li><h4>Per dike tjeter</h4></li>
                     <li> <p>po i blej dikujt nje dhurate </p></li>
                 </ul>
               
            </div>
        </section>


      
    </form>
</body>
</html>
