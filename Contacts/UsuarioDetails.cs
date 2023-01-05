using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Contacts
{
    public partial class UsuarioDetails : Form
    {
        private BussinessLogicLayer _bussinessLogicLayer;
        public UsuarioDetails()
        {
            InitializeComponent();
            _bussinessLogicLayer = new BussinessLogicLayer();
        }

        private void lblFName_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click_1(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
           this.Close();
        }
        private void btnSave_Click(object sender, EventArgs e)
        {
            SaveContact();
            this.Close();


        }
        private void SaveContact()
        {
            Contact contact = new Contact();
            contact.FirstName = txtFName.Text;
            contact.LastName = txtLName.Text;
            contact.Phone = txtPhone.Text;
            contact.Address = txtAddress.Text;
            _bussinessLogicLayer.SaveContact(contact);
        }

        private void UsuarioDetails_Load(object sender, EventArgs e)
        {

        }
    }
}
