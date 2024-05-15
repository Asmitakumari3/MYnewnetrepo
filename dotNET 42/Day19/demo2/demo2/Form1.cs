using demo2;
namespace demo2
{
    public partial class Form1 : Form
    {

        BankingDbEf1Context db = new BankingDbEf1Context();

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
        private void button1_Click_1(object sender, EventArgs e)
        {
            AccountsInfo newAccObj = new AccountsInfo();
            {
                int AccNo = Convert.ToInt32(textBox1.Text);
                string AccName = textBox2.Text;
                string AccType = comboBox1.Text;
                int AccBalance = Convert.ToInt32(textBox4.Text);
                int AccBranch = Convert.ToInt32(textBox5.Text);

            };
            if (radioButton1.Checked)
            {
                newAccObj.AccIsActive = true;
            }
            else
            {
                newAccObj.AccIsActive = false;
            }

            db.AccountsInfos.Add(newAccObj);
            db.SaveChanges();
            MessageBox.Show("Account Created");
        }
        private void button2_Click(object sender, EventArgs e)
        {
            //where)
            //var acctoupdate = (from a in db.accountinfos
            //                   where a.accno == convert.toint32(textbox1.text)
            //                   select a).single();

            //if (acctoupdate != null)
            //{

            //}
        }


    }
}