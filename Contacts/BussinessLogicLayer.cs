using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contacts
{
    public class BussinessLogicLayer
    {
        private DataAccesLayer _dataAccesLayer;
        public BussinessLogicLayer() {
            _dataAccesLayer= new DataAccesLayer();
        }
        public Contact SaveContact(Contact contact)
        {
            if (contact.id == 0)
                _dataAccesLayer.InsertContact(contact);
            
            //else
            //_dataAccesLayer.UpdateContact;
            return contact;
        }
        
    }
}

