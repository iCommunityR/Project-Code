using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxUploadControl;
using System.IO;
using System.Windows.Forms;

namespace iComm.UI
{
    public partial class _Default : Page
    {
        const string UploadDirectory = "~/UploadControl/UploadImages/";
        protected void Page_Load(object sender, EventArgs e)
        {
            string imageurl = Convert.ToString(Session["imageUrl"]);
            if (string.IsNullOrEmpty(imageurl))
            {
                TxPrev.ImageUrl = UploadDirectory + "ImagePreview.gif";
                BtnSave.Enabled = true;
            }
            else
            {
                TxPrev.ImageUrl = UploadDirectory + imageurl;
                BtnSave.Enabled = true;
            }
            if (!IsPostBack)
            {
                lblMessage.Text = "";
            }
        }

       

        protected void uplImage_FileUploadComplete(object sender, FileUploadCompleteEventArgs e)
        {
            if (!string.IsNullOrEmpty(e.UploadedFile.FileName))
            {
                string image = Path.Combine(MapPath(UploadDirectory), e.UploadedFile.FileName);
                e.UploadedFile.SaveAs(image);
                Session["imageUrl"] = e.UploadedFile.FileName;
            }
        }

        private void clear_fields()
        {
            TxFname.Text = "";
            TxSurName.Text = "";
            TxMail.Text = "";
            Txphn.Text = "";
            TxIdentity.Text = "";
            TxTitle.Text = "";
            TxStory.Text = "";
            TxLocatn.Text = "";
            TxTime.Text = "";
            TxDte.Text = "";
            Session["imageUrl"] = string.Empty;
        }

        protected void BtnUpload_Click(object sender, EventArgs e)
        {
            TxPrev.ImageUrl = UploadDirectory + Session["imageUrl"];
           
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "";
            iCommR.BLL.iReports operation = new iCommR.BLL.iReports();

            string status = operation.insert_News(UploadDirectory + Session["imageUrl"],
                                        TxFname.Text.Trim(),
                                        TxSurName.Text.Trim(),
                                        TxMail.Text.Trim(),
                                        Txphn.Text.Trim(),
                                        TxIdentity.Text.Trim(),
                                        TxTitle.Text.Trim(),
                                        TxStory.Text.Trim(),
                                        TxLocatn.Text.Trim(),
                                        TxTime.Text.Trim(),
                                        TxDte.Text.Trim());
            Session["imageUrl"] = string.Empty;
            switch (status)
            {



                case "3":
                    lblMessage.Text = "Your news story has been successfully submited. We will get back to you shortly.";
                    clear_fields();

                    //Response.Write("<script>alert('Sucessfully Saved.')</script>");
                    break;
                default:
                    break;
            }
        }

        

    }
}