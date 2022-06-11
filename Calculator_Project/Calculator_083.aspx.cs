using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


//https://prod.liveshare.vsengsaas.visualstudio.com/join?4DA10F88C5BD92A10E8AB3AE33AE2F1584CD
namespace Calculator_Project
{
    public static class GlobalData
    {
        public static string[] numbers1 = new string[100];
        public static string[] numbers2 = new string[100];
        public static string[] Operator = new string[100];
        public static string[] AllAnswer = new string[100];
    }

    public partial class WebForm1 : System.Web.UI.Page
    {        
        Double FirstNo, SecondNo;
        public static double arbitrary_ans = 0;
        public static int counter =0, up_down_counter=0;
        public static string arbitrary_operator;
        void enter_number(double number)
        {  
            if (TextBox1.Text == "0" || TextBox1.Text.StartsWith("=")) {  TextBox1.Text = Convert.ToString(number);  }
            else {  TextBox1.Text += Convert.ToString(number);  }
        }

        void perform_operation(string operators)
        {
            arbitrary_operator = operators;

            if (TextBox1.Text.StartsWith("="))
            { TextBox1.Text = "";}
            else
            { 
            if (TextBox1.Text == ""){ errormessage.Text = "Please Enter any Number";}
                else
                {
                    SecondNo = Convert.ToDouble(TextBox1.Text);
                    FirstNo = arbitrary_ans;
                    GlobalData.numbers1[counter] = Convert.ToString(arbitrary_ans);
                    GlobalData.numbers2[counter] = Convert.ToString(TextBox1.Text);

                    if (operators == "plus")
                    {
                        arbitrary_ans = FirstNo + SecondNo;
                        GlobalData.Operator[counter] = "+"; }

                    else if (operators == "minus")
                    {
                        arbitrary_ans = FirstNo - SecondNo;
                        GlobalData.Operator[counter] = "-"; }

                    else if (operators == "divide")
                    {
                        arbitrary_ans = FirstNo / SecondNo;
                        GlobalData.Operator[counter] = "/"; }

                    else if (operators == "multiply")
                    {
                        arbitrary_ans = FirstNo * SecondNo;
                        GlobalData.Operator[counter] = "X"; }

                    else
                    {
                        errormessage.Text = "Enter Valid Operation";
                    }

                    GlobalData.AllAnswer[counter] = Convert.ToString(arbitrary_ans);
                    TextBox1.Text = "";
                    up_down_counter = counter;
                    counter++;
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e) {  errormessage.Text = "";  }
        protected void color_red_Click(object sender, EventArgs e)
        { maindiv.BackColor = System.Drawing.Color.Red;  }
        protected void N7_Click(object sender, EventArgs e){enter_number(7);}
        protected void N8_Click(object sender, EventArgs e){enter_number(8);}
        protected void N9_Click(object sender, EventArgs e){enter_number(9);}
        protected void N4_Click(object sender, EventArgs e){enter_number(4);}
        protected void N5_Click(object sender, EventArgs e){enter_number(5);}
        protected void N6_Click(object sender, EventArgs e){ enter_number(6);}
        protected void N1_Click(object sender, EventArgs e){ enter_number(1);}
        protected void N2_Click(object sender, EventArgs e){enter_number(2);}
        protected void N3_Click(object sender, EventArgs e){enter_number(3);}
        protected void N0_Click(object sender, EventArgs e){enter_number(0);}
        protected void Oplus_Click(object sender, EventArgs e){ perform_operation("plus"); }
        protected void Ominus_Click(object sender, EventArgs e){ perform_operation("minus"); }
        protected void Omultiply_Click(object sender, EventArgs e){ perform_operation("multiply"); }
        protected void Odivide_Click(object sender, EventArgs e) { perform_operation("divide"); }
        protected void Oclear_Click(object sender, EventArgs e)
        {
            counter = 0;
            up_down_counter = 0;
            arbitrary_operator = null;
            arbitrary_ans = 0;
            TextBox1.Text = "0";
            Odown.Enabled = false;
            Oup.Enabled = false;

        }

        protected void green_Click(object sender, EventArgs e)
        {
            maindiv.BackColor = System.Drawing.Color.Green;
        }
        protected void blue_Click(object sender, EventArgs e)
        {
            
            maindiv.BackColor = System.Drawing.Color.Blue;
        }
        protected void red_Click(object sender, EventArgs e)
        {maindiv.BackColor = System.Drawing.Color.Red; }
        protected void Calculate_Click(object sender, EventArgs e)
        {
            perform_operation(arbitrary_operator);
            TextBox1.Text = Convert.ToString("= " +arbitrary_ans);
            Odown.Enabled = true;
            Oup.Enabled = true;
        }

        protected void black_Click(object sender, EventArgs e)
        { maindiv.BackColor = System.Drawing.Color.Black; }

        protected void Oback_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox1.Text.StartsWith("=")){TextBox1.Text = "";}
            else
            {TextBox1.Text = TextBox1.Text.Remove(TextBox1.Text.Length - 1);}
        }
        protected void Odivide_Click1(object sender, EventArgs e){ perform_operation("divide"); }
        protected void Oremainder_Click(object sender, EventArgs e)
        {
            arbitrary_operator = "remainder";

            if (TextBox1.Text.StartsWith("="))
            {
                TextBox1.Text = "";
            }
            else
            {
                if (TextBox1.Text == "")
                {
                    errormessage.Text = "Please Enter any Number";
                }
                else
                {
                    SecondNo = Convert.ToDouble(TextBox1.Text);
                    FirstNo = arbitrary_ans;


                    arbitrary_ans = FirstNo % SecondNo;

                    TextBox1.Text = "";
                }
            }

        }
        protected void Oup_Click(object sender, EventArgs e)
        {
            if (up_down_counter >= 1)
            {
                TextBox1.Text = GlobalData.numbers1[up_down_counter] + " " + GlobalData.Operator[up_down_counter] + " " + GlobalData.numbers2[up_down_counter] + " = " + GlobalData.AllAnswer[up_down_counter];
                up_down_counter--;
            }

            else
            {
                errormessage.Text = "No Previous Calculation";
            }

        }

        protected void Odown_Click(object sender, EventArgs e)
        {
            if (up_down_counter<counter-1)
            {
                up_down_counter++;
                TextBox1.Text = GlobalData.numbers1[up_down_counter] + " " + GlobalData.Operator[up_down_counter] + " " + GlobalData.numbers2[up_down_counter] + " = " + GlobalData.AllAnswer[up_down_counter];
               
            }

            else
            {
                errormessage.Text = "It's Your Latest Calculation";

            }
        }

        protected void Ndot_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.EndsWith("."))
            {
                errormessage.Text = "Cann't add double decimal";
            }
            else
            {
                if (TextBox1.Text == "0" || TextBox1.Text.StartsWith("="))
                {
                    TextBox1.Text = "0.";

                }

                else
                {
                    TextBox1.Text += ".";
                }
            }
        }

    }
}