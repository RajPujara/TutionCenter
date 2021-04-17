<%@ Page Title="" Language="C#" MasterPageFile="~/TutionCenter.Master" AutoEventWireup="true" CodeBehind="TutorPage.aspx.cs" Inherits="TutionCenter.TutorPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>This is Tutor Page...!</h1>
    <div style="background-color:azure; width: 364px;">
        <table border="1">
            <tr>
                <td>Tutor Name</td>
                <td><asp:TextBox ID="TxtTutorname" runat="server"></asp:TextBox></td>                   
            </tr>
            <tr>
                <td>Email</td>
                <td><asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox></td> 
            </tr>
            <tr>
                <td>Phone</td>
                <td><asp:TextBox ID="TxtPhone" runat="server"></asp:TextBox></td> 
            </tr>
            <tr>
                <td>Course</td>
                <td><asp:DropDownList ID="DDLCourse" runat="server" DataSourceID="SqlDataSource1" AppendDataBoundItems="true" DataTextField="Cname" DataValueField="Cname">
                    <asp:ListItem value="0" Text="--Select Course--"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TutionCenterConnectionString %>" SelectCommand="SELECT [Cname] FROM [tbl_COURSE]"></asp:SqlDataSource>
                </td>                     
            </tr>
            <tr>
                <td>Qualification</td>
                <td><asp:TextBox ID="TxtQualification" runat="server"></asp:TextBox></td> 
            </tr>
            <tr>
                <td>Join Date</td>
                <td><asp:Literal ID="Litjoindate" runat="server"></asp:Literal></td>                    
            </tr>
            <tr>
                <td><asp:Button ID="BtnTutor" runat="server" Text="Insert" OnClick="BtnTutor_Click" /></td> 
                <td><asp:Label ID="LblMsg" runat="server" Text="" ForeColor="Green"></asp:Label></td>
                    
            </tr>
        </table>
    </div>
</asp:Content>
