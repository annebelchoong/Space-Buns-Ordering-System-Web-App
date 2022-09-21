<%@ Page Language="C#" AutoEventWireup="True" %>

<%@ Import Namespace="System.Data" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link href="CSS/sb_menu_test.css" rel="stylesheet" />
    <title>DataList Edit Example</title>
    <style type="text/css">
        .imgCart {
            width: 80px;
            padding: 0px;
        }

        .product {
            display: flex;
            padding-bottom: 30px;
            justify-content: space-around;
        }

        .productColumn {
            display: flex;
            flex-direction: column;
        }

        .productTop, .productBottom {
            width: 350px;
            display: flex;
            justify-content: space-between;
            flex-direction: row;
            align-items: baseline;
        }


        .productQuantity {
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-direction: row;
        }

        .productName {
            font-size: 18px;
            font-weight: bold;
            padding-bottom: 20px;
        }

        .totalPrice {
            padding-top: 15px;
            font-size: 20px;
            font-weight: 500;
        }
    </style>
    <%--<script runat="server">

      // The Cart and CartView objects temporarily store the data source
      // for the DataList control while the page is being processed.
      DataTable Cart = new DataTable();
      DataView CartView;   
 
      void Page_Load(Object sender, EventArgs e) 
      {
 
         // With a database, use an select query to retrieve the data. 
         // Because the data source in this example is an in-memory
         // DataTable, retrieve the data from session state if it exists;
         // otherwise, create the data source.
         GetSource();

         // The DataList control maintains state between posts to the server;
         // it only needs to be bound to a data source the first time the
         // page is loaded or when the data source is updated.
         if (!IsPostBack)
         {

            BindList();

         }
                   
      }

      void BindList() 
      {

         // Set the data source and bind to the DataList control.
         ItemsList.DataSource = CartView;
         ItemsList.DataBind();

      }

      void GetSource()
      {

         // For this example, the data source is a DataTable that 
         // is stored in session state. If the data source does not exist,
         // create it; otherwise, load the data.
         if (Session["ShoppingCart"] == null) 
         {     

            // Create the sample data.
            DataRow dr;  
 
            // Define the columns of the table.
            Cart.Columns.Add(new DataColumn("Qty", typeof(Int32)));
            Cart.Columns.Add(new DataColumn("Item", typeof(String)));
            Cart.Columns.Add(new DataColumn("Price", typeof(Double)));

            // Store the table in session state to persist its values 
            // between posts to the server.
            Session["ShoppingCart"] = Cart;
             
            // Populate the DataTable with sample data.
            for (int i = 1; i <= 9; i++) 
            {
               dr = Cart.NewRow();
               if (i % 2 != 0)
               {
                  dr[0] = 2;
               }
               else
               {
                  dr[0] = 1;
               }
               dr[1] = "Item " + i.ToString();
               dr[2] = (1.23 * (i + 1));
               Cart.Rows.Add(dr);
            }

         } 

         else
         {

            // Retrieve the sample data from session state.
            Cart = (DataTable)Session["ShoppingCart"];

         }         
 
         // Create a DataView and specify the field to sort by.
         CartView = new DataView(Cart);
         CartView.Sort="Item";

         return;

      }

      void Edit_Command(Object sender, DataListCommandEventArgs e) 
      {

         // Set the EditItemIndex property to the index of the item clicked
         // in the DataList control to enable editing for that item. Be sure
         // to rebind the DataList to the data source to refresh the control.
         ItemsList.EditItemIndex = e.Item.ItemIndex;
         BindList();

      }

      void Cancel_Command(Object sender, DataListCommandEventArgs e) 
      {

         // Set the EditItemIndex property to -1 to exit editing mode. Be sure
         // to rebind the DataList to the data source to refresh the control.
         ItemsList.EditItemIndex = -1;
         BindList();

      }

      void Delete_Command(Object sender, DataListCommandEventArgs e) 
      { 

         // Retrieve the name of the item to remove.
         String item = ((Label)e.Item.FindControl("ItemLabel")).Text;

         // Filter the CartView for the selected item and remove it from
         // the data source.
         CartView.RowFilter = "Item='" + item + "'";
         if (CartView.Count > 0) 
         {
            CartView.Delete(0);
         }
         CartView.RowFilter = "";

         // Set the EditItemIndex property to -1 to exit editing mode. Be sure
         // to rebind the DataList to the data source to refresh the control.
         ItemsList.EditItemIndex = -1;
         BindList();

      }

      void Update_Command(Object sender, DataListCommandEventArgs e) 
      {

         // Retrieve the updated values from the selected item.
         String item = ((Label)e.Item.FindControl("ItemLabel")).Text;
         String qty = ((TextBox)e.Item.FindControl("QtyTextBox")).Text;
         String price = ((TextBox)e.Item.FindControl("PriceTextBox")).Text;

         // With a database, use an update command to update the data.
         // Because the data source in this example is an in-memory 
         // DataTable, delete the old row and replace it with a new one.

         // Filter the CartView for the selected item and remove it from
         // the data source.
         CartView.RowFilter = "Item='" + item + "'";
         if (CartView.Count > 0)
         {
            CartView.Delete(0);
         }
         CartView.RowFilter = "";

         // ***************************************************************
         // Insert data validation code here. Make sure to validate the
         // values entered by the user before converting to the appropriate
         // data types and updating the data source.
         // ***************************************************************

         // Add a new entry to replace the previous item.
         DataRow dr = Cart.NewRow();
         dr[0] = qty;
         dr[1] = item;
         // If necessary, remove the '$' character from the price before
         // converting the price to a Double.
         if(price[0] == '$')
         {
            dr[2] = Convert.ToDouble(price.Substring(1));
         }
         else
         {
            dr[2] = Convert.ToDouble(price);
         }
         Cart.Rows.Add(dr);

         // Set the EditItemIndex property to -1 to exit editing mode. 
         // Be sure to rebind the DataList to the data source to refresh
         // the control.
         ItemsList.EditItemIndex = -1;
         BindList();

      }

   </script>--%>
</head>
<body>

    <form id="form1" runat="server">

        <%--<h3>DataList Edit Example</h3>

      Click <b>Edit</b> to edit the values of the item.

      <br /><br />
       
      <asp:DataList id="ItemsList"
           GridLines="Both"
           RepeatColumns="3"
           RepeatDirection="Horizontal"
           CellPadding="3"
           CellSpacing="0"
           OnEditCommand="Edit_Command"
           OnUpdateCommand="Update_Command"
           OnDeleteCommand="Delete_Command"
           OnCancelCommand="Cancel_Command"
           runat="server">

         <HeaderStyle BackColor="#aaaadd">
         </HeaderStyle>

         <AlternatingItemStyle BackColor="Gainsboro">
         </AlternatingItemStyle>

         <EditItemStyle BackColor="yellow">
         </EditItemStyle>

         <HeaderTemplate>

            Items

         </HeaderTemplate>
         
         <ItemTemplate>

            Item:
            <%# DataBinder.Eval(Container.DataItem, "Item") %> 

            <br />

            Quantity:
            <%# DataBinder.Eval(Container.DataItem, "Qty") %>

            <br />

            Price:
            <%# DataBinder.Eval(Container.DataItem, "Price", "{0:c}") %>

            <br />

            <asp:LinkButton id="EditButton" 
                 Text="Edit" 
                 CommandName="Edit"
                 runat="server"/>

         </ItemTemplate>
              
         <EditItemTemplate>

            Item:
            <asp:Label id="ItemLabel" 
                 Text='<%# DataBinder.Eval(Container.DataItem, "Item") %>' 
                 runat="server"/>

            <br />

            Quantity:
            <asp:TextBox id="QtyTextBox" 
                 Text='<%# DataBinder.Eval(Container.DataItem, "Qty") %>' 
                 runat="server"/>

            <br />

            Price:
            <asp:TextBox id="PriceTextBox" 
                 Text='<%# DataBinder.Eval(Container.DataItem, "Price", "{0:c}") %>' 
                 runat="server"/>

            <br />

            <asp:LinkButton id="UpdateButton" 
                 Text="Update" 
                 CommandName="Update" 
                 runat="server"/>

            <asp:LinkButton id="DeleteButton" 
                 Text="Delete" 
                 CommandName="Delete" 
                 runat="server"/>

            <asp:LinkButton id="CancelButton" 
                 Text="Cancel" 
                 CommandName="Cancel" 
                 runat="server"/>

         </EditItemTemplate>

      </asp:DataList>--%><%-- <div>
            <asp:Panel ID="pnlCart" runat="server" CssClass="cart-panel">

                <div class="cartNavBar">
                    <div>
                        <h2>Your cart</h2>
                        You've added
                <asp:Label ID="lblNumOfItems" runat="server" Text="2"></asp:Label>
                        items
                    </div>
                    <div class="close-btn-cart">
                        <asp:Button ID="btnCloseCart" runat="server" Text="&times;" UseSubmitBehavior="False" />
                    </div>
                </div>
                <div class="addressAndTime">
                </div>--%>

         <nav class="menu-nav">
            <ul>
                <li>
                    <a href="#Chicken">Chicken</a>
                    <a href="#Fish">Fish</a>
                    <a href="#beef">Beef</a>
                    <a href="#lamb">Lamb</a>
                    <a href="#meatless">Meatless</a>
                </li>
            </ul>
        </nav>

        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div class="cartProduct">
                    <div class="products">
                        <div class="product">
                            <div>
                                <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("picture") %>' Width="100px" />
                                <div class="productColumn">
                                    <div class="productTop">
                                        <div class="productName">
                                            <asp:Label ID="lblProduct" runat="server" Text='<%# Eval("name") %>' />
                                        </div>
                                        <div class="deleteProduct">
                                            <asp:ImageButton ID="imgbtnTrash" runat="server" ImageUrl="~/Media/Icons/trash.svg" Height="20px" />
                                        </div>
                                    </div>
                                    <div class="productBottom">
                                        <div class="productQuantity">
                                            <div class="decrementButton">
                                                <asp:Button ID="btnDecrement" runat="server" Text="-" CssClass="buttonQuantity" />
                                            </div>
                                            <div class="quantityNumber">
                                                <asp:TextBox ID="txtQuantity" runat="server" Text='<%# Eval("quantity") %>' CssClass="textQuantity" />
                                            </div>
                                            <div class="incrementButton">
                                                <asp:Button ID="btnIncrement" runat="server" Text="+" CssClass="buttonQuantity" />
                                            </div>
                                        </div>
                                        <div class="totalPrice">
                                            RM
                                            <asp:Label ID="unitPriceLabel" runat="server" Text='<%# Eval("unitPrice") %>' />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>

        </asp:Repeater>
        <%--                <div class="finalAmount">
                    <div>
                        Total
                    </div>
                    <div>
                        RM
                                <asp:Label ID="lblFinalAmount" runat="server" Text="34.00"></asp:Label>
                    </div>
                </div>
                <div>
                    <asp:Button ID="btnCheckout" runat="server" Text="Checkout" />
                </div>

        </asp:Panel>
        </div>--%>

        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="3" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <HeaderStyle Font-Bold="False" Font-Italic="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
            <HeaderTemplate>
                <div id="Chicken">
                <asp:Label ID="lblChicken" runat="server" Text='Chicken' CssClass="lblCategory"></asp:Label>

                </div>
            </HeaderTemplate>
            <ItemTemplate>

                <div>
                    <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("picture") %>' Width="100px"/>
                    <div class="menuProduct">
                        <asp:Label ID="lblProduct" runat="server" Text='<%# Eval("name") %>' CssClass="lblProduct" />
                        <br />
                        <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("description") %>' CssClass="lblDesc"></asp:Label>
                        <br />
                        <asp:Label ID="lblUnitPrice" runat="server" Text='<%# Eval("unitPrice") %>' CssClass="lblPrice"></asp:Label>
                    </div>

                </div>
            </ItemTemplate>

        </asp:DataList>

        <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource3" RepeatColumns="3" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <HeaderStyle Font-Bold="False" Font-Italic="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Left" />
            <HeaderTemplate>
                <div id="Fish">
                <asp:Label ID="lblFish" runat="server" Text='Fish' CssClass="lblCategory"></asp:Label>
                </div>
            </HeaderTemplate>
            <ItemTemplate>

                <div>
                    <asp:Image ID="imgProductF" runat="server" ImageUrl='<%# Eval("picture") %>' Width="100px" />
                    <div class="menuProduct">
                        <asp:Label ID="lblProductF" runat="server" Text='<%# Eval("name") %>' CssClass="lblProduct" />
                        <br />
                        <asp:Label ID="lblDescriptionF" runat="server" Text='<%# Eval("description") %>' CssClass="lblDesc"></asp:Label>
                        <br />
                        <asp:Label ID="lblUnitPriceF" runat="server" Text='<%# Eval("unitPrice") %>' CssClass="lblPrice"></asp:Label>
                    </div>

                </div>
            </ItemTemplate>

        </asp:DataList>

                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Category.categoryName, Product.name, Product.description, Product.unitPrice, Product.picture FROM Category INNER JOIN Product ON Category.categoryID = Product.categoryID WHERE (Category.categoryName = @categoryName)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Fish" Name="categoryName" />
                    </SelectParameters>
        </asp:SqlDataSource>

                <%--<div class="menuProductRepeater">
        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
            <ItemTemplate>

                    <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("picture") %>' Width="100px" CssClass="lblCategory" />
                    <div class="menuProduct">
                        <asp:Label ID="lblProduct" runat="server" Text='<%# Eval("name") %>' CssClass="lblProduct" />
                        <br />
                        <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("description") %>' CssClass="lblDesc"></asp:Label>
                        <br />
                        <asp:Label ID="lblUnitPrice" runat="server" Text='<%# Eval("unitPrice") %>' CssClass="lblPrice"></asp:Label>
                    </div>

            </ItemTemplate>
        </asp:Repeater>
                </div>--%>


        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Product.name, Product.unitPrice, Product.description, Product.picture, Category.categoryName FROM Product INNER JOIN Category ON Product.categoryID = Category.categoryID WHERE (Category.categoryName LIKE @categoryName)">
            <SelectParameters>
                <asp:Parameter DefaultValue="chicken" Name="categoryName" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Product.name, OrderDetails.unitPrice, OrderDetails.quantity, Product.picture FROM [Order] INNER JOIN OrderDetails ON [Order].orderID = OrderDetails.orderID INNER JOIN Product ON OrderDetails.productID = Product.productID WHERE ([Order].customerID = @customerID)">
            <SelectParameters>
                <asp:Parameter Name="customerID" DefaultValue="1" />
            </SelectParameters>
        </asp:SqlDataSource>

    </form>

</body>
</html>
