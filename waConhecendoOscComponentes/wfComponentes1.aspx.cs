using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waConhecendoOscComponentes
{
    public partial class wfComponentes1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInserir_Click(object sender, EventArgs e)
        {
            //dlSite.Items.Add(txtSite.Text);

            ListItem item = new ListItem(txtSite.Text, txtEndereco.Text);
            //dlSite.Items.Add(item);

            //item = new ListItem(txtEndereco.Text, lbEndereco.Items.Count.ToString());
            lbEndereco.Items.Add(item);
            txtSite.Text = "";
            txtEndereco.Text = "";
        }

        protected void btnSelecionar_Click(object sender, EventArgs e)
        {
            //ListItem item = dlSite.SelectedItem;
            //txtSite.Text = item.Text;
            //item = lbEndereco.SelectedItem;
            //txtEndereco.Text = item.Text;
            dlSite.Items.Clear();
            //ListItem li;
            //for (int i = 0; i < lbEndereco.Items.Count; i++)
            //{
            //    li = lbEndereco.Items[i];
            //    if (li.Selected)
            //    {
            //        li.Selected = false;
            //        dlSite.Items.Add(li);
            //    }
            //}

            foreach (ListItem item in lbEndereco.Items)
            {
                if (item.Selected)
                {
                    item.Selected = false;
                    dlSite.Items.Add(item);
                }
            }
        }
    }
}