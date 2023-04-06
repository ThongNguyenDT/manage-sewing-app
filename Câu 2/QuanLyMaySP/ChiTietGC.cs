using System.Data;
using System.Data.SqlClient;
using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace QuanLyMaySP
{
    public partial class ChiTietGC : Form
    {
        string strConnectionString = "Data Source=(local);" +
            "Initial Catalog=QuanLyMaySP;" +
            "Integrated Security=True";

        SqlConnection conn = null;
        SqlDataAdapter daHd = null;
        DataTable dtHD = null;
        SqlDataAdapter daSP = null;
        DataTable dtSP = null;
        SqlDataAdapter daCV = null;
        DataTable dtCV = null;
        SqlDataAdapter daTho = null;
        DataTable dtTho = null;
        SqlDataAdapter daCTHD = null;
        DataTable dtCTHD = null;
        bool Them = false;
        public ChiTietGC()
        {
            InitializeComponent();
        }

        void LoadData()
        {
            cbCV.ResetText();
            cbTho.ResetText();
            cbSP.ResetText();
            txbHD.ResetText();
            dataGridView1.Enabled = true;
            // Không cho thao tác trên các nút Lưu / Hủy 
            btnLuu.Enabled = false;
            btnHuy.Enabled = false;
            // Cho thao tác trên các nút Thêm / Sửa / Xóa / Thoát 
            btnThem.Enabled = true;
            btnSua.Enabled = true;
            btnXoa.Enabled = true;
            panel1.Enabled = false;
            try
            {
                conn = new SqlConnection(strConnectionString);
                daHd = new SqlDataAdapter("SELECT * FROM HOPDONGGIACONG", conn);
                dtHD = new DataTable();
                daHd.Fill(dtHD);
                soHDCV.DataSource = dtHD;
                soHDCV.DisplayMember = "SoHDGD";
                soHDCV.ValueMember = "SoHDGD";

                daSP = new SqlDataAdapter("select * from sanpham", conn);
                dtSP = new DataTable();
                daSP.Fill(dtSP);
                MaSanPham.DataSource = dtSP;
                MaSanPham.DisplayMember = "TenSanpham";
                MaSanPham.ValueMember = "MaSanPham";

                daCV = new SqlDataAdapter("select * From Congviec", conn);
                dtCV = new DataTable();
                daCV.Fill(dtCV);
                MaCV.DataSource = dtCV;
                MaCV.DisplayMember = "TenCongViec";
                MaCV.ValueMember = "MaCV";

                daTho = new SqlDataAdapter("select * from tho", conn);
                dtTho = new DataTable();
                daTho.Fill(dtTho);
                MaTho.DataSource = dtTho;
                MaTho.DisplayMember = "HoTen";
                MaTho.ValueMember = "MaTho";

                daCTHD = new SqlDataAdapter("select * from Chitietgc", conn);
                dtCTHD = new DataTable();
                daCTHD.Fill(dtCTHD);
                dataGridView1.DataSource = dtCTHD;
            }
            catch (Exception)
            {

                MessageBox.Show("Không lấy được nội dung trong table. Lỗi rồi!!!");

            }
        }

        private void ChiTietGC_Load(object sender, EventArgs e)
        {
            LoadData();
            AllocConsole();
        }
        [DllImport("kernel32.dll", SetLastError = true)]
        [return: MarshalAs(UnmanagedType.Bool)]
        static extern bool AllocConsole();
        private void dataGridView1_DataError(object sender, DataGridViewDataErrorEventArgs e)
        {
            if (e.Exception.Message == "DataGridViewComboBoxCell value is not valid")
            {
                object value = dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex].Value;
                if (!((DataGridViewComboBoxColumn)dataGridView1.Columns[e.ColumnIndex]).Items.Contains(value))
                {
                    ((DataGridViewComboBoxColumn)dataGridView1.Columns[e.ColumnIndex]).Items.Add(value);
                    e.ThrowException = false;
                }
            }
        }

        private void btnrReload_Click(object sender, EventArgs e)
        {
            LoadData();
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            // Khai báo biến traloi 
            DialogResult traloi;
            // Hiện hộp thoại hỏi đáp 
            traloi = MessageBox.Show("Chắc xóa không?", "Trả lời",
            MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            // Kiểm tra có nhắp chọn nút Ok không? 
            if (traloi == DialogResult.OK)
            {
                // Mở kết nối 
                if (conn.State == ConnectionState.Open)
                    conn.Close();
                conn.Open();
                try
                {
                    // Thực hiện lệnh 
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = conn;
                    cmd.CommandType = CommandType.Text;
                    // Lấy thứ tự record hiện hành 
                    int r = dataGridView1.CurrentCell.RowIndex;
                    // Lấy MaKH của record hiện hành 
                    string strMAKH =
                    dataGridView1.Rows[r].Cells[0].Value.ToString();
                    // Viết câu lệnh SQL 
                    cmd.CommandText =
                        "Delete From chitietGD Where SoHDGC = "
                        + strMAKH + "'";
                    cmd.CommandType = CommandType.Text;
                    // Thực hiện câu lệnh SQL 
                    cmd.ExecuteNonQuery();
                    // Cập nhật lại DataGridView 
                    LoadData();
                    // Thông báo 
                    MessageBox.Show("Đã xóa xong!");
                }
                catch (SqlException)
                {
                    MessageBox.Show("Không xóa được. Lỗi rồi!!!");
                }
                finally
                {
                    // Đóng kết nối 
                    conn.Close();
                }
            }
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            Them = true;
            txbHD.Enabled = true;
            // Xóa trống các đối tượng trong Panel 
            cbCV.ResetText();
            cbTho.ResetText();
            cbSP.ResetText();
            txbHD.ResetText();
            txb_Tien.ResetText();
            // Cho thao tác trên các nút Lưu / Hủy / Panel 
            btnLuu.Enabled = true;
            btnHuy.Enabled = true;
            dataGridView1.Enabled = true;
            // Không cho thao tác trên các nút Thêm / Xóa / Thoát 
            btnThem.Enabled = false;
            btnSua.Enabled = false;
            btnXoa.Enabled = false;
            panel1.Enabled = true;
            // Đưa dữ liệu lên ComboBox 

            cbSP.DataSource = dtSP;
            cbSP.DisplayMember = "TenSanpham";
            cbSP.ValueMember = "MaSanPham";

            cbCV.DataSource = dtCV;
            cbCV.DisplayMember = "TenCongViec";
            cbCV.ValueMember = "MaCV";

            cbTho.DataSource = dtTho;
            cbTho.DisplayMember = "HoTen";
            cbTho.ValueMember = "MaTho";
            // Đưa con trỏ đến TextField txtMaKH 
            txbHD.Focus();
        }

        private void btnHuy_Click(object sender, EventArgs e)
        {
            cbCV.ResetText();
            cbTho.ResetText();
            cbSP.ResetText();
            txbHD.ResetText();
            txb_Tien.ResetText();
            // Cho thao tác trên các nút Thêm / Sửa / Xóa / Thoát 
            btnThem.Enabled = true;
            btnSua.Enabled = true;
            btnXoa.Enabled = true;
            // Không cho thao tác trên các nút Lưu / Hủy / Panel 
            btnLuu.Enabled = false;
            btnHuy.Enabled = false;
            dataGridView1.Enabled = false;
            panel1.Enabled = false;
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {

            if (!txbHD.Text.Equals(""))
            {
                // Mở kết nối 
                if (conn.State == ConnectionState.Open)
                    conn.Close();
                conn.Open();
                // Thêm dữ liệu 
                if (Them)
                {
                    try
                    {
                        // Thực hiện lệnh 
                        SqlCommand cmd = new SqlCommand();
                        cmd.Connection = conn;
                        cmd.CommandType = CommandType.Text;
                        // Lệnh Insert InTo 
                        cmd.CommandText = "Insert Into chitietGC Values('" +
                        txbHD.Text + "', '" +
                        cbSP.SelectedValue + "','" +
                        cbCV.SelectedValue + "','" +
                        cbTho.SelectedValue +
                        "','" + txb_Tien.Text + "')";
                        Console.WriteLine(cmd.CommandText);
                        cmd.ExecuteNonQuery();
                        // Load lại dữ liệu trên DataGridView 
                        LoadData();
                        // Thông báo 
                        MessageBox.Show("Đã thêm xong!");
                    }
                    catch (SqlException)
                    {
                        MessageBox.Show("Không thêm được. Lỗi rồi!");
                    }

                }
                else // sua doi
                {
                    try
                    {
                        // Thực hiện lệnh 
                        SqlCommand cmd = new SqlCommand();
                        cmd.Connection = conn;
                        cmd.CommandType = CommandType.Text;
                        // Thứ tự dòng hiện hành 
                        int r = dataGridView1.CurrentCell.RowIndex;
                        // MaKH hiện hành 
                        string strMAKH =
                        dataGridView1.Rows[r].Cells[0].Value.ToString();
                        // Câu lệnh SQL 
                        cmd.CommandText = "Update chitietGC Set soHDGC='" +
                        txbHD + "', masanpham='" +
                        cbSP.SelectedValue + "', maCV='" +
                        cbCV.SelectedValue.ToString() + "', MaTho='" +
                        cbTho.SelectedValue.ToString() + "', MaTho='" +
                       txb_Tien.Text + "' Where soHDGD='" +
                        strMAKH + "'";
                        // Cập nhật 
                        cmd.ExecuteNonQuery();
                        // Load lại dữ liệu trên DataGridView 
                        LoadData();
                        // Thông báo 
                        MessageBox.Show("Đã sửa xong!");
                    }
                    catch (SqlException)
                    {
                        MessageBox.Show("Không sửa được. Lỗi rồi!");
                    }
                }
                // Đóng kết nối 
                conn.Close();
            }
            else
            {
                MessageBox.Show("Mã KH chưa có. Lỗi rồi!");
                //txtMaKH.Focus();
            }
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            Them = false;
            dataGridView1_CellClick(null, null);
            // Cho thao tác trên các nút Lưu / Hủy / Panel 
            panel1.Enabled = true;
            btnLuu.Enabled = true;
            btnHuy.Enabled = true;
            // Không cho thao tác trên các nút Thêm / Xóa / Thoát 
            btnThem.Enabled = false;
            btnSua.Enabled = false;
            btnXoa.Enabled = false;
            // Đưa con trỏ đến TextField txtTenCty            
            txbHD.Enabled = false;
            cbCV.Enabled = false;
            cbSP.Enabled = false;
            cbCV.Focus();
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            cbSP.DataSource = dtSP;
            cbSP.DisplayMember = "TenSanpham";
            cbSP.ValueMember = "MaSanPham";

            cbCV.DataSource = dtCV;
            cbCV.DisplayMember = "TenCongViec";
            cbCV.ValueMember = "MaCV";

            cbTho.DataSource = dtTho;
            cbTho.DisplayMember = "HoTen";
            cbTho.ValueMember = "MaTho";

            int r = dataGridView1.CurrentCell.RowIndex;
            txbHD.Text =
            dataGridView1.Rows[r].Cells[0].Value.ToString();
            cbSP.SelectedValue = dataGridView1.Rows[r].Cells[1].Value.ToString();
            cbCV.SelectedValue = dataGridView1.Rows[r].Cells[2].Value.ToString();
            cbTho.SelectedValue = dataGridView1.Rows[r].Cells[3].Value.ToString();
            txb_Tien.Text = dataGridView1.Rows[r].Cells[4].Value.ToString();
        }

        private void txbHD_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == 13) // an enter
            {
                Kiemtra();
            }
        }

        void Kiemtra()
        {
            if (!txbHD.Text.Trim().Equals(""))
            {
                // Mở kết nối 
                if (conn.State == ConnectionState.Open)
                    conn.Close();
                conn.Open();
                // Thêm dữ liệu 
                try
                {
                    // Thực hiện lệnh 
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = conn;
                    cmd.CommandType = CommandType.Text;
                    // Lệnh Kiểm tra MÃ KH tồn tại 
                    cmd.CommandText = "Select Count(*) From KhachHang Where MaKH='" +
                    txbHD.Text.Trim() + "'";
                    int k = Int32.Parse(cmd.ExecuteScalar().ToString());
                    if (k > 0)
                    {
                        MessageBox.Show("Mã KH tồn tai. Nhập Mã KH khác !");
                        txbHD.ResetText();
                        txbHD.Focus();
                    }
                    else
                    {
                        cbSP.Focus();
                    }
                }
                catch (SqlException)
                {
                    MessageBox.Show("Lỗi rồi!");
                }
                finally
                {
                    conn.Close();
                }
            }
            else
            {
                MessageBox.Show("Phải nhập Mã KH!!", "Lỗi",
                    MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
    }
}
