using GTCosmeticsReWork.Properties;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Drawing.Text;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using VGLHelper;

public static class ExtensionMethods
{
    private const string PRIMARY_COLOR = "#1976d2";
    private const string PRIMARY_COLOR_LIGHT = "#63a4ff";
    private const string PRIMARY_COLOR_DARK = "#004ba0";

    private const string SECONDARY_COLOR = "#00838f";
    private const string SECONDARY_COLOR_LIGHT = "#4fb3bf";
    private const string SECONDARY_COLOR_DARK = "#005662";

    private const string ACCENT = "#ffffff";

    private static readonly PrivateFontCollection privateFontCollection = new PrivateFontCollection();

    public static readonly Font SEGOE_UI_REGULAR_12 = new Font("Segoe UI", 12f);
    public static readonly Font SEGOE_UI_BOLD_12 = new Font("Segoe UI", 12f, FontStyle.Bold);
    public static readonly Font CENTURY_GOTHIC_12 = new Font("Century Gothic", 12f);
    public static readonly Font CENTURY_GOTHIC_15 = new Font("Century Gothic", 15f);
    public static readonly Font ROBOTO_REGULAR_12 = new Font("Roboto", 12f);
    public static readonly Font ROBOTO_BOLD_12 = new Font("Roboto", 12f, FontStyle.Bold);

    [DllImport("gdi32.dll")]
    private static extern IntPtr AddFontMemResourceEx(IntPtr pbFont, uint cbFont, IntPtr pvd, [In] ref uint pcFonts);

    public const int WM_NCLBUTTONDOWN = 0xA1;
    public const int HT_CAPTION = 0x2;

    [DllImportAttribute("user32.dll")]
    public static extern int SendMessage(IntPtr hWnd, int Msg, int wParam, int lParam);

    [DllImportAttribute("user32.dll")]
    public static extern bool ReleaseCapture();

    public static string PrimaryColor
    {
        get { return PRIMARY_COLOR; }
    }

    public enum FontStyles : byte
    {
        ROBOTO_REGULAR_12,
        ROBOTO_REGULAR_10,
        CENTURY_GOTHIC_15,
        CENTURY_GOTHIC_12,
        SEGOE_UI_REGULAR_12,
        SEGOE_UI_BOLD_12
    }

    public static void DoubleBuffered(this object obj, bool setting)
    {
        Type objType = obj.GetType();
        PropertyInfo pi = objType.GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic);
        pi.SetValue(obj, setting, null);
    }

    public static void Title_MouseMove(object sender, MouseEventArgs e)
    {
        var Handle = sender as Label;

        if (e.Button == MouseButtons.Left)
        {
            ReleaseCapture();
            SendMessage(Handle.Parent.Parent.Handle, WM_NCLBUTTONDOWN, HT_CAPTION, 0);
        }
    }

    public static void AddDatagridViewRowHeaderNumber(object sender, DataGridViewRowPostPaintEventArgs e)
    {
        var dg = (DataGridView)sender;
        // Current row record
        string rowNumber = (e.RowIndex + 1).ToString();

        // Format row based on number of records displayed by using leading zeros
        while (rowNumber.Length < dg.RowCount.ToString().Length)
            rowNumber = "0" + rowNumber;

        // Position text
        SizeF size = e.Graphics.MeasureString(rowNumber, ROBOTO_REGULAR_12);
        if (dg.RowHeadersWidth < Convert.ToInt32(size.Width + 20))
            dg.RowHeadersWidth = Convert.ToInt32(size.Width + 20);

        // Use default system text brush
        Brush b = Brushes.White;

        // Draw row number
        e.Graphics.DrawString(rowNumber, dg.Font, b, e.RowBounds.Location.X + 15,
            e.RowBounds.Location.Y + ((e.RowBounds.Height - size.Height) / 2));
    }

    public static bool IsNumeric(this string s)
    {
        float output;
        return float.TryParse(s, out output);
    }

    public static bool IsEmptyOrNull(this string s)
    {
        return string.IsNullOrEmpty(s.Trim());
    }

    //public static bool AuthenticateLogin(string username, string password)
    //{
    //    using (var context = new dbSettingsEntities())
    //    {
    //        var users = context.sp_BASE_Login(username, password);
    //        bool flag = false;
    //        foreach (var user in users)
    //        {
    //            flag = true;
    //        }
    //        return flag;
    //    }
    //}

    public static void SetLabelTitle(this Label label)
    {
        label.Height = 40;
        label.Font = CENTURY_GOTHIC_15;
        label.BackColor = ColorTranslator.FromHtml(PRIMARY_COLOR_DARK);
        label.ForeColor = ColorTranslator.FromHtml(ACCENT);
        label.TextAlign = ContentAlignment.MiddleLeft;
        label.MouseMove += EventHandlers.Title_MouseMove;
    }

    public static void SetLabelAppearance(params Label[] labels)
    {
        foreach (Label label in labels)
        {
            label.Height = 40;
            label.Font = CENTURY_GOTHIC_15;
            label.BackColor = ColorTranslator.FromHtml(PRIMARY_COLOR_DARK);
            label.ForeColor = ColorTranslator.FromHtml(ACCENT);
            label.TextAlign = ContentAlignment.MiddleLeft;
        }
    }

    public static void SetButtonAppearance(params Button[] buttons)
    {
        foreach (Button button in buttons)
        {
            button.BackColor = ColorTranslator.FromHtml(SECONDARY_COLOR);
            button.ForeColor = ColorTranslator.FromHtml(ACCENT);
            button.FlatStyle = FlatStyle.Flat;
            button.FlatAppearance.BorderSize = 0;
        }
    }

    public static void SetButtonAppearanceAsClose(this Button button)
    {
        button.BackColor = ColorTranslator.FromHtml(PRIMARY_COLOR_DARK);
        button.ForeColor = ColorTranslator.FromHtml(ACCENT);
        button.FlatStyle = FlatStyle.Flat;
        button.FlatAppearance.BorderSize = 0;
        button.Paint += EventHandlers.xButton_Paint;
    }

    public static void SetGridAppearance(params DataGridView[] dataGridViews)
    {
        foreach (DataGridView datagridview in dataGridViews)
        {
            datagridview.BorderStyle = BorderStyle.None;
            datagridview.BackColor = ColorTranslator.FromHtml(PRIMARY_COLOR);
            datagridview.ColumnHeadersBorderStyle = DataGridViewHeaderBorderStyle.Single;
            datagridview.ColumnHeadersDefaultCellStyle.BackColor = ColorTranslator.FromHtml(PRIMARY_COLOR);
            datagridview.ColumnHeadersDefaultCellStyle.ForeColor = ColorTranslator.FromHtml(ACCENT);
            datagridview.CellBorderStyle = DataGridViewCellBorderStyle.SingleHorizontal;
            datagridview.DefaultCellStyle.SelectionBackColor = ColorTranslator.FromHtml(SECONDARY_COLOR);
            datagridview.DefaultCellStyle.SelectionForeColor = ColorTranslator.FromHtml(ACCENT);
            datagridview.RowsDefaultCellStyle.Padding = new Padding(10, 1, 10, 1);
            datagridview.RowsDefaultCellStyle.Font = new Font("Verdana", 12);
            datagridview.RowHeadersBorderStyle = DataGridViewHeaderBorderStyle.Single;
            datagridview.RowHeadersDefaultCellStyle.BackColor = ColorTranslator.FromHtml(PRIMARY_COLOR);
            datagridview.RowHeadersDefaultCellStyle.ForeColor = ColorTranslator.FromHtml(ACCENT);
            datagridview.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.EnableResizing;
            //datagridview.ColumnHeadersDefaultCellStyle.WrapMode = DataGridViewTriState.False;
            datagridview.RowTemplate.Height = 40;
            datagridview.ColumnHeadersHeight = 50;
            datagridview.BackgroundColor = ColorTranslator.FromHtml(ACCENT);
            datagridview.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.EnableResizing;
            datagridview.EnableHeadersVisualStyles = false;
            //datagridview.AllowUserToAddRows = false;
            datagridview.DoubleBuffered(true);
        }
    }

    public static void SetMenuStripAppearance(MenuStrip menuStrip)
    {
        menuStrip.BackColor = ColorTranslator.FromHtml(PRIMARY_COLOR_DARK);
        menuStrip.ForeColor = ColorTranslator.FromHtml(ACCENT);
        menuStrip.Font = CENTURY_GOTHIC_12;
        //menuStrip.Renderer = new ToolStripProfessionalRenderer(new CoreFrameworkLibrary.RendererColorTable());
        menuStrip.Renderer = new RendererToolStrip();
    }

    private static FontFamily LoadFont(byte[] fontResource)
    {
        int dataLength = fontResource.Length;
        IntPtr fontPtr = Marshal.AllocCoTaskMem(dataLength);
        Marshal.Copy(fontResource, 0, fontPtr, dataLength);

        uint cFonts = 0;
        AddFontMemResourceEx(fontPtr, (uint)fontResource.Length, IntPtr.Zero, ref cFonts);
        privateFontCollection.AddMemoryFont(fontPtr, dataLength);

        return privateFontCollection.Families.Last();
    }

    public static ComboBox SetComboBox(this ComboBox cb, DataTable source, string displayMember, string valueMember)
    {
        cb.DisplayMember = displayMember;
        cb.ValueMember = valueMember;
        cb.DataSource = source;
        cb.AutoCompleteSource = AutoCompleteSource.ListItems;
        cb.AutoCompleteMode = AutoCompleteMode.SuggestAppend;
        cb.SelectedIndex = -1;
        return cb;
    }

    public static DataGridViewComboBoxColumn SetDataGridViewComboBox(this DataGridViewComboBoxColumn cb, DataTable source, string displayMember, string valueMember)
    {
        cb.DisplayMember = displayMember;
        cb.ValueMember = valueMember;
        cb.DataSource = source;
        cb.DropDownWidth = 50;
        return cb;
    }
}