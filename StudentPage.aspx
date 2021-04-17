<%@ Page Title="" Language="C#" MasterPageFile="~/TutionCenter.Master" AutoEventWireup="true" CodeBehind="StudentPage.aspx.cs" Inherits="TutionCenter.StudentPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>This is Student Page...!</h1>
    <div style="background-color:azure;">
        <table border="1">
            <tr>
                <td>Student First Name</td>
                <td style="width: 277px"><asp:TextBox ID="TxtStFname" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Student Last Name</td>
                <td style="width: 277px"><asp:TextBox ID="TxtStLname" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Father Name</td>
                <td style="width: 277px"><asp:TextBox ID="TxtFatherName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Father Phone</td>
                <td style="width: 277px"><asp:TextBox ID="TxtFatherPhone" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Email</td>
                <td style="width: 277px"><asp:TextBox ID="TxtStEmail" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Phone</td>
                <td style="width: 277px"><asp:TextBox ID="TxtStPhone" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Course Name</td>
                <td style="width: 277px"><asp:DropDownList ID="DDLCourseName" runat="server" AutoPostBack="True" AppendDataBoundItems="true" DataSourceID="SqlDataSource1" DataTextField="Cname" DataValueField="Cname" OnSelectedIndexChanged="DDLCourseName_SelectedIndexChanged">
                    <asp:ListItem Value="0" Text="--Select Course--"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TutionCenterConnectionString2 %>" SelectCommand="SELECT [Cname] FROM [tbl_COURSE]"></asp:SqlDataSource>
                </td>           
            </tr>
            <tr>
                <td>Course Fees</td>
                <td style="width: 277px"> <asp:Label ID="LblCourseFees" runat="server" Text=""></asp:Label></td>                 
            </tr>
            <tr>
                <td>Installment</td>
                <td style="width: 277px"><asp:TextBox ID="TxtCourseInstallment" runat="server" AutoPostBack="true" OnTextChanged="TxtCourseInstallment_TextChanged"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Fees Due</td>
                <td style="width: 277px"><asp:Label ID="LblDueFees" runat="server" Text=""></asp:Label></td>                 
            </tr>
            <tr>
                <td>Join Date</td>
                <td style="width: 277px"><asp:Literal ID="LitJoinDate" runat="server"></asp:Literal></td>                                  
            </tr>
            <tr>
                <td><asp:Button ID="BtnStudent" runat="server" Text="Insert Record" OnClick="BtnStudent_Click" /></td>
                <td style="width: 277px"><asp:Label ID="LblMsg" runat="server" Text="" ForeColor="Green"></asp:Label></td>
            </tr>
        </table>
    </div>
</asp:Content>
