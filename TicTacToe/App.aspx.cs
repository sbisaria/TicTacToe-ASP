using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TicTacToe
{
    public partial class App : System.Web.UI.Page
    {
        static int turnCount = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            string currentMarker = "";
            bool isAWin = false;
            Button button = (Button)sender;
            if (turnCount % 2 == 0)
                currentMarker = button.Text = "X";
            else
                currentMarker = button.Text = "O";
            button.Enabled = false;
            turnCount++;
            if (turnCount > 4)
                isAWin = CheckWinningConditions(currentMarker);
            if (isAWin == true)
            {
                ResultLabel.Text = $"{currentMarker} Wins!!!";
                ResultLabel.Visible = true;
                DisableAllControls();
            }
            else if (turnCount == 9)
            {
                ResultLabel.Text = "Its a draw!!";
                ResultLabel.Visible = true;
            }
        }

        private void DisableAllControls()
        {
            foreach (Control control in Panel1.Controls)
            {
                if (control.GetType() == typeof(Button))
                    ((Button)control).Enabled = false;
            }
        }

        private bool CheckWinningConditions(string currentMarker)
        {
            if (CheckHorizontalCondition(currentMarker) == true)
                return true;
            if (CheckVerticalCondition(currentMarker) == true)
                return true;
            if (CheckDiagonalConditions(currentMarker) == true)
                return true;
            return false;
        }

        private bool CheckHorizontalCondition(string currentMarker)
        {
            if (GameControl1.Text.Equals(currentMarker) && GameControl2.Text.Equals(currentMarker) && GameControl3.Text.Equals(currentMarker))
                return true;
            if (GameControl4.Text.Equals(currentMarker) && GameControl5.Text.Equals(currentMarker) && GameControl6.Text.Equals(currentMarker))
                return true;
            if (GameControl7.Text.Equals(currentMarker) && GameControl8.Text.Equals(currentMarker) && GameControl9.Text.Equals(currentMarker))
                return true;
            return false;
        }

        private bool CheckVerticalCondition(string currentMarker)
        {
            if (GameControl1.Text.Equals(currentMarker) && GameControl4.Text.Equals(currentMarker) && GameControl7.Text.Equals(currentMarker))
                return true;
            if (GameControl2.Text.Equals(currentMarker) && GameControl5.Text.Equals(currentMarker) && GameControl8.Text.Equals(currentMarker))
                return true;
            if (GameControl3.Text.Equals(currentMarker) && GameControl6.Text.Equals(currentMarker) && GameControl9.Text.Equals(currentMarker))
                return true;
            return false;
        }

        private bool CheckDiagonalConditions(string currentMarker)
        {
            if (GameControl1.Text.Equals(currentMarker) && GameControl5.Text.Equals(currentMarker) && GameControl9.Text.Equals(currentMarker))
                return true;
            if (GameControl3.Text.Equals(currentMarker) && GameControl5.Text.Equals(currentMarker) && GameControl7.Text.Equals(currentMarker))
                return true;
            return false;
        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            foreach (Control control in Panel1.Controls)
            {
                if (control.GetType() == typeof(Button))
                {
                    var button = (Button)control;
                    button.Enabled = true;
                    button.Text = "";
                    ResultLabel.Text = "";
                    ResultLabel.Visible = false;
                    turnCount = 0;
                }
            }
        }
    }
}