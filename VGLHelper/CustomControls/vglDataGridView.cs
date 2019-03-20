using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace VGLHelper.CustomControls
{
    public class vglDataGridView : DataGridView
    {
        protected override bool ProcessDialogKey(Keys keyData)
        {
            //if (keyData == Keys.Enter)
            //{
            //    EndEdit();
            //    int icolumn = CurrentCell.ColumnIndex;
            //    int irow = CurrentCell.RowIndex;
            //    int columnCount = GetVisibleColumnCount();

            //    if (icolumn == columnCount)
            //    {
            //        //grdUom.Rows.Add();
            //        try
            //        {
            //            CurrentCell = this[FirstDisplayedScrollingColumnIndex, irow + 1];
            //            BeginEdit(true);
            //        }
            //        catch (ArgumentOutOfRangeException)
            //        {
            //        }
            //    }
            //    else
            //    {
            //        CurrentCell = this[icolumn + 1, irow];
            //        BeginEdit(true);
            //    }
            //    return true;
            //}
            //else
            //    return base.ProcessDialogKey(keyData);
            if (keyData == Keys.Enter)
            {
                EndEdit();
                return SelectNextCell();
            }

            return base.ProcessDialogKey(keyData);
        }

        private bool SelectNextCell()
        {
            int row = CurrentCell.RowIndex;
            int column = CurrentCell.ColumnIndex;
            DataGridViewCell startingCell = CurrentCell;

            do
            {
                column++;
                if (column == Columns.Count)
                {
                    column = 0;
                    row++;
                }
                if (row == Rows.Count)
                    row = 0;
            } while ((this[column, row].ReadOnly || !this[column, row].Visible) && this[column, row] != startingCell);

            if (this[column, row] == startingCell)
                return false;

            try
            {
                CurrentCell = this[column, row];
            }
            catch (InvalidOperationException ex)
            {
                MessageBox.Show(ex.Message);
            }

            BeginEdit(true);
            return true;
        }

        protected override void OnRowPostPaint(DataGridViewRowPostPaintEventArgs e)
        {
            base.OnRowPostPaint(e);

            // Current row record
            string rowNumber = (e.RowIndex + 1).ToString();

            // Format row based on number of records displayed by using leading zeros
            while (rowNumber.Length < RowCount.ToString().Length)
                rowNumber = "0" + rowNumber;

            // Position text
            SizeF size = e.Graphics.MeasureString(rowNumber, Etcetera.GetFont(Etcetera.FontStyles.ROBOTO_REGULAR_12));
            if (RowHeadersWidth < Convert.ToInt32(size.Width + 20))
                RowHeadersWidth = Convert.ToInt32(size.Width + 20);

            // Draw row number
            e.Graphics.DrawString(rowNumber, Font, Brushes.White, e.RowBounds.Location.X + 15,
                e.RowBounds.Location.Y + ((e.RowBounds.Height - size.Height) / 2));
        }

        private int GetVisibleColumnCount()
        {
            int count = -1;
            foreach (DataGridViewColumn column in Columns)
            {
                if (column.Visible)
                {
                    count++;
                }
            }

            return count;
        }
    }
}