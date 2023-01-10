<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PickPhoto.aspx.vb" Inherits="PhotoframeVB.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
	<link rel="stylesheet" href="StyleSheet3.css">
	<title>Input Image With Preview Image</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
   
</head>
<body>
     <div class="Footer">
        <div class="Edit-Buttons">
           <button class="frame-button" id="frame-Button" onclick="frameClick()"> <span class="material-symbols-outlined">
                frame_person
            </span>   Frame </button>
            <button class="filter-button" onclick="filterClick"><span class="material-symbols-outlined">
                filter_vintage
            </span>Filter </button>
            <button class="mat-button"><span class="material-symbols-outlined">
                 aspect_ratio
            </span>   Mat</Button>
        </div>
       
            
          <%--  <asp:Button ID="Button1" CssClass="checkout-button" runat="server" Text="Checkout"  />--%>
      
        
        <button class="checkout-button" id="show-login1" >  Checkout</button>
    </div>
    
  

<div class="popup">
  <div class="close-btn">&times;</div>
  <div class="form">
    <h2>Checkout</h2>
    <div class="form-element">
      <label for="email">Email</label>
      <input type="text" id="email" placeholder="Enter email">
    </div>
      <div class="form-element">
      <label >Emri i plote</label>
      <input type="text" id="FullName" placeholder="Emer Mbiemer">
    </div>
    <div class="form-element">
      <label>Nr Kontakti</label>
      <input type="text" id="contactNr" placeholder="+355 xx xxx xxxx">
    </div>
       <div class="form-element">
      <label>Adresa e sakte</label>
      <input type="text" id="address" placeholder="Adresa e sakte">
    </div>
    
    <div class="form-element">
      <button>Porosit Tani</button>
    </div>
    
  </div>
</div>
       
 
    
    <button class="select-image">Select Image</button>
    <form runat="server">
    <input type="file" id="multiple_files" runat="server"  name="files[]" multiple hidden/>
   
           </form>
	<div class="filter-Menu" id="filter-Menu">
        <div class="color-Frame-Cont"  onclick="ChangeFrame">
            <img class="color-frame" src="Stock/Poster_Mockup_2.gif" />
            <a>White</a>

        </div>
       <div class="color-Frame-Cont"  onclick="ChangeFrame">
            <img class="color-frame" src="Stock/Poster_Mockup_22.gif" />
            <a>Black</a>

        </div>
	</div>
	<script src="scriptUpload.js"></script>
       
</body>
</html>
