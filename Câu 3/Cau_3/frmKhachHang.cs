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

namespace Cau_3
{
    public partial class frmKhachHang : Form
    {
        string connStr = "Data Source=THONGNGUYEN; Initial Catalog=QuanLyMaySP; Integrated Security=true";
        SqlConnection conn = null;
        // LoaiKH
        SqlDataAdapter daLoaiKH = null;
        DataTable dtLoaiKH = new DataTable();
        // Khach Hang
        SqlDataAdapter daKhachHang = null;
        DataTable dtKhachHang = new DataTable();
        // Them dataview
        DataView dtvKhachHang = null;
        public frmKhachHang()
        {
            InitializeComponent();
        }
        void LoadDaTa()
        {
            try
            {
                // Thiết lập kết nối
                conn = new SqlConnection(connStr);
                if (conn.State == ConnectionState.Open)
                    conn.Close();
                conn.Open();
                // Tao adapter de do du lieu vao data table
                daLoaiKH = new SqlDataAdapter("Select * from LoaiKH", conn);
                dtLoaiKH.Clear();
                daLoaiKH.Fill(dtLoaiKH);
                // Cho dữ liệu vào ComboBox trước
                cboLoaiKH.DataSource = dtLoaiKH;
                cboLoaiKH.DisplayMember = "TenLoai";
                cboLoaiKH.ValueMember = "MaLoaiKH";
                cboLoaiKH.Text = "All";
                // Trong dgvKhachHang
                MaLoaiKH.DataSource = dtLoaiKH;
                MaLoaiKH.DisplayMember = "TenLoai";
                MaLoaiKH.ValueMember = "MaLoaiKH";
                // Dua du lieu vao Dgv
                daKhachHang = new SqlDataAdapter("Select * from Khach", conn);
                dtKhachHang.Clear();
                daKhachHang.Fill(dtKhachHang);
                // Chuyen tu data table vao data view
                dtvKhachHang = new DataView(dtKhachHang);
                // Gan vao dgv
                dgvKhachHang.DataSource = dtvKhachHang;
                txtSoKH.Text = dtvKhachHang.Count.ToString();


            }
            catch (SqlException)
            {
                MessageBox.Show("Lỗi!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void frmKhachHang_Load(object sender, EventArgs e)
        {
            LoadDaTa();
        }

        private void btnReload_Click(object sender, EventArgs e)
        {
            dtvKhachHang.RowFilter = "";
            dgvKhachHang.DataSource = dtvKhachHang;
            txtSoKH.Text = dtvKhachHang.Count.ToString();
            cboLoaiKH.Text = "All";
        }

        private void btnTroVe_Click(object sender, EventArgs e)
        {
            DialogResult tl = MessageBox.Show("Bạn muốn thoát?", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (tl == DialogResult.OK)
                Application.Exit();
        }



        private void btnOK_Click(object sender, EventArgs e)
        {
            dtvKhachHang.RowFilter = "MaLoaiKH='" + cboLoaiKH.SelectedValue.ToString() + "'";
            dgvKhachHang.DataSource = dtvKhachHang;
            txtSoKH.Text = dtvKhachHang.Count.ToString();
        }
    }
}
