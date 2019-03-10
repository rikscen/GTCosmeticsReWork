using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CoreFramework.Transaction
{
    public class ExpiryPostingManager
    {
        public String ProdExpIndex { get; set; }
	    public String PostingNo { get; set; }
	    public String ProdIndex { get; set; }
	    public String Qty { get; set; }
	    public String Expiry { get; set; }
	    public String DateStamp { get; set; }
        public String Status { get; set; }
    }
}
