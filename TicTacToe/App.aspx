<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="App.aspx.cs" Inherits="TicTacToe.App" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <div style="margin-left:35%;" >
            <h1 style="margin-left:12%">Tic-Tac-Toe</h1>
            <asp:Panel ID="Panel1" runat="server"  BackColor="#00CCFF" BorderColor="#003399" Height="400px" Width="400px" EnableTheming="True">
                <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Button ID="GameControl1" runat="server" Height="50px" width="50px" BackColor="White" BorderColor="#33CCFF" OnClick="Button_Click" />
                &nbsp;&nbsp;<asp:Button ID="GameControl2" runat="server" Height="50px" width="50px" BackColor="White" BorderColor="#33CCFF" OnClick="Button_Click" />
                &nbsp;
                <asp:Button ID="GameControl3" runat="server" Height="50px" width="50px" BackColor="White" BorderColor="#33CCFF" OnClick="Button_Click" />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="GameControl4" runat="server" Height="50px" width="50px" BackColor="White" BorderColor="#33CCFF" OnClick="Button_Click"/>
                &nbsp;&nbsp;<asp:Button ID="GameControl5" runat="server" Height="50px" width="50px" BackColor="White" BorderColor="#33CCFF" OnClick="Button_Click"/>
                &nbsp;&nbsp;<asp:Button ID="GameControl6" runat="server" Height="50px" width="50px" BackColor="White" BorderColor="#33CCFF" OnClick="Button_Click"/>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="GameControl7" runat="server" Height="50px" width="50px" BackColor="White" BorderColor="#33CCFF" OnClick="Button_Click"/>
                &nbsp;
                <asp:Button ID="GameControl8" runat="server" Height="50px" width="50px" BackColor="White" BorderColor="#33CCFF" OnClick="Button_Click"/>
                &nbsp;
                <asp:Button ID="GameControl9" runat="server" Height="50px" width="50px" BackColor="White" BorderColor="#33CCFF" OnClick="Button_Click"/>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br /><br /><br /><br /><br />
            
            </asp:Panel>
            <div>
            <asp:Label ID="ResultLabel" runat="server" Visible="False" Font-Bold="true" Font-Size="Large" ForeColor="#fff"></asp:Label>
            <br />
            <asp:Button ID="Reset" runat="server" OnClick="Reset_Click" Text="Reset" />
            
        </div>
        </div>

    </form>
</body>
</html>
