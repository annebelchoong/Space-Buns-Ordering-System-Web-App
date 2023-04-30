using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Space_Buns_Ordering_System
{
    public class CartItem
    {
        public String productName = "Da Best Burger";
        public long unitPrice = 0;
        public int quantity = 1;
        public String addOnsDescription = "Extra cheese, extra patty";
        public String imgPath = "https://spacebuns.web.app/Media/menuBurgers/chicken1.jpg";

        public CartItem()
        {
        }

        public CartItem(string productName, long unitPrice, int quantity, string addOnsDescription, string imgPath)
        {
            this.productName = productName;
            this.unitPrice = unitPrice;
            this.quantity = quantity;
            this.addOnsDescription = addOnsDescription;
            this.imgPath = imgPath;
        }
    }
}