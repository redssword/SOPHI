
using System;
using System.IO;
using System.Reflection;
using System.Windows.Forms;

namespace IHM_SOPHI
{
    public partial class IHM_SOPHI : Form
    {
        public IHM_SOPHI()
        {
            InitializeComponent();

        }

        string dataDirectoryPath;

        private void CreateDataDirectoryPath(string fileType)
        {
            string assemblyPath = Assembly.GetExecutingAssembly().Location;
            string solutionDirectory = Path.GetFullPath(Path.Combine(Path.GetDirectoryName(assemblyPath), @"..\..\..\..\"));

            dataDirectoryPath = Path.Combine(solutionDirectory, "data", fileType);

            CompleteListBoxContenu(); //TODO LABE à tester
        }

        private void ResetButtonAppearance()
        {
            B_Image.BackColor = Color.White;
            B_Video.BackColor = Color.White;
            B_Objet3D.BackColor = Color.White;
            B_Live.BackColor = Color.White;
        }

        private void UpdateButtonState(Button button)
        {
            // TODO LABE tester si ca fonction puis essayer de lier les 4 bouton pour pouvoir en colorer qu'un seul
            ResetButtonAppearance();
            button.BackColor = Color.Cornsilk;
        }

        private void B_Image_Click(object sender, EventArgs e)
        {
            CreateDataDirectoryPath("Image");
            UpdateButtonState(B_Image);
        }

        private void B_Video_Click(object sender, EventArgs e)
        {
            CreateDataDirectoryPath("Video");
            UpdateButtonState(B_Video);
        }

        private void B_Objet3D_Click(object sender, EventArgs e)
        {
            CreateDataDirectoryPath("Objet3D");
            UpdateButtonState(B_Objet3D);
        }

        private void CompleteListBoxContenu()
        {
            // Vérification de l'existance du dossier
            if (Directory.Exists(dataDirectoryPath))
            {
                // Efface les anciennes données de la listBox
                Lb_Contenu.Items.Clear();

                // Liste des fichiers du dossier
                string[] fichiers = Directory.GetFiles(dataDirectoryPath);

                // Ajoutez les noms des fichiers dans la liste
                foreach (string fichier in fichiers)
                {
                    Lb_Contenu.Items.Add(Path.GetFileName(fichier));
                }
            }
            else
            {
                MessageBox.Show("Le dossier spécifié n'existe pas.", "Erreur", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void Lb_Contenu_DrawItem(object sender, DrawItemEventArgs e)
        {
            //if (e.Index >= 0)
            //{
            //    e.DrawBackground();

            //    // Votre logique de dessin ici
            //    string itemText = Lb_Contenu.Items[e.Index].ToString();
            //    DrawButton(e, itemText);
            //    e.DrawFocusRectangle();
            //}
        }

        //private void DrawButton(DrawItemEventArgs e, string buttonText)
        //{
        //    // Définissez les propriétés du bouton, par exemple, la couleur de fond, la police, etc.
        //    // Vous pouvez également utiliser des bibliothèques de dessin plus avancées pour plus de personnalisation.

        //    using (Brush brush = new SolidBrush(e.ForeColor))
        //    {
        //        e.Graphics.DrawString(buttonText, e.Font, brush, e.Bounds, StringFormat.GenericDefault);
        //    }
        //}
        private void DrawButton(DrawItemEventArgs e, string buttonText)
        {
            //// Définir la couleur de fond du bouton (rose)
            //using (Brush buttonBrush = new SolidBrush(Color.LightPink))
            //{
            //    e.Graphics.FillRectangle(buttonBrush, e.Bounds);
            //}

            //// Définir la police de type caligraphique
            //using (Font caligraphicFont = new Font("Segoe Script", 12, FontStyle.Regular))  // Choisissez une police caligraphique qui est installée sur votre système
            //{
            //    // Définir la couleur du texte (noir)
            //    using (Brush textBrush = new SolidBrush(Color.Black))
            //    {
            //        // Centrer le texte dans le bouton
            //        StringFormat stringFormat = new StringFormat();
            //        stringFormat.Alignment = StringAlignment.Center;
            //        stringFormat.LineAlignment = StringAlignment.Center;

            //        // Dessiner le texte sur le bouton
            //        e.Graphics.DrawString(buttonText, caligraphicFont, textBrush, e.Bounds, stringFormat);
            //    }
            //}
        }


    }
}