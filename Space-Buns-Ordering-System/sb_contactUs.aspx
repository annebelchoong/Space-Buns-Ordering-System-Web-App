<%@ Page Title="" Language="C#" MasterPageFile="~/sb_master.Master" AutoEventWireup="true" CodeBehind="sb_contactUs.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_contactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" href="CSS/sb_contactUs.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
        integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
        crossorigin="anonymous" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section class="contactUs-content">
        <div class="contactUs-container">
            <div class="contactUs-left">
                <h2>Have a question?</h2>
                <h3>Send us a message</h3>
                <form action="" class="contactUs-form">
                    <div class="contactUs-name">
                        <label for="name" class="details">Full Name</label><br>
                        <input type="text" id="name" placeholder="Tan Ah Beng" required>
                    </div>
                    <div class="contactUs-email">
                        <label for="email" class="details">Email</label><br>
                        <input type="email" id="email" placeholder="spacebuns@gmail.com"
                            pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required>
                    </div>
                    <div class="contactUs-phoneNumber">
                        <label for="phoneNumber" class="details">Phone Number</label><br>
                        <input type="tel" id="phoneNumber" placeholder="0123456789"
                            pattern="^(01)[0-9][0-9]*[0-9]{7,8}$" required>
                    </div>
                    <div class="contactUs-subject">
                        <label for="subject" class="details">Subject</label><br>
                        <input type="text" id="subject" placeholder="Eg. Feedbacks on Burgers" required>
                    </div>
                    <div class="contactUs-message">
                        <label for="message" class="details">Message</label><br>
                        <textarea id="message" rows="10" cols="80" placeholder="Your message to us" required></textarea>
                    </div>
                    <div class="submit-contactUs">
                        <label for="submit"></label><br>
                        <input type="submit" id="submit" onclick="submitButton()">
                    </div>
                </form>
            </div>
            <div class="contactUs-right">
                <h3>Or contact us via</h3>
                <div class="sb-details">
                    <div class="hpNumber">
                        <i class='fas fa-phone-alt'></i>
                        <a href="tel:+60123456789">+6012-345 6789</a>
                    </div>
                    <div class="emailAddress">
                        <i class='fas fa-envelope'></i>
                        <a href="mailto:spacebuns@gmail.com">spacebuns@gmail.com</a>
                    </div>
                    <div class="location">
                        <i class='fas fa-map-marker-alt'></i>
                        <span>
                            Space Buns @ Damansara
                            <p>
                                12, Jalan PJU 1a/20a, <br>
                                Dataran Ara Damansara, <br>
                                47301 Petaling Jaya, Selangor
                            </p>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
