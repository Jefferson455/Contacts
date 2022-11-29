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
    public partial class Main : Form
    {
        public Main()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void Main_Load(object sender, EventArgs e)
        {

        }

        private void btnSearch_Click(object sender, EventArgs e)
        {

        }
        #region events
        private void btnCreate_Click(object sender, EventArgs e)
        {
            openModalAddUsuario();
        }
        #endregion

        #region PRIVATE METHODS
        private void openModalAddUsuario()
        {
            //llamar modal de añadir ---
            UsuarioDetails usuarioDetails = new UsuarioDetails();
            usuarioDetails.ShowDialog();
        }


        #endregion

    }
}
