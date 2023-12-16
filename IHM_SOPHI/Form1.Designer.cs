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
            Contenu = new ListBox();
            P_Preview = new Panel();
            P_PreviewButton = new Panel();
            TB_SoundVolume = new TrackBar();
            B_Play = new Button();
            B_Pause = new Button();
            B_Stop = new Button();
            B_Rewind = new Button();
            B_Sound = new Button();
            B_Send = new Button();
            ((System.ComponentModel.ISupportInitialize)Logo).BeginInit();
            P_PreviewButton.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)TB_SoundVolume).BeginInit();
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
            // Contenu
            // 
            Contenu.FormattingEnabled = true;
            Contenu.ItemHeight = 25;
            Contenu.Location = new Point(0, 81);
            Contenu.Name = "Contenu";
            Contenu.Size = new Size(328, 454);
            Contenu.TabIndex = 5;
            // 
            // P_Preview
            // 
            P_Preview.BorderStyle = BorderStyle.FixedSingle;
            P_Preview.Location = new Point(334, 81);
            P_Preview.Name = "P_Preview";
            P_Preview.Size = new Size(887, 454);
            P_Preview.TabIndex = 6;
            // 
            // P_PreviewButton
            // 
            P_PreviewButton.BorderStyle = BorderStyle.FixedSingle;
            P_PreviewButton.Controls.Add(TB_SoundVolume);
            P_PreviewButton.Controls.Add(B_Play);
            P_PreviewButton.Controls.Add(B_Pause);
            P_PreviewButton.Controls.Add(B_Stop);
            P_PreviewButton.Controls.Add(B_Rewind);
            P_PreviewButton.Controls.Add(B_Sound);
            P_PreviewButton.Location = new Point(334, 535);
            P_PreviewButton.Name = "P_PreviewButton";
            P_PreviewButton.Size = new Size(887, 46);
            P_PreviewButton.TabIndex = 0;
            // 
            // TB_SoundVolume
            // 
            TB_SoundVolume.Location = new Point(730, -1);
            TB_SoundVolume.Maximum = 100;
            TB_SoundVolume.Name = "TB_SoundVolume";
            TB_SoundVolume.Size = new Size(156, 69);
            TB_SoundVolume.TabIndex = 7;
            TB_SoundVolume.TickFrequency = 5;
            TB_SoundVolume.TickStyle = TickStyle.Both;
            // 
            // B_Play
            // 
            B_Play.Location = new Point(-1, 5);
            B_Play.Name = "B_Play";
            B_Play.Size = new Size(112, 34);
            B_Play.TabIndex = 7;
            B_Play.Text = "Play";
            B_Play.UseVisualStyleBackColor = true;
            // 
            // B_Pause
            // 
            B_Pause.Location = new Point(129, 5);
            B_Pause.Name = "B_Pause";
            B_Pause.Size = new Size(112, 34);
            B_Pause.TabIndex = 8;
            B_Pause.Text = "Pause";
            B_Pause.UseVisualStyleBackColor = true;
            // 
            // B_Stop
            // 
            B_Stop.Location = new Point(264, 5);
            B_Stop.Name = "B_Stop";
            B_Stop.Size = new Size(112, 34);
            B_Stop.TabIndex = 9;
            B_Stop.Text = "Stop";
            B_Stop.UseVisualStyleBackColor = true;
            // 
            // B_Rewind
            // 
            B_Rewind.Location = new Point(395, 5);
            B_Rewind.Name = "B_Rewind";
            B_Rewind.Size = new Size(112, 34);
            B_Rewind.TabIndex = 10;
            B_Rewind.Text = "Rewind";
            B_Rewind.UseVisualStyleBackColor = true;
            // 
            // B_Sound
            // 
            B_Sound.Location = new Point(618, 3);
            B_Sound.Name = "B_Sound";
            B_Sound.Size = new Size(112, 34);
            B_Sound.TabIndex = 11;
            B_Sound.Text = "Sound";
            B_Sound.UseVisualStyleBackColor = true;
            // 
            // B_Send
            // 
            B_Send.Location = new Point(0, 541);
            B_Send.Name = "B_Send";
            B_Send.Size = new Size(328, 34);
            B_Send.TabIndex = 7;
            B_Send.Text = "Send";
            B_Send.UseVisualStyleBackColor = true;
            // 
            // IHM_SOPHI
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1365, 602);
            Controls.Add(B_Send);
            Controls.Add(P_PreviewButton);
            Controls.Add(P_Preview);
            Controls.Add(Contenu);
            Controls.Add(B_Live);
            Controls.Add(B_Objet3D);
            Controls.Add(B_Video);
            Controls.Add(B_Image);
            Controls.Add(Logo);
            Name = "IHM_SOPHI";
            Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)Logo).EndInit();
            P_PreviewButton.ResumeLayout(false);
            P_PreviewButton.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)TB_SoundVolume).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private PictureBox Logo;
        private Button B_Image;
        private Button B_Video;
        private Button B_Objet3D;
        private Button B_Live;
        private ListBox Contenu;
        private Panel P_Preview;
        private Panel P_PreviewButton;
        private Button B_Rewind;
        private Button B_Sound;
        private Button B_Play;
        private Button B_Pause;
        private Button B_Stop;
        private TrackBar TB_SoundVolume;
        private Button B_Send;
    }
}