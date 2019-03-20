using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CoreFramework
{
    public interface IManager
    {
        StringBuilder SqlScript { get; }

        void Insert();

        void Update();

        void Delete();

        int RunSqlScript();
    }

    public class TransactionManager
    {
        private readonly IManager _manager;

        public TransactionManager(IManager manager)
        {
            _manager = manager;
        }

        public void Insert()
        {
            _manager.Insert();
        }

        public void Update()
        {
            _manager.Update();
        }

        public int RunSqlScript()
        {
            return _manager.RunSqlScript();
        }
    }
}