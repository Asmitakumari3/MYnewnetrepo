using System.Data;
using System.Data.SqlClient;

namespace EmployeeManagement
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("server=DA55CE762AC15EE;database=EmployeeManagement;integrated security=true");
            SqlCommand cmd_newEmp = new SqlCommand("insert into employeeinfo1 values(@eNo,@eName,@eDes,@Dept,@eSal,@eIsPer) ", con);

            cmd_newEmp.Parameters.AddWithValue("@eNo", textBox1.Text);
            cmd_newEmp.Parameters.AddWithValue("@eName", textBox2.Text);
            cmd_newEmp.Parameters.AddWithValue("@eDes", comboBox1.Text);
            cmd_newEmp.Parameters.AddWithValue("@eSal", textBox5.Text);
            cmd_newEmp.Parameters.AddWithValue("@eDept", textBox3.Text);

            if (radioButton1.Checked)
            {
                cmd_newEmp.Parameters.AddWithValue("@eIsPer", 1);
            }
            else
            {
                cmd_newEmp.Parameters.AddWithValue("@eIsPer", 0);

            }

            con.Open();
            int rows = cmd_newEmp.ExecuteNonQuery();
            con.Close();
        }

        private void button3_Click(object sender, EventArgs e)
        {

        }
    }
}