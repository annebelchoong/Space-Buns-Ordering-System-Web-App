using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Space_Buns_Ordering_System.Cart
{
    public class CartItem
    {
        public string name;
        public int unitPrice;
        public int quantity;
        public string imagePath;

        public CartItem()
        { 
        }

        public CartItem(string name, int unitPrice, int quantity, string imagePath)
        {
            this.name = name;
            this.unitPrice = unitPrice;
            this.quantity = quantity;
            this.imagePath = imagePath;
        }
    }
}