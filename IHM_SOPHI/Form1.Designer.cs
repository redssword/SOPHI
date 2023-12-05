namespace IHM_SOPHI
{
    partial class IHM_SOPHI
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(IHM_SOPHI));
            Logo = new PictureBox();
            B_Image = new Button();
            B_Video = new Button();
            B_Objet3D = new Button();
            B_Live = new Button();
            ((System.ComponentModel.ISupportInitialize)Logo).BeginInit();
            SuspendLayout();
            // 
            // Logo
            // 
            Logo.BackColor = SystemColors.Control;
            Logo.Image = (Image)resources.GetObject("Logo.Image");
            Logo.Location = new Point(0, 0);
            Logo.Name = "Logo";
            Logo.Size = new Size(195, 75);
            Logo.SizeMode = PictureBoxSizeMode.Zoom;
            Logo.TabIndex = 0;
            Logo.TabStop = false;
            // 
            // B_Image
            // 
            B_Image.Location = new Point(399, 0);
            B_Image.Name = "B_Image";
            B_Image.Size = new Size(194, 75);
            B_Image.TabIndex = 1;
            B_Image.Text = "Image";
            B_Image.UseVisualStyleBackColor = true;
            // 
            // B_Video
            // 
            B_Video.Anchor = AnchorStyles.Top;
            B_Video.Location = new Point(599, 0);
            B_Video.Name = "B_Video";
            B_Video.Size = new Size(194, 75);
            B_Video.TabIndex = 2;
            B_Video.Text = "Video";
            B_Video.UseVisualStyleBackColor = true;
            // 
            // B_Objet3D
            // 
            B_Objet3D.Anchor = AnchorStyles.Top;
            B_Objet3D.Location = new Point(799, 0);
            B_Objet3D.Name = "B_Objet3D";
            B_Objet3D.Size = new Size(194, 75);
            B_Objet3D.TabIndex = 3;
            B_Objet3D.Text = "Objet 3D";
            B_Objet3D.UseVisualStyleBackColor = true;
            // 
            // B_Live
            // 
            B_Live.Anchor = AnchorStyles.Top;
            B_Live.Location = new Point(999, 0);
            B_Live.Name = "B_Live";
            B_Live.Size = new Size(194, 75);
            B_Live.TabIndex = 4;
            B_Live.Text = "Live";
            B_Live.UseVisualStyleBackColor = true;
            // 
            // IHM_SOPHI
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1365, 592);
            Controls.Add(B_Live);
            Controls.Add(B_Objet3D);
            Controls.Add(B_Video);
            Controls.Add(B_Image);
            Controls.Add(Logo);
            Name = "IHM_SOPHI";
            Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)Logo).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private PictureBox Logo;
        private Button B_Image;
        private Button B_Video;
        private Button B_Objet3D;
        private Button B_Live;
    }
}