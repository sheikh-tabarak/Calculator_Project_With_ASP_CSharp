<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator_083.aspx.cs" Inherits="Calculator_Project.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculator | 19011598-083 </title>

      <style>

#maindiv{
background-color: black;
color: white;
margin-left: 34%!important;
margin-right: 34%!important;
padding: 20px;
padding-top: 10px;
border-radius: 20px;
text-align: center;
}
@media only screen and (max-width: 768px) {
  /* For mobile phones: */
 #maindiv {
      margin: 5%!important; 
          }
}


.input-field{
    background-color: rgb(48, 48, 48);
    border-width: 0px;
    width: 95%;
    height: 90px;
    border-radius: 20px;
    color: white;
    font: 500;
    font-size: 26px;
    text-align: right;
    padding:10px;
}

.number-button{
    background-color: rgb(48, 48, 48);
    padding: 10px;
    color:white;
    height: 50px;
    width: 60px;
    border-radius: 30px;
   font-size: 20px;
   font-weight: 500;
   margin: 5px;
}

.number-button:hover{
    background-color: rgb(72, 72, 72);
}


.operator-button{
    background-color: rgb(44, 45, 63);
    padding: 10px;
    color:rgb(118, 145, 207);
    height: 50px;
    width: 60px;
    border-radius: 30px;
   font-size: 20px;
   font-weight: 500;
   margin: 5px;
}

.color-button{
background-color: red;
    padding: 5px;
    color:rgb(255, 255, 255);
    height: 50px;
    width: 78px;
    border-radius: 30px;
   font-size: 14px;
   font-weight:500;
   margin: 5px;
}

#color-red{
background-color: red;
}

#color-green{
background-color: green;
}

#color-blue{
background-color: blue;
}

.done-button{
    background-color: rgb(118, 145, 207);
    padding: 5px;
    color:black;
    height: 50px;
    width: 78px;
    border-radius: 30px;
   font-size: 12px;
   font-weight: 500;
   margin: 5px;
}

.clear-button{
    background-color: rgb(118, 145, 207);
    padding: 10px;
    color:rgb(0, 0, 0);
    height: 50px;
    width: 60px;
    border-radius: 30px;
   font-size: 20px;
   font-weight: 500;
   margin: 5px;
}

.color-radio{
    color: white;
}

.heading{
    background-color: white;
    color: black;
    font-size: 30px;
    padding: 5px;
    text-align:center;
    border-radius: 15px;
    width:100%;

}

.error-message{
    color: red;
    text-align: center;
    font-size: 12px;
}

          .auto-style1 {
              width: 100%;
          }

          .auto-style2 {
              width: 891px;
          }

          #blackcolor{
              border-radius:20px;
              width:100px!important;
              border:solid 1px white;
          }

          .auto-style3 {
              background-color: rgb(48, 48, 48);
              border-width: 0px;
              border-radius: 20px;
              color: white;
              font-size: 26px;
              text-align: right;
              padding: 10px;
          }

    </style>


</head>
<body>
    <form id="form1" runat="server">
 
  
       
          <asp:Panel ID="maindiv" runat="server" CssClass="maindiv">
        <div id="mainiv" class="Main">
        
        <table class="auto-style1" >
            <tr>
                <td>
                    <div class="heading">

                    <asp:Label CssClass="heading" ID="Label1" runat="server" Text="Calculator"></asp:Label>
               </div>
                    </td>
            </tr>
        </table>
 
     

        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label CssClass="error-message" ID="errormessage" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    
                    <asp:Button ID="blackcolor" runat="server" BackColor="Black" ForeColor="White" Height="33px" OnClick="black_Click" Text="Black Theme" Width="100%" />
                    
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    &nbsp;</td>

            </tr>
        </table>

            <table class="auto-style1">
            <tr>
                <td>
                    <asp:TextBox  CssClass="input-field auto-style3" ID="TextBox1" runat="server" Height="16px" Enabled="False">0</asp:TextBox>
                </td>
            </tr>
        </table>
 
     

        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Button OnClick="color_red_Click" CssClass="color-button" ID="red" runat="server" Text="Red"  />
                </td>
                <td><asp:Button CssClass="color-button" ID="green" runat="server" Text="Green" BackColor="Green" OnClick="green_Click" /></td>
                <td><asp:Button CssClass="color-button" ID="blue" runat="server" Text="Blue" BackColor="Blue" OnClick="blue_Click" /></td>
                <td><asp:Button CssClass="done-button" ID="Calculate" runat="server" Text="Calculate" OnClick="Calculate_Click" /></td>

            </tr>
        </table>
 
            
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Button CssClass="number-button" ID="N7" runat="server" Text="7" OnClick="N7_Click" />
                </td>
                <td><asp:Button CssClass="number-button" ID="N8" runat="server" Text="8" OnClick="N8_Click" /></td>
                <td><asp:Button CssClass="number-button" ID="N9" runat="server" Text="9" OnClick="N9_Click" /></td>
                <td><asp:Button CssClass="operator-button" ID="Oplus" runat="server" Text="+" OnClick="Oplus_Click" /></td>
                <td><asp:Button CssClass="operator-button" ID="Oback" runat="server" Text="&#8592;" OnClick="Oback_Click" /></td>
            </tr>
            <tr>
                <td><asp:Button CssClass="number-button" ID="N4" runat="server" Text="4" OnClick="N4_Click" /></td>
                <td><asp:Button CssClass="number-button" ID="N5" runat="server" Text="5" OnClick="N5_Click" /></td>
               <td><asp:Button CssClass="number-button" ID="N6" runat="server" Text="6" OnClick="N6_Click" /></td>
                <td><asp:Button CssClass="operator-button" ID="Ominus" runat="server" Text="-" OnClick="Ominus_Click" /></td>
                 <td><asp:Button CssClass="operator-button" ID="Oup" runat="server" Text="&#8593;" OnClick="Oup_Click" Enabled="False" /></td>
            </tr>
            <tr>
              <td><asp:Button CssClass="number-button" ID="N1" runat="server" Text="1" OnClick="N1_Click" /></td>
              <td><asp:Button CssClass="number-button" ID="N2" runat="server" Text="2" OnClick="N2_Click" /></td>
              <td><asp:Button CssClass="number-button" ID="N3" runat="server" Text="3" OnClick="N3_Click" /></td>
             <td><asp:Button CssClass="operator-button" ID="Omultiply" runat="server" Text="*" OnClick="Omultiply_Click" /></td>
              <td><asp:Button CssClass="operator-button" ID="Odown" runat="server" Text="&#8595;" OnClick="Odown_Click" Enabled="False" /></td>            

            </tr>
            <tr>
                <td><asp:Button CssClass="operator-button" ID="Ndot" runat="server" Text="." OnClick="Ndot_Click" /></td> 
                <td><asp:Button CssClass="number-button" ID="N0" runat="server" Text="0" OnClick="N0_Click" /></td> 
                <td><asp:Button CssClass="operator-button" ID="Oremainder" runat="server" Text="%" OnClick="Oremainder_Click" /></td> 
                <td><asp:Button CssClass="operator-button" ID="Odivide" runat="server" Text="/" OnClick="Odivide_Click1" /></td> 
               <td><asp:Button CssClass="clear-button" ID="Oclear" runat="server" Text="C" OnClick="Oclear_Click" /></td> 
            </tr>
        </table>

     </div>


        
        </asp:Panel>


    </form>
</body>
</html>
