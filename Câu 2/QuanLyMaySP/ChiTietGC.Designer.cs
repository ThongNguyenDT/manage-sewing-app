namespace QuanLyMaySP
{
    partial class ChiTietGC
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
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
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            panel1 = new Panel();
            cbTho = new ComboBox();
            cbCV = new ComboBox();
            cbSP = new ComboBox();
            txbHD = new TextBox();
            txb_Tien = new TextBox();
            label5 = new Label();
            label4 = new Label();
            label3 = new Label();
            label2 = new Label();
            label1 = new Label();
            dataGridView1 = new DataGridView();
            soHDCV = new DataGridViewComboBoxColumn();
            MaSanPham = new DataGridViewComboBoxColumn();
            MaCV = new DataGridViewComboBoxColumn();
            MaTho = new DataGridViewComboBoxColumn();
            TienTraTho = new DataGridViewTextBoxColumn();
            btnHuy = new Button();
            btnLuu = new Button();
            btnSua = new Button();
            btnXoa = new Button();
            btnThem = new Button();
            btnrReload = new Button();
            panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)dataGridView1).BeginInit();
            SuspendLayout();
            // 
            // panel1
            // 
            panel1.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            panel1.Controls.Add(cbTho);
            panel1.Controls.Add(cbCV);
            panel1.Controls.Add(cbSP);
            panel1.Controls.Add(txbHD);
            panel1.Controls.Add(txb_Tien);
            panel1.Controls.Add(label5);
            panel1.Controls.Add(label4);
            panel1.Controls.Add(label3);
            panel1.Controls.Add(label2);
            panel1.Controls.Add(label1);
            panel1.Location = new Point(1, 2);
            panel1.Name = "panel1";
            panel1.Size = new Size(667, 142);
            panel1.TabIndex = 1;
            // 
            // cbTho
            // 
            cbTho.FormattingEnabled = true;
            cbTho.Location = new Point(436, 25);
            cbTho.Name = "cbTho";
            cbTho.Size = new Size(192, 23);
            cbTho.TabIndex = 19;
            // 
            // cbCV
            // 
            cbCV.FormattingEnabled = true;
            cbCV.Location = new Point(120, 105);
            cbCV.Name = "cbCV";
            cbCV.Size = new Size(192, 23);
            cbCV.TabIndex = 18;
            // 
            // cbSP
            // 
            cbSP.FormattingEnabled = true;
            cbSP.Location = new Point(120, 64);
            cbSP.Name = "cbSP";
            cbSP.Size = new Size(192, 23);
            cbSP.TabIndex = 17;
            // 
            // txbHD
            // 
            txbHD.Location = new Point(120, 25);
            txbHD.Name = "txbHD";
            txbHD.Size = new Size(121, 23);
            txbHD.TabIndex = 16;
            txbHD.KeyPress += txbHD_KeyPress;
            // 
            // txb_Tien
            // 
            txb_Tien.Location = new Point(436, 64);
            txb_Tien.Name = "txb_Tien";
            txb_Tien.Size = new Size(195, 23);
            txb_Tien.TabIndex = 9;
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new Point(342, 67);
            label5.Name = "label5";
            label5.Size = new Size(73, 15);
            label5.TabIndex = 8;
            label5.Text = "Tiền Trả Thợ:";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(342, 28);
            label4.Name = "label4";
            label4.Size = new Size(88, 15);
            label4.TabIndex = 6;
            label4.Text = "Họ  Và Tên Thợ:";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(30, 108);
            label3.Name = "label3";
            label3.Size = new Size(85, 15);
            label3.TabIndex = 4;
            label3.Text = "Tên Công Việc:";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(30, 67);
            label2.Name = "label2";
            label2.Size = new Size(84, 15);
            label2.TabIndex = 2;
            label2.Text = "Tên Sản Phẩm:";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(30, 28);
            label1.Name = "label1";
            label1.Size = new Size(59, 15);
            label1.TabIndex = 0;
            label1.Text = "Số HDGD:";
            // 
            // dataGridView1
            // 
            dataGridView1.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridView1.Columns.AddRange(new DataGridViewColumn[] { soHDCV, MaSanPham, MaCV, MaTho, TienTraTho });
            dataGridView1.Location = new Point(1, 186);
            dataGridView1.Name = "dataGridView1";
            dataGridView1.RowTemplate.Height = 25;
            dataGridView1.Size = new Size(668, 262);
            dataGridView1.TabIndex = 2;
            dataGridView1.CellClick += dataGridView1_CellClick;
            dataGridView1.DataError += dataGridView1_DataError;
            // 
            // soHDCV
            // 
            soHDCV.DataPropertyName = "soHDGC";
            soHDCV.HeaderText = "SoHDCV";
            soHDCV.Name = "soHDCV";
            soHDCV.Width = 75;
            // 
            // MaSanPham
            // 
            MaSanPham.DataPropertyName = "MaSanPham";
            MaSanPham.HeaderText = "TenSanPham";
            MaSanPham.Name = "MaSanPham";
            MaSanPham.Width = 150;
            // 
            // MaCV
            // 
            MaCV.DataPropertyName = "MaCV";
            MaCV.HeaderText = "TenCongViec";
            MaCV.Name = "MaCV";
            MaCV.Width = 150;
            // 
            // MaTho
            // 
            MaTho.DataPropertyName = "MaTho";
            MaTho.HeaderText = "TenTho";
            MaTho.Name = "MaTho";
            MaTho.Resizable = DataGridViewTriState.True;
            MaTho.Width = 150;
            // 
            // TienTraTho
            // 
            TienTraTho.DataPropertyName = "TienTraTho";
            TienTraTho.HeaderText = "TienTraTho";
            TienTraTho.Name = "TienTraTho";
            TienTraTho.Resizable = DataGridViewTriState.True;
            TienTraTho.SortMode = DataGridViewColumnSortMode.NotSortable;
            // 
            // btnHuy
            // 
            btnHuy.Location = new Point(545, 150);
            btnHuy.Name = "btnHuy";
            btnHuy.Size = new Size(75, 23);
            btnHuy.TabIndex = 25;
            btnHuy.Text = "Hủy";
            btnHuy.UseVisualStyleBackColor = true;
            btnHuy.Click += btnHuy_Click;
            // 
            // btnLuu
            // 
            btnLuu.Location = new Point(449, 150);
            btnLuu.Name = "btnLuu";
            btnLuu.Size = new Size(75, 23);
            btnLuu.TabIndex = 24;
            btnLuu.Text = "Lưu";
            btnLuu.UseVisualStyleBackColor = true;
            btnLuu.Click += btnLuu_Click;
            // 
            // btnSua
            // 
            btnSua.Location = new Point(331, 150);
            btnSua.Name = "btnSua";
            btnSua.Size = new Size(75, 23);
            btnSua.TabIndex = 23;
            btnSua.Text = "Sửa";
            btnSua.UseVisualStyleBackColor = true;
            btnSua.Click += btnSua_Click;
            // 
            // btnXoa
            // 
            btnXoa.Location = new Point(250, 150);
            btnXoa.Name = "btnXoa";
            btnXoa.Size = new Size(75, 23);
            btnXoa.TabIndex = 22;
            btnXoa.Text = "Xóa";
            btnXoa.UseVisualStyleBackColor = true;
            btnXoa.Click += btnXoa_Click;
            // 
            // btnThem
            // 
            btnThem.Location = new Point(171, 150);
            btnThem.Name = "btnThem";
            btnThem.Size = new Size(75, 23);
            btnThem.TabIndex = 21;
            btnThem.Text = "Thêm";
            btnThem.UseVisualStyleBackColor = true;
            btnThem.Click += btnThem_Click;
            // 
            // btnrReload
            // 
            btnrReload.Location = new Point(52, 150);
            btnrReload.Name = "btnrReload";
            btnrReload.Size = new Size(75, 23);
            btnrReload.TabIndex = 20;
            btnrReload.Text = "Reload";
            btnrReload.UseVisualStyleBackColor = true;
            btnrReload.Click += btnrReload_Click;
            // 
            // ChiTietGC
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(668, 450);
            Controls.Add(btnHuy);
            Controls.Add(dataGridView1);
            Controls.Add(btnLuu);
            Controls.Add(panel1);
            Controls.Add(btnSua);
            Controls.Add(btnXoa);
            Controls.Add(btnrReload);
            Controls.Add(btnThem);
            Name = "ChiTietGC";
            Text = "ChiTietGC";
            Load += ChiTietGC_Load;
            panel1.ResumeLayout(false);
            panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)dataGridView1).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private Panel panel1;
        private TextBox txb_Tien;
        private Label label5;
        private Label label4;
        private Label label3;
        private Label label2;
        private Label label1;
        private DataGridView dataGridView1;
        private ComboBox cbTho;
        private ComboBox cbCV;
        private ComboBox cbSP;
        private TextBox txbHD;
        private DataGridViewComboBoxColumn soHDCV;
        private DataGridViewComboBoxColumn MaSanPham;
        private DataGridViewComboBoxColumn MaCV;
        private DataGridViewComboBoxColumn MaTho;
        private DataGridViewTextBoxColumn TienTraTho;
        private Button btnHuy;
        private Button btnLuu;
        private Button btnSua;
        private Button btnXoa;
        private Button btnThem;
        private Button btnrReload;
    }
}