<%@ Page Title="" Language="C#" MasterPageFile="~/sb_master.Master" AutoEventWireup="true" CodeBehind="sb_aboutUs.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_aboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/sb_aboutUs.css" rel="stylesheet" />
        <script src="Javascript/sb_aboutUs.js"></script>
        <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBYu0LMy7fYkaHUFkD9JYpXvjBOFVrVztw&callback=initMap"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="aboutUs-content">
        <div class="aboutUs-container">
            <article class="whoarewe">
                <div class="aboutUs-top">
                    <h2>Who are we?</h2>
                    <p>
                        Space Buns is a consumer-centric burger business that focuses on making the best handmade
                        burgers in
                        the
                        world.
                    </p>
                    <br>
                    <p>
                        Inspired by the infamous “Burger Ramly '' which is loved by every true Malaysian, we decided to
                        make
                        a
                        classy version of it. So, we started with a simple concept of selling affordable and delicious
                        burgers
                        paired with the best ingredients on top of our freshly handmade bun. We hope to provide a mind
                        blowing
                        experience to all the customers like how the Space blows everyone’s mind.
                    </p>
                    <br>
                    <p>
                        Started in 2020 from a roadside “Ramly Burger” stall in the Damansara neighbourhood with a
                        homemade
                        burger
                        menu, the company has since undergone an expansion of branches that is now available in Petaling
                        Jaya,
                        Cheras, Kepong, Sungai Buloh, Bukit Bintang, Klang, and Setapak. We provide the options for you
                        to
                        dine-in,
                        takeaway or even delivery via GrabFood and FoodPanda. But most importantly, we can guarantee
                        that by
                        ordering your burgers through our website at <a href="sb_index.html"
                            target="_blank">www.spacebuns.com.my</a>,
                        it
                        will for sure
                        bring you the
                        best
                        ordering experience like never before. We promise.
                    </p>
                    <br>
                    <p>
                        We are here as one to make an impact on the world. Some people build the world’s tallest
                        building or
                        create
                        the world’s fastest cars. What about us? We’re out to make the best burgers that satisfy your
                        taste
                        buds
                        and
                        stomach. At the very core, Space Buns is a community business. It is made up of everyday people
                        like
                        you
                        and
                        me. As we continue to grow with your support, we promise to strive harder to give back to the
                        community.
                    </p>
                </div>
            </article>
            <div class="aboutUs-bottom">
                <div class="aboutUs-right" id="googleMap">
                </div>
                <div class="aboutUs-left">
                    <h3>Find us at</h3>
                    <span>Find out more by clicking the map markers!</span>
                    <div class="aboutUs-scroll">
                        <div class="aboutUs-scroll-container">
                            <div class="aboutUs-address">
                                <h4><i class='fas fa-map-marker-alt' id="location-Damansara"
                                    style='font-size: 24px; color: red; text-shadow: 1px 1px 10px black;'></i>&nbsp;
                                    Space
                                    Buns @
                                    Damansara</h4>
                                <p>
                                    12, Jalan PJU 1a/20a,
                                    <br>
                                    Dataran Ara Damansara,
                                    <br>
                                    47301 Petaling Jaya, Selangor
                                </p>
                            </div>
                            <div class="aboutUs-businessHour">
                                <h4><i class='far fa-clock' style='font-size: 24px;'></i>&nbsp;
                                    Business Hour</h4>
                                <p>
                                    Monday to Sunday
                                    <br>
                                    10:00am to 10:00pm
                                </p>
                            </div>
                        </div>
                        <div class="aboutUs-scroll-container">
                            <div class="aboutUs-address">
                                <h4><i class='fas fa-map-marker-alt' id="location-Cheras"
                                    style='font-size: 24px; color: red; text-shadow: 1px 1px 10px black;'></i>&nbsp;
                                    Space
                                    Buns @
                                    Cheras</h4>
                                <p>
                                    37, Jalan 1/119,
                                    <br>
                                    Taman Bukit Hijau,
                                    <br>
                                    56100 Kuala Lumpur,
                                    <br>
                                    Wilayah Persekutuan Kuala Lumpur
                                </p>
                            </div>
                            <div class="aboutUs-businessHour">
                                <h4><i class='far fa-clock' style='font-size: 24px;'></i>&nbsp;
                                    Business Hour</h4>
                                <p>
                                    Monday to Sunday
                                    <br>
                                    10:00am to 10:00pm
                                </p>
                            </div>
                        </div>
                        <div class="aboutUs-scroll-container">
                            <div class="aboutUs-address">
                                <h4><i class='fas fa-map-marker-alt' id="location-Sungai Buloh"
                                    style='font-size: 24px; color: red; text-shadow: 1px 1px 10px black;'></i>&nbsp;
                                    Space
                                    Buns @
                                    Sungai Buloh</h4>
                                <p>
                                    25-13, Jalan BRP 1/4,
                                    <br>
                                    Bukit Rahman Putra,
                                    <br>
                                    47000 Sungai Buloh, Selangor
                                </p>
                            </div>
                            <div class="aboutUs-businessHour">
                                <h4><i class='far fa-clock' style='font-size: 24px;'></i>&nbsp;
                                    Business Hour</h4>
                                <p>
                                    Monday to Sunday
                                    <br>
                                    10:00am to 10:00pm
                                </p>
                            </div>
                        </div>
                        <div class="aboutUs-scroll-container">
                            <div class="aboutUs-address">
                                <h4><i class='fas fa-map-marker-alt' id="location-Setapak"
                                    style='font-size: 24px; color: red; text-shadow: 1px 1px 10px black;'></i>&nbsp;
                                    Space
                                    Buns @
                                    Setapak</h4>
                                <p>
                                    Lot 1-3A,wisma setapak 33,<br>
                                    jalan 2/23D, off,
                                    <br>
                                    Jalan Genting Kelang,
                                    <br>
                                    Setapak, 53300 Kuala Lumpur
                                </p>
                            </div>
                            <div class="aboutUs-businessHour">
                                <h4><i class='far fa-clock' style='font-size: 24px;'></i>&nbsp;
                                    Business Hour</h4>
                                <p>
                                    Monday to Sunday
                                    <br>
                                    10:00am to 10:00pm
                                </p>
                            </div>
                        </div>
                        <div class="aboutUs-scroll-container">
                            <div class="aboutUs-address">
                                <h4><i class='fas fa-map-marker-alt' id="location-Subang Jaya"
                                    style='font-size: 24px; color: red; text-shadow: 1px 1px 10px black;'></i>&nbsp;
                                    Space
                                    Buns @
                                    Subang Jaya</h4>
                                <p>
                                    Taipan Business Centre,
                                    <br>
                                    47620 Subang Jaya, Selangor
                                </p>
                            </div>
                            <div class="aboutUs-businessHour">
                                <h4><i class='far fa-clock' style='font-size: 24px;'></i>&nbsp;
                                    Business Hour</h4>
                                <p>
                                    Monday to Sunday
                                    <br>
                                    10:00am to 10:00pm
                                </p>
                            </div>
                        </div>
                        <div class="aboutUs-scroll-container">
                            <div class="aboutUs-address">
                                <h4><i class='fas fa-map-marker-alt' id="location-Cyberjaya"
                                    style='font-size: 24px; color: red; text-shadow: 1px 1px 10px black;'></i>&nbsp;
                                    Space
                                    Buns @
                                    CyberJaya</h4>
                                <p>
                                    No 9, Jalan GC 1,
                                    <br>
                                    Cyberjaya, 63000 Cyberjaya, Selangor
                            </div>
                            <div class="aboutUs-businessHour">
                                <h4><i class='far fa-clock' style='font-size: 24px;'></i>&nbsp;
                                    Business Hour</h4>
                                <p>
                                    Monday to Sunday
                                    <br>
                                    10:00am to 10:00pm
                                </p>
                            </div>
                        </div>
                        <div class="aboutUs-scroll-container">
                            <div class="aboutUs-address">
                                <h4><i class='fas fa-map-marker-alt' id="location-Kajang"
                                    style='font-size: 24px; color: red; text-shadow: 1px 1px 10px black;'></i>&nbsp;
                                    Space
                                    Buns @
                                    Kajang</h4>
                                <p>
                                    Arkib Mara, Bandar Kajang,
                                    <br>
                                    43000 Kajang, Selangor
                                </p>
                            </div>
                            <div class="aboutUs-businessHour">
                                <h4><i class='far fa-clock' style='font-size: 24px;'></i>&nbsp;
                                    Business Hour</h4>
                                <p>
                                    Monday to Sunday
                                    <br>
                                    10:00am to 10:00pm
                                </p>
                            </div>
                        </div>
                        <div class="aboutUs-scroll-container">
                            <div class="aboutUs-address">
                                <h4><i class='fas fa-map-marker-alt' id="location-Shah Alam"
                                    style='font-size: 24px; color: red; text-shadow: 1px 1px 10px black;'></i>&nbsp;
                                    Space
                                    Buns @
                                    Shah Alam</h4>
                                <p>
                                    4, Jalan Multimedia 7/Ah,
                                    <br>
                                    I-city, 40000 Shah Alam, Selangor
                                </p>
                            </div>
                            <div class="aboutUs-businessHour">
                                <h4><i class='far fa-clock' style='font-size: 24px;'></i>&nbsp;
                                    Business Hour</h4>
                                <p>
                                    Monday to Sunday
                                    <br>
                                    10:00am to 10:00pm
                                </p>
                            </div>
                        </div>

                    </div>

                </div>
            </div>

        </div>

    </section>

</asp:Content>
