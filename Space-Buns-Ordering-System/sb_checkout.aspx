<%@ Page Title="" Language="C#" MasterPageFile="~/sb_master.Master" AutoEventWireup="true" CodeBehind="sb_checkout.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://js.stripe.com/v3/"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <form id="checkout_form" runat="server">
        <div>
            <button type="submit">Checkout</button>
        </div>
    </form>

    <script src="https://js.stripe.com/v3/"></script>
    <script>
        var stripe = Stripe('pk_test_51LWbMdCffsYKlOgZJQu5OlKPoEe978IKUuzKJjwcW0ZDwb46LaVT09D3svdGTvaWoavzzCTqo9fM7DztaOL8dSGu00MhmVJabg');

        const appearance = {
            theme: 'night'
        };
        //const elements = stripe.elements({ clientSecret, appearance });

        var form = document.getElementById("checkout_form");
        form.addEventListener('submit', function (e) {
            e.preventDefault();

            stripe.redirectToCheckout({
                sessionId: "<%= sessionId %>"
            });
        })
    </script>
</asp:Content>
