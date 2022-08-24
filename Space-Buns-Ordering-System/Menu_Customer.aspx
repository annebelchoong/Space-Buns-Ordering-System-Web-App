<%@ Page Title="" Language="C#" MasterPageFile="~/sb_master.Master" AutoEventWireup="true" CodeBehind="Menu_Customer.aspx.cs" Inherits="Space_Buns_Ordering_System.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/sb_menu.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-area">

        <nav class="menu-nav">
            <ul>
                <li>
                    <a href="#promotion">Promotion</a>
                    <a href="#chicken">Chicken</a>
                    <a href="#fish">Fish</a>
                    <a href="#beef">Beef</a>
                    <a href="#lamb">Lamb</a>
                    <a href="#meatless">Meatless</a>
                </li>
            </ul>
        </nav>

        <main class="menu-content">
            <section id ="promotion">
                <div class="menu-row">
                    <h3 class="menu-category-name">Promotion</h3>
                     <div class="promo-item">
                         <img src="Media/Promotions/Alien%20Day.png" alt="Alien Day" style="padding: 100px; width: 80%; height: 30%">
                     </div>
                </div>
            </section>

            <section id="chicken">
                <div class="menu-row">
                    <div class="menu-container">
                        <h3 class="menu-category-name">Chicken</h3>
                        <div class="menu-item">
                            <img class="zoom medium-zoom-image" src="Media/menuBurgers/chicken1.jpg" alt="Double Trouble Space Buns">
                            <article>
                                <h4 class="menu-item-name">Double Trouble</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        Made from chicken thigh to be crispy outside and tender,
                                        inside is topped with freshly shredded pickles along with
                                        spicy creamy mayo, then served on a hot fragrant bun, with joy.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM17.00</div>
                            </article>
                        </div>
                        <div class="menu-item">
                            <img class="zoom medium-zoom-image" src="Media/menuBurgers/chicken2.jpg" alt="Crispy Deluxe Space Buns">
                            <article>
                                <h4 class="menu-item-name">Crispy Deluxe</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        Crispy chicken fillet with a layer of luncheon meat, topped with
                                        lettuce and barbeque sauce, alongside with sliced cucumbers with
                                        creamy mayo, served on a hot butter-toasted bun.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM15.00</div>
                            </article>
                        </div>
                        <div class="menu-item">
                            <img class="zoom medium-zoom-image" src="Media/menuBurgers/chicken3.jpg" alt="Queen Chick Space Buns">

                            <article>
                                <h4 class="menu-item-name">Queen Chick</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        The one and only Queen of all burgers. Famous grilled chicken,
                                        a sliced of American Cheese, tomatoes, lettuce, pickles,
                                        with buns that are will always be perfectly toasted.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM14.00</div>
                            </article>
                        </div>

                    </div>
                </div>
            </section>

            <section id="fish">
                <div class="menu-row">
                    <div class="menu-container">
                        <h3 class="menu-category-name">Fish</h3>

                        <div class="menu-item">
                            <img class="zoom medium-zoom-image" src="Media/menuBurgers/fish1.jpg" alt="Salmon Fillet Space Buns">

                            <article>
                                <h4 class="menu-item-name">Salmon Fillet</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        Salmon patty, deep fried at the optimum temperature, ensuring that the salmon
                                        tenderness remains. Served with slices of tomatoes, lettuce, onions and mayo.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM16.00</div>
                            </article>
                        </div>
                        <div class="menu-item">
                            <img class="zoom medium-zoom-image" src="Media/menuBurgers/fish2.jpeg" alt="Jelly Fish Space Buns">

                            <article>
                                <h4 class="menu-item-name">Jelly Fish</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        The taste of dory fish splashed with the all-time favourite
                                        japanese's teriyaki sauce, sprinkled with freshly cut chives,
                                        red onions on toasted garlic brioche buns.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM14.00</div>
                            </article>
                        </div>
                        <div class="menu-item">
                            <img class="zoom medium-zoom-image" src="Media/menuBurgers/fish3.jpg" alt="Little Burgermaid Space Buns">

                            <article>
                                <h4 class="menu-item-name">Little Burgermaid</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        A succulent fish fillet is embraced by a whole slice of
                                        tomato, topped with tangy tartar sauce to accentuate the
                                        fish's flavor and it's all served between a toasted bun.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM13.00</div>
                            </article>
                        </div>

                    </div>
                </div>
            </section>

            <section id="beef">
                <div class="menu-row">
                    <div class="menu-container">
                        <h3 class="menu-category-name">Beef</h3>
                        <div class="menu-item">
                            <img class="zoom medium-zoom-image" src="Media/menuBurgers/beef1.jpg" alt="You Got Beef Space Buns">

                            <article>
                                <h4 class="menu-item-name">You Got Beef</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        Signature flame-grilled beef patty topped with Beef bacon,
                                        cheese and our special smokey BBQ sauce all in a toasted sesame seed bun.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM15.00</div>
                            </article>
                        </div>
                        <div class="menu-item">
                            <img class="zoom medium-zoom-image" src="Media/menuBurgers/beef2.jpg" alt="Beefy Bros Space Buns">
                            <article>
                                <h4 class="menu-item-name">Beefy Bros</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        Everything you want in a burger, but with double the Beef and double the Cheese!
                                        Basically, a double cheese burger, but with so much more!
                                    </p>
                                </div>
                                <div class="menu-item-price">RM16.00</div>
                            </article>
                        </div>
                        <div class="menu-item">
                            <img class="zoom medium-zoom-image" src="Media/menuBurgers/beef3.jpg" alt="King of Cheese Space Buns">

                            <article>
                                <h4 class="menu-item-name">King of Cheese</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        You can never go wrong with cheese. That's the King of Cheese!
                                        A triple grilled Beef Patty covered with lots of mozarella cheese.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM17.00</div>
                            </article>
                        </div>

                    </div>
                </div>
            </section>

            <section id="lamb">
                <div class="menu-row">
                    <div class="menu-container">
                        <h3 class="menu-category-name">Lamb</h3>
                        <div class="menu-item">
                            <img class="zoom medium-zoom-image" src="Media/menuBurgers/lamb1.jpg" alt="City Buns Space Buns">

                            <article>
                                <h4 class="menu-item-name">City Buns</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        Tender and juicy piece of meat with an authentic taste.
                                        Made with lamb that gets its unadulterated flavour from the
                                        grass and clover it feeds on in the wilds of New Zealand.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM15.00</div>
                            </article>
                        </div>
                        <div class="menu-item">
                            <img class="zoom medium-zoom-image" src="Media/menuBurgers/lamb2.jpg" alt="Spicy Swiss Space Buns">

                            <article>
                                <h4 class="menu-item-name">Spicy Swiss</h4>
                                <div class="menu-item-desc">
                                    <p>Grilled lamb patties seasoned with dill, mint and jalapeno,
                                        peppery arugula, and melty manchego between two buns
                                        slathered with a roasted red pepper mayo.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM14.00</div>
                            </article>
                        </div>
                        <div class="menu-item">
                            <img class="zoom medium-zoom-image" src="Media/menuBurgers/lamb3.jpg" alt="Greek Lamb Space Buns">

                            <article>
                                <h4 class="menu-item-name">Greek Lamb</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        Flavoured overboard, loaded with goodies such as tzatziki sauce,
                                        creamy feta cheese, topped with tomatoes, cucumbers, red onions
                                        and baby arugula, Greek style.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM16.00</div>
                            </article>
                        </div>

                    </div>
                </div>
            </section>

            <section id="meatless">
                <div class="menu-row">
                    <div class="menu-container">
                        <h3 class="menu-category-name">Meatless</h3>

                        <div class="menu-item">
                            <img class="zoom medium-zoom-image" src="Media/menuBurgers/meatless1.jpg" alt="Mushy Shrooms Space Buns">

                            <article>
                                <h4 class="menu-item-name">Mushy Shrooms</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        Grilled Tofu w/ Red Sauce paired w/ Lettuce,
                                        Onions &amp; Cumcumbers. Choose between
                                        Mild or Hot flavour.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM11.00</div>
                            </article>
                        </div>
                        <div class="menu-item">
                            <img class="zoom medium-zoom-image" src="Media/menuBurgers/meatless2.jpg" alt="Vegelicious Space Buns">

                            <article>
                                <h4 class="menu-item-name">Vegelicious</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        Vegan patty along side with shredded pickles, onions,
                                        tomatoes, topped with our secret sauce, on wheat buns.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM12.00</div>
                            </article>
                        </div>
                        <div class="menu-item">
                            <img class="zoom medium-zoom-image" src="Media/menuBurgers/meatless3.jpg" alt="Rice Patties Space Buns">

                            <article>
                                <h4 class="menu-item-name">Rice Patties</h4>
                                <div class="menu-item-desc">
                                    <p>
                                        Patties that is made from rice in barbeque flavour,
                                        with vegan patty, tomatoes and lettuce.
                                    </p>
                                </div>
                                <div class="menu-item-price">RM14.00</div>
                            </article>
                        </div>

                    </div>
                </div>
            </section>
        </main>
    </div>
</asp:Content>
