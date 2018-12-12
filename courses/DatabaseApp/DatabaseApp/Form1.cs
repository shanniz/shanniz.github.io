using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;


namespace DatabaseApp
{
    public partial class Form1 : Form
    {
        //private SqlConnection conn;
        public Form1()
        {
            InitializeComponent();
            ///this.conn = new
            //    SqlConnection(
            //    "Data Source=DESKTOP-PD08VCS;Initial Catalog=school_db;Integrated Security=True");
        }

        private void button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-PD08VCS;Initial Catalog=school_db;Integrated Security=True"); ;         
            conn.Open();

            SqlCommand cmd = new 
                SqlCommand("select * from student;", conn);
            SqlDataReader reader =  cmd.ExecuteReader();
            while (reader.Read()) {
                string name = reader.GetValue(1).ToString();
                string dob = reader.GetValue(2).ToString();
                dob = dob.Split(' ')[0];
                MessageBox.Show("full name = "+name
                    +", date of birth =" +dob);
            }

            conn.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string connString = 
            "Data Source=DESKTOP-PD08VCS;Initial Catalog=school_db;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            SqlDataAdapter adapter = new SqlDataAdapter();
            string query = "INSERT INTO dbo.student (id, full_name, dob)"
                + " VALUES (7, 'buggs bunny', '12-12-2012');";
            adapter.InsertCommand = new SqlCommand(query, conn);
            adapter.InsertCommand.ExecuteNonQuery();
            conn.Close();
            MessageBox.Show("Record Inserted Successfully!");
        }

        private void button3_Click(object sender, EventArgs e)
        {
            string connString =
         "Data Source=DESKTOP-PD08VCS;Initial Catalog=school_db;Integrated Security=True";
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            SqlDataAdapter adapter = new SqlDataAdapter();
            string userid = textBox1.Text;
            string query = "DELETE FROM dbo.student WHERE id="+userid+";";
            adapter.DeleteCommand = new SqlCommand(query, conn);
            adapter.DeleteCommand.ExecuteNonQuery();
            conn.Close();
            MessageBox.Show("Record Deleted Successfully!");
        }
    }
}
