<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Practice1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

    <link href="asserts/css/bootstrap.min.css" rel="stylesheet" />
    
      <link href="asserts/css/font-awesome.min.css" rel="stylesheet" />
    <script src="asserts/js/jquery.min.js"></script>
   <style >
   
       #rstyle {
           border: 1px solid;
    /*padding: 5px;*/
    box-shadow: 5px 10px 8px 10px #888888;
    background-color: #eae5e5;
     /* line-height:2.0;*/
       font-size:14px;
       line-height:1.5;
       border-radius:20px;
       }
       .txtstyle {
     background-color: transparent;
    /*border: 0px solid white;*/
    border: none;
    height: 30px;
    width:50%;
    color: black;
    border-bottom:solid 1px black;
    outline:none;
}
       .button {
       background-color: #FD4444;
    border-radius: 20px;
    width: 96px;
    border-color: #FD4444;
       }
   .borderbottom
{
	color: blue;
	background-color: Transparent;
	/*height: 25px;*/
	width: 150px;
	padding: 10px;
	border: solid 0px #d35400;
	/*border-bottom: solid 2px black;*/
	font-size: 14px;
	font-weight: lighter;
	
}
        body {
             height: 500px;
  background-color:#064572
}
       .main {
       padding-left:10px;
       }

       .p {
        font:small;
        font-family:Calibri;
        color:#063353;
        text-align:justify;
       }

    </style>

     <script type="text/javascript">
         function ConfirmSave() {
             var confirm_value = document.querySelector('[name="confirm_value"]');
             if (!confirm_value) {
                 confirm_value = document.createElement("INPUT");
                 confirm_value.type = "hidden";
                 confirm_value.name = "confirm_value";
                 document.forms[0].appendChild(confirm_value);
             }
             if (confirm("Do you want to save the Supplier")) {
                 confirm_value.value = "Yes";
             } else {
                 confirm_value.value = "No";
             }
         }


      </script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<link href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css"
    rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
<link href="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css" />
<script src="http://cdn.rawgit.com/davidstutz/bootstrap-multiselect/master/dist/js/bootstrap-multiselect.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        $('[id*=lstFruits]').multiselect({
            includeSelectAllOption: true
        });
    });
</script>
       <script type="text/javascript">
       function validateNumbersOnly(e) {
           var unicode = e.charCode ? e.charCode : e.keyCode;
           var parts = e.srcElement.value.split('.');
           if (parts.length > 1 && unicode == 46)
               return false;
           if ((unicode == 8) || (unicode == 9) || (unicode == 45) || (unicode == 46) || (unicode > 47 && unicode < 58)) {
               return true;

           }
           else {
               window.alert("This field accepts only Numbers ");
               return false;
           }
          }
           function ValidateAlpha(evt) {
         var charCode = (evt.which) ? evt.which : evt.keyCode;
         if ((charCode < 65 || charCode > 90) && (charCode < 97 || charCode > 123) && charCode != 32) {
            
               window.alert("This field accepts only Alphabets");
             return false;
           
         }
          else {
            return true;
           }
     }
    </script>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
      <div class="container-fluid">
          <div class="row" style="padding-top:30px;">

          </div>
          <div class="row"  id="divmain" runat="server">
            <div class="col-sm-2"  >

            </div>

             
            <div class="col-sm-8" id="rstyle" runat="server">
               
                 <%-- <div class="col-sm-6" Style="background-image:url(asserts/images/home/kyc.png); background-size:cover;height: 100%;border-radius:20px">

                        </div>  --%> 
                  
                      <div class="row">
                          <br />
                         <asp:Label ID="LblSuReg" runat="server" Text="SUPPLIER REGISTRATION" CssClass="center-block" Font-Bold="True"></asp:Label>
                       
                      </div>
                      <br />
                         
                      <div class="row">
                           <div class="col-sm-12">
                           </div>
                           
                       </div>
                      <div class="row">
                      <div class="col-sm-12">
                               <asp:Label ID="label111" runat="server" Font-Bold="true" ></asp:Label>
                              
                           </div>
                            </div>

                        <div class="row">
                      <div class="form-group col-md-4">
                               <asp:Label ID="Label9" runat="server" Text="Franchise :" Font-Bold="True" ></asp:Label>
                                 
                           </div>
                                                                               
                           <div class="col-md-6" >
                               <asp:DropDownList ID="ddl_franch" runat="server" Width="90%" class="form-control"></asp:DropDownList>
                                 
                         <%--<asp:DropDownList ID="ddl_franch" class="txtstyle" runat="server" placeholder="Select Franchise" style="width:95%;padding-right:20px" AutoPostBack="true" OnSelectedIndexChanged="ddl_franch_SelectedIndexChanged"></asp:DropDownList>--%>
                                 </div>
                            </div>
                <br />
                <br />
                                <div class="row">
                           <div class="form-group col-md-3" >
                               <asp:Label ID="Label10" runat="server" Text="Country:" Font-Bold="True"></asp:Label>
                                
                           </div>
                                                     
                           <div class="form-group col-md-3">
                                 <asp:TextBox ID="txtfrancou" class="form-control" runat="server"  style="width:95%;padding-right:20px" Enabled="false"></asp:TextBox>
                          
                                 </div>
                               <div class="form-group col-md-3">
                              <asp:Label ID="labelu" runat="server" Text="User Id:" Font-Bold="true"></asp:Label> 
                             
                           </div>
                                                                   
                          <div class="form-group col-md-3">
                              <asp:TextBox ID="txtid" runat="server" class="form-control" Enabled="false"   style="width:95%;padding-right:20px"></asp:TextBox>
                          </div>
                      </div>
                <br />
                                                                                  
                      <div class="row">

                           <div class="col-sm-6">
                               <asp:Label ID="Label13" runat="server" Text="Name:" Font-Bold="True"></asp:Label>
                                
                           </div>
                           <div class="col-sm-6">
                               <asp:Label ID="Label1" runat="server" Text="User Name:" Font-Bold="True"></asp:Label>
                               <asp:RequiredFieldValidator runat="server" id="reqName" ValidationGroup="Registeration" controltovalidate="txtUserName" Text="*" ForeColor="Red" errormessage="Enter username!" />
                                
                           </div>
                           
                            <div class="col-md-6">
                                <asp:TextBox ID="txtname" class="form-control" onkeypress="return ValidateAlpha(event);" runat="server" placeholder="Enter  Name" style="width:95%;padding-right:20px"></asp:TextBox>
                            </div>
                           <div class="col-sm-6">
                                 <asp:TextBox ID="txtUserName" class="form-control" onkeypress="return ValidateAlpha(event);" runat="server" placeholder="Enter User Name" style="width:95%;padding-right:20px"></asp:TextBox></span>
                          
                                 </div>
                             </div>
                    
                      
                        <div class="row">
                           <div class="col-sm-6">
                                <asp:Label ID="Label2" runat="server" Text="Password:" Font-Bold="True"></asp:Label>
                                 <asp:RequiredFieldValidator runat="server" id="ReqPass" ValidationGroup="Registeration" controltovalidate="txtPassword" Text="*" ForeColor="Red" errormessage="Please Enter Password!" />
                              
                           </div>
                           <div class="col-sm-6">
                                <asp:Label ID="Label3" runat="server" Text="Confirm Password:" Font-Bold="True"></asp:Label>
                                <asp:RequiredFieldValidator ID="ReqConfirmPassword" runat="server" Text="*" ForeColor="Red" ControlToValidate="txtConfirmPassword"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" ValidationGroup="Registeration" controltovalidate="txtConfirmPassword" Text="*" ForeColor="Red" errormessage="Please Enter Confirm Password!" />
                          </div>
                                                                                                    
                           <div class="col-sm-6">
                               <span>
                        <asp:TextBox ID="txtPassword" class="form-control"  runat="server" placeholder="Please Enter Password"  style="width: 95%;"></asp:TextBox>
                          
            
                                   </span>
                           </div> 
                           <div class="col-sm-6">
                               <span><asp:TextBox ID="txtConfirmPassword" class="form-control" runat="server" placeholder="Confirm Password"  style="width: 95%;"></asp:TextBox>
                                   <asp:CompareValidator runat="server" ID="Comp1" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" Text="Password mismatch" Font-Size="15px" ForeColor="Red"  />
                                    </span> 
                          </div>   
                        </div>
                     
                        <div class="row">
                       
                           <div class="col-md-3">
                               <asp:Label ID="Label4" runat="server" Text="Address:" Font-Bold="True"></asp:Label><asp:RequiredFieldValidator runat="server" id="ReqAddress" ValidationGroup="Registeration" controltovalidate="txtAddress" Text="*" ForeColor="Red" errormessage="Please Enter Address!" />
                           </div>
                          
                           <div class="col-md-3">
                                <asp:TextBox ID="txtAddress" runat="server" class="form-control" placeholder="Please Enter Address"  style="width: 95%;" TextMode="MultiLine" Rows="2"></asp:TextBox></div>

                        
                                  <div class="col-md-3">
                                <asp:Label ID="Label6" runat="server" Text="Mobile Number"  style="width: 95%;" Font-Bold="True" ></asp:Label>
                                        <asp:RequiredFieldValidator runat="server" id="ReqMobNo" ValidationGroup="Registeration" controltovalidate="txtMobileNumber" Text="*" ForeColor="Red" errormessage="Please Enter Mobile No!" />
                           </div>
               
                                              
                           <div class="col-md-3"> 
                               <asp:TextBox ID="txtMobileNumber" class="form-control" runat="server" onkeypress="return validateNumbersOnly(event);" placeholder="Please Enter Valid Mobile Number"  style="width: 95%;" MaxLength="10"></asp:TextBox>

                           </div>
                           </div>
          
                       
                            <div class="row">
                           <div class="col-md-3">
                     <asp:Label ID="lblmail" runat="server" Text="Email:" Font-Bold="True"></asp:Label><asp:RequiredFieldValidator runat="server" id="ReqEmail" ValidationGroup="Registeration" controltovalidate="txtEmail" Text="*" ForeColor="Red" errormessage="Please Enter Email Id!" />
                           </div>
                           
                           <div class="col-md-3">
                               <asp:TextBox ID="txtEmail" runat="server" class="form-control" AutoPostBack="true" placeholder="Please Enter Valid Email"  style="width: 95%;" ></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Enter Valid Email ID" ControlToValidate="txtEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ToolTip="Please Enter Valid Email ID">?</asp:RegularExpressionValidator></div>
                             
                           <div class="col-md-3">
                               <asp:Label ID="Label14" runat="server" Text="Zip/Postal Code:" Font-Bold="True"></asp:Label>
                           </div>
                           
                      
                                                       
                           <div class="col-md-3">
                               <asp:TextBox ID="TextBox1" runat="server" class="form-control" AutoPostBack="true" placeholder="Please Enter Zip Code"  onkeypress="return validateNumbersOnly(event);" style="width: 95%;" ></asp:TextBox>
                           </div>

                    </div>
                          <div class="row">
                          <div class="col-md-3">
                              <asp:Label ID="Label15" runat="server" Text="Business Type:" Font-Bold="True"></asp:Label>
                           </div>
                               <div class="col-md-3">
                         <asp:DropDownList ID="DropDownList1" runat="server"  
                             Width="90%"  BorderStyle="Groove" class="form-control" style="border-radius:5px;height:35px">
                        </asp:DropDownList>
                                  
                                <%--<asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" ValidationGroup="Registeration" controltovalidate="ddlbtype" Text="*" ForeColor="Red" errormessage="Please Enter Email Id!" />--%>
                           </div>
                          <div class="col-md-3">
                              <asp:Label ID="Label16" runat="server" Text="Status" Font-Bold="True"></asp:Label>
                          </div>
                         
                         
                          <div class="col-md-3">
                                    <asp:DropDownList ID="DropDownList2" runat="server" BorderStyle="Groove" class="form-control" Width="90%" style="border-radius:5px;height:35px" AutoPostBack="True">
                                        
                                        <asp:ListItem>Active</asp:ListItem>
                                        <asp:ListItem>Inactive</asp:ListItem>
                                       
                                    </asp:DropDownList>
                                </div>
                      </div>
                           <div class="row" style="margin-bottom:40px">
                          <div class="col-sm-12">
                               <asp:CheckBox ID="CheckBox2" runat="server"  Font-Bold="true" Font-Names="Calibri" Visible="False" />
                              <asp:LinkButton Text="  Accept Conditions of Use and Privacy Notice." id="LinkButton1"  runat="server" style="font-size: 15px"  ForeColor="Blue" onmouseover="this.style.color='Green'" onmouseout="this.style.color='Blue'"  CausesValidation="false"  /> 
                              &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                                  <span class="glyphicon glyphicon-home"></span> 
                              <asp:LinkButton Text="Go To Home" id="LinkButton2"  runat="server" style="font-size: 15px"  ForeColor="Blue" onmouseover="this.style.color='Green'" onmouseout="this.style.color='Blue'"  CausesValidation="false" />
                          </div>
                                </br>  
                           <div class="row" >
                              
                          <div class="col-sm-12">
                     <asp:Button ID="Button1" runat="server" Text="REGISTER" ValidationGroup="Registeration" class="btn btn-success" CausesValidation="false"  BackColor="#00356A" ForeColor="YellowGreen" Enabled="false"  CssClass="center-block"/>
                 </div>
                               </div>
                    </div>
                                                
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddl_main" runat="server"  
                            Width="250px"  BorderStyle="Groove" class="form-control" style="border-radius:5px;height:40px" Visible="False">
                        </asp:DropDownList> </div>
                           
                         <div class="row">
                          <div class="col-md-2">
                     <asp:Button ID="Button2" runat="server" Text="Search" ValidationGroup="Registeration" class="btn btn-success" Color="#00356A"  CausesValidation="false"  />

                          </div>
                     <div class="col-md-2">               
                         <asp:Button ID="Button3" runat="server" Text="Refresh" ValidationGroup="Registeration" class="btn btn-success" Color="#00356A"  CausesValidation="false"   />

                     </div>
                  <div class="col-md-2"> 
                      <asp:Button ID="Button4" runat="server" Text="Update" ValidationGroup="Registeration" class="btn btn-success" Color="#00356A"  CausesValidation="false"    />
                 </div>
                             
                      </div>
         </div>
            </div>
  
                         
       <asp:Panel ID="Panel2" runat="server" BackColor="#E2E2E2" BorderStyle="Groove"
                Height="350px" ScrollBars="Vertical" Style="z-index: 0; left: 202px; position: absolute;
                top:261px; border-radius:8px" Width="900px" Visible="False">
         <table align="center" >
        <tr >
             
            <td>
                <table>
                   <tr>
                      
                        <td><div class="row">
                          <h3 style="text-align:center">
                              Terms and Conditions
                          </h3>
                      </div>
                      <br />
                      
                      <div class="row">
                           <div >
                              <p class="p">
                                  1. REGISTRATION An organization has a Business Account with Amazon once an individual associated with the organization registers the business and creates the first business user account associated with that organization. As and when we launch this functionality, individual(s) who have created the business user account can invite others to be part of the organization's Business Account. Each additional user that purchases or otherwise acts on behalf of the business and joins the organization's Business Account must create a new business user account that is part of and associated with the organization's Business Account.
                                  
                                  Business Accounts and business user accounts are intended for businesses and business-related organizations and may be used solely for business purposes. To create a business user account, users must use a valid email address. Unless explicitly permitted, a user may only create one account per email address. If a user creates a business user account using the email address and password connected to an existing Amazon customer account, the user must either (a) change the email address and password associated with the existing account, or (b) if the user wishes to have only one account, convert the existing account into a 
                                  
                                  business user account (which may make business user account information visible to others as described in Section 2). Once you complete the Business Account registration and verification process, your organization will be registered with erahmitha. </p>
                              <%-- <p>
2. ACCOUNT MANAGEMENT
You are responsible for all activities that occur under your organization's Business Account and any associated business user accounts (if and when applicable), regardless of whether the activities are undertaken by you, your employees or a third party (including your contractors or agents). Except to the extent caused by our breach of these Terms, we and our affiliates are not responsible for unauthorized access to your Business Account or business user accounts (if applicable). You are solely responsible for maintaining the security of your password. You may not disclose your password to any third party (other than third parties authorized by you to use your Business Account or associated business user accounts, if applicable, in accordance with these Terms) and are solely responsible for any use or action taken under your password. You will contact us immediately if you believe an unauthorized third party may be using your Business Account or associated business user accounts, if applicable, or if your Business Account or any business user account information, if applicable, is lost or stolen.

As and when we decide to launch this feature, we may give users the ability to invite other individuals affiliated with your organization to create business user accounts that are associated with the organization's Business Account and purchase, approve or act as an administrator on behalf of your organization. Administrators have the ability to invite other users to join the Business Account and to administer, manage, or close business user accounts. You will be responsible for all actions taken by Business Account users. You acknowledge that users may have access to information from your Business Account and associated business user accounts, such as shipping addresses, payment methods, and order history. Administrators are responsible for inviting only people affiliated with, and authorized to act on behalf of, your organization to create a business user account that is associated with your organization's Business Account. Any user designated as an administrator will have similar capabilities to manage Business Account features and invite new users to purchase, approve or act as an administrator on behalf of your organization. You agree that Amazon is not responsible for, and will have no liability arising from, the disclosure of the information of your organization or any associated business user accounts to any user associated with your organization.

If any user with a business user account that is associated with your Business Account leaves your organization or is no longer authorized to purchase, approve or otherwise act on behalf of your organization, you are solely responsible for contacting Amazon through tools we designate to have that user's business user account closed, disabled or removed from the organization's Business Account. Amazon disclaims all liability for, and you are solely responsible for, any actions taken or purchases made prior to closing, disabling or removing the user's business user account from the organization's Business Account. Please review our Business Account FAQs carefully for more information on the effects of disabling or removing a business user account from your organization's Business Account. Please note that a business user account that is removed is converted back into a personal account, with the individual able to access order history for purchases made using an individual payment method while associated with the organization's Business Account.

If you, as an individual user, create a business user account that is associated with an organization's Business Account, you acknowledge and consent that your organization and designated individuals acting as administrators have full access to and authority over (a) your business user account (with the ability to close or disable your business user account or remove it from the business and convert it into a personal account), and (b) details from your business user account, such as, and not limited to: order history, addresses, payment details, and other personal information associated with your business user account. By creating a business user account that is associated with an organization's Business Account, you, as an individual user, consent to sharing this information with your organization and its designated representatives and agree to release Amazon for any and all liability for any of your business user account information provided to or used by your organization, the administrator(s) of your organization, and any other users associated with your organization.

3. BUSINESS AND ORDER VERIFICATION
We may use the business name, address, VAT/ CST/ CIN number and any other information you provide about your organization or users or that we may request or determine is necessary to verify accuracy and eligibility for Amazon Business. We may make, directly or through third parties, inquiries to validate information that you provide to us. We may accept or refuse use of Amazon Business at our discretion and may modify purchasing rights or privileges at any time. We may share any information or documents you provide with third-party sellers that offer certain Amazon Business features for verification purposes.

Certain products may require licensing, certification or other credentials to purchase them. To purchase such products, you must provide us with a valid license, certification or other credentials (collectively, the "Credentials"), as determined in our sole discretion. We may use information you provide, as well as information relating to your account such as your business name and address, to verify the Credentials, and we may request additional information from you to assist in that verification. We may, in our sole discretion and at any time, suspend or terminate your ability to purchase such products.

                              </p>--%>
                                
                          </div></div></td></tr></table></td><td width="240px"></td>
            
             <td valign="top" > <asp:ImageButton ID="btn_excel1" runat="server"  ImageUrl="~/asserts/images/close.png"     /></td>
        </tr>
      
          <tr>
              <td>
                   <asp:CheckBox ID="CheckBox1" runat="server"  Font-Bold="true"  ForeColor="Blue" Text="Accept Conditions of Use and Privacy Notice." Font-Names="Calibri" AutoPostBack="True"  />
                             <%-- <asp:LinkButton Text="  Accept Conditions of Use and Privacy Notice." id="LinkButton1"  runat="server" style="font-size: 12px"  ForeColor="Blue" onmouseover="this.style.color='Green'" onmouseout="this.style.color='Blue'" OnClick="signin_Click" CausesValidation="false" />--%>
              </td>

          </tr>   
            
    </table>
     
     </asp:Panel>
    <asp:Panel id="Plunits" runat="server" Height="200px" Style="z-index: 102; left: 710px;
              position: absolute; top: 220px" Width="400px" Visible="true" >
             
              <div class="row">
                          <div class="col-sm-12">
               
                              <div class="row">
                           <%-- <div class="col-lg-4">
       
            <asp:Label ID="Label11" runat="server" Text="Choose Country:" Font-Bold="true" Width="200px"/>
            </div>--%>
                              <div class="col-lg-7">
                                  <%--<asp:TextBox ID="txtto" runat="server" CssClass="style" ReadOnly="true"></asp:TextBox><asp:Button ID="btn_to" runat="server" Text=".." CausesValidation="false" Visible="false"  Font-Bold="true" Width="40px" OnClick="btn_to_Click"   />--%>
                                  <%-- <asp:CheckBox ID="chkAll" Text="Select All" runat="server" OnCheckedChanged = "Check_UnCheckAll" AutoPostBack = "true"  Visible="false"/>--%>
                                  
                              


                                 
</div>
</div>

</div>
                                  </div>
             
             <%--<asp:CheckBoxList ID="CheckBoxList1" runat="server" 
        Height="200px" Width="400px" Visible="true" AutoPostBack="True" RepeatLayout="Flow"    OnSelectedIndexChanged="checkunits_SelectedIndexChanged" style="overflow:auto;margin-top:10px; margin-left: 1px;" BackColor="#FFFFCC">  
       <asp:ListItem>Angola      </asp:ListItem><asp:ListItem>Botswana    </asp:ListItem><asp:ListItem>Burkina Faso</asp:ListItem><asp:ListItem>Burundi     </asp:ListItem><asp:ListItem>Cameroon    </asp:ListItem><asp:ListItem>Canada      </asp:ListItem><asp:ListItem>Comoros     </asp:ListItem><asp:ListItem>Congo       </asp:ListItem><asp:ListItem>Egypt       </asp:ListItem><asp:ListItem>Eritrea     </asp:ListItem><asp:ListItem>Ethiopia    </asp:ListItem><asp:ListItem>France      </asp:ListItem><asp:ListItem>Gabon       </asp:ListItem><asp:ListItem>Gambia      </asp:ListItem><asp:ListItem>Ghana       </asp:ListItem><asp:ListItem>India      </asp:ListItem>   <asp:ListItem>Japan       </asp:ListItem><asp:ListItem>Kenya       </asp:ListItem><asp:ListItem>Lesotho     </asp:ListItem><asp:ListItem>Libya       </asp:ListItem><asp:ListItem>Madagascar  </asp:ListItem><asp:ListItem>Malawi      </asp:ListItem><asp:ListItem>Mauritius   </asp:ListItem><asp:ListItem>Morocco     </asp:ListItem><asp:ListItem>Mozambique  </asp:ListItem><asp:ListItem>Namibia     </asp:ListItem><asp:ListItem>Nigeria     </asp:ListItem><asp:ListItem>Rwanda      </asp:ListItem><asp:ListItem>Senegal     </asp:ListItem><asp:ListItem>Seychelles  </asp:ListItem><asp:ListItem>Sierra Leone</asp:ListItem><asp:ListItem>South Africa</asp:ListItem><asp:ListItem>Srilanka    </asp:ListItem><asp:ListItem>Sudan       </asp:ListItem><asp:ListItem>Swaziland   </asp:ListItem><asp:ListItem>Tanzania    </asp:ListItem><asp:ListItem>Uganda      </asp:ListItem><asp:ListItem>Zambia      </asp:ListItem><asp:ListItem>Zimbabwe    </asp:ListItem></asp:CheckBoxList>--%>


                        
        </asp:Panel>
         
  <table align="center">
      <tr>
        <td id="searchbox" runat="server" visible="false">
            <asp:Label ID="lblsearch" runat="server" Text="Search:"></asp:Label>
            <asp:TextBox ID="txtsearch" runat="server" placeholder="Search by Name/Id" Width="200px"></asp:TextBox>
            <asp:Button ID="btnsearch" runat="server" Text="Search" Width="80px"  class="btn btn-success"  CausesValidation="false"  BackColor="#00356A"  />
        </td>
    </tr>
        <tr>
            <td>
                <asp:GridView ID="gv_search" runat="server" AutoGenerateColumns="False"  Font-Size="Smaller" GridLines="Horizontal" ShowFooter="True"  Style="width:1000px;"  AllowPaging="true" BackColor="White"   PageSize="10"  PagerSettings-Position="Bottom"   >
             			
                            <Columns>

                                 <asp:TemplateField  HeaderText="Recid" HeaderStyle-Font-Size="small">
                                <ItemTemplate>
                                    <asp:LinkButton runat="server" ID="lnk_View" ForeColor="black" Font-Size="Small" Width="100px" Text='<%# Eval("Recid") %>' CommandName='<%# Eval("Recid") %>' CommandArgument='<%# Eval("Recid") %>'  CausesValidation="false"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>

                    <%--<asp:BoundField DataField="RecId"  ItemStyle-HorizontalAlign="Left" HeaderText="RecId">  
                    <ItemStyle Width="100px"></ItemStyle>
                    </asp:BoundField>--%>
                    <asp:BoundField DataField="type" ItemStyle-HorizontalAlign="Left" HeaderText="type"> 
                    <ItemStyle Width="100px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="username" ItemStyle-HorizontalAlign="Left" HeaderText="Supplier Name"> 
                    <ItemStyle Width="200px"></ItemStyle>
                    </asp:BoundField>
                    
                    <asp:BoundField DataField="address"    ItemStyle-HorizontalAlign="Left" HeaderText="address"> 
                    <ItemStyle Width="80px"></ItemStyle>
                    </asp:BoundField>
                                	




                    <asp:BoundField DataField="mobile"   ItemStyle-HorizontalAlign="Left" HeaderText="mobile">  
                    <ItemStyle Width="80px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="email"  ItemStyle-HorizontalAlign="Left" HeaderText="email">  
                    <ItemStyle Width="100px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Country"  ItemStyle-HorizontalAlign="Left" HeaderText="Country">  
                    <ItemStyle Width="80px"></ItemStyle>
                    </asp:BoundField>
                                <asp:BoundField DataField="Createdon"  ItemStyle-HorizontalAlign="Left" HeaderText="Createdon">  
                    <ItemStyle Width="80px"></ItemStyle>
                    </asp:BoundField>
                                
                    
                                </Columns>
                    <HeaderStyle BackColor="#003366" ForeColor="White" />
                    <FooterStyle BackColor="#f2f2f2" />
                    </asp:GridView>
            </td>
        </tr>
    </table>
    <br />


            </div>
    </form>
</body>
</html>
