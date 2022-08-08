<%@ Page Title="" Language="C#" MasterPageFile="~/sb_master.Master" AutoEventWireup="true" CodeBehind="sb_events.aspx.cs" Inherits="Space_Buns_Ordering_System.sb_events" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="CSS/sb_events.css" rel="stylesheet" />

     <div class="cafeBanner">
            <div class="bannerCaption">
                <h1>Events.</h1>
            </div>
        </div>

    <div class="events-container">
        <section class="eventsTitle sec-width" id="eventsTitle">
            <div class="title">
                <h2>Organize Your Events in our Restaurant</h2>
                <p>The saying goes that "even the best-laid plans go astray," </p>
                <p>but that doesn't have to be the case for planning events at our restaurant. </p>
                <p>Whether you're hosting a promotional event for your own business, </p>
                <p>or whether you're aiming to make festivities with your loved ones, </p>
                <p>it'll take more than crafting the perfect food and drink menu to arrange the perfect private
                    event.</p>
                <p>If you have any enquiries or questions, please don't hestitate to contact us.</p>
                <p>We hope the events will be memorable and a wondeful experiences for you.</p>
            </div>
        </section>
        <section>
            <!-- single event -->
            <article class="events">
                <div class="events-image">
                    <img src="Media/Events/event1.jpg" alt="events image">
                </div>
                <div class="events-text">
                    <h3>CORPORATE EVENTS</h3>
                    <p> Some are cheesy, others can be a little dry, </p>
                    <p> and the rare few are a disaster. </p>
                    <p> There are so many burgers out there it can be hard to commit to just one favorite.</p>
                    <p> That being said, when you know, you just know.</p>

                    <div class="btn" id="button"> <a href="#form">Book Now</a> </div>
                </div>
            </article>
            <!-- end of single event -->
            <!-- single event -->
            <article class="events">
                <div class="events-image">
                    <img src="Media/Events/event2.jpg" alt="events image">
                </div>
                <div class="events-text">
                    <h3>PLANNING EVENTS</h3>
                    <p> Everyone has their perfect match.</p>
                    <p> Sometimes it's just around the corner, other times you have to travel the world in search of
                        it.</p>
                    <p> Wherever your perfect burger is, it's out there.</p>

                    <div class="btn" id="button"> <a href="#form">Book Now</a> </div>

                </div>
            </article>
            <!-- end of single event -->
            <!-- single event -->
            <article class="events">
                <div class="events-image">
                    <img src="Media/Events/event3.jpg" alt="events image">
                </div>
                <div class="events-text">
                    <h3>BAR SERVICES</h3>
                    <p> Think of burgers like a Tinder match.</p>
                    <p> They might not all be your soulmate but you've got to find out to be sure.</p>
                    <p> It can get a little messy and that's just part of the fun.</p>

                    <div class="btn" id="button"> <a href="#form">Book Now</a> </div>
                </div>
            </article>
            <!-- end of single event -->
            <!-- single event -->
            <article class="events">
                <div class="events-image">
                    <img src="Media/Events/event4.jpg" alt="events image">
                </div>
                <div class="events-text">
                    <h3>WEDDING</h3>
                    <p> Whether you're a ketchup and mustard loyalist or you prefer house sauce to no sauce,</p>
                    <P> you can agree that every burger has it's own special flair.</P>
                    <P> Top tip: house sauce begs to be ordered on the side for fry-dipping purpose.</p>

                    <div class="btn" id="button"> <a href="#form">Book Now</a> </div>
                </div>
            </article>
            <!-- end of single event -->
        </section>

        <!--rvsp section start-->
        <section class="rsvp-section" id="form" >
            <div class="row">
                <div class="section-title">
                    <h2>RESERVATION</h2>
                </div>
            </div>
            <div class="row">
                <div class="rsvp-form" >
                    <div class="form" onsubmit="ReserveSuccess()">  
                        <div class="row">
                            <div class="input-group w50">
                                <input type="text" name="name" placeholder="Name" class="input-control" required>
                            </div>
                            <div class="input-group w50">
                                <input type="email" name="email" placeholder="Email" class="input-control"
                                    pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required>
                            </div>
                            <div class="input-group w50">
                                <input type="tel" name="phone" placeholder="Phone No. eg. 01233456789" class="input-control"
                                    pattern="^(01)[0-9][0-9]*[0-9]{7,8}$" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-group w50">
                                <input type="date" placeholder="Date" class="input-control" required>
                            </div>
                            <div class="input-group w50">
                                <input type="time" placeholder="Time" class="input-control" required>
                            </div>
                            <div class="input-group w50">
                                <input type="number" placeholder="Number of People" min="1" class="input-control"
                                    required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-group">
                                <textarea placeholder="Message" class="input-control"></textarea>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-group">
                                <!--<button type="submit" class="btn-1">Submit</button>-->
                                <asp:Button ID="btnSubmit" class="btn-1" runat="server" Text="Submit" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--rvsp section end-->
        <!--
        <script>
            alert("Your reservation is successful.")
        </script>
        -->
    </div>
</asp:Content>
