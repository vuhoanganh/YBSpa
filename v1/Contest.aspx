<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contest.aspx.cs" Inherits="Spa.Contest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Young & Beautiful Salon Spa </title>

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Font Awesome CSS -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="fonts/themify-icons.css" rel="stylesheet">

    <!-- Owl Carousel CSS -->
    <link href="css/owl.carousel.css" rel="stylesheet">

    <!-- Magnific Popup core CSS file -->
    <link rel="stylesheet" href="css/magnific-popup.css">

    <!-- Animate CSS -->
    <link rel="stylesheet" href="css/animate.css">

    <!-- Theme CSS -->
    <link href="css/style.css" rel="stylesheet">

    <!-- Spa Icons -->
    <link href="fonts/spa/flaticon.css" rel="stylesheet">

    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>

    <!-- Begin MailChimp Signup Form -->
    <link href="css/classic-081711.css" rel="stylesheet" type="text/css">
    <style type="text/css">
        #mc_embed_signup {
            background: #fff;
            clear: left;
            font: 14px Helvetica,Arial,sans-serif;
        }
        /* Add your own MailChimp form style overrides in your site stylesheet or in this style block.
        We recommend moving this block and the preceding CSS link to the HEAD of your HTML file. */
        #mc-embedded-subscribe {
            width: 100px !important;
            padding: 4px !important;
        }
    </style>

</head>
<body>
    <div class="page" id="page">

        <!-- Header -->
         <header class="no_border green_hover">


            <!-- Logo -->
            <div class="logo pull-left">
                <a href="HomePage.html"><b>Young & Beautiful Salon Spa</b></a><br />
            </div>


            <!-- Header Buttons -->
            <div class="header_btns_wrapper">

                <!-- Main Menu Btn -->
                <div class="main_menu"><i class="ti-menu"></i><i class="ti-close"></i></div>

                <!-- Sub Menu -->
                <div class="sub_menu">
                    <div class="sub_cont">
                        <ul>
                            <li><a href="BeautyTips.html">BEAUTY TIPS</a></li>
                            <li><a href="Events.html">EVENTS</a></li>
                            <li><a href="Special.html">SPECIALS</a></li>
                            <li><a href="Services.html">SERVICES</a></li>
                            <li><a href="Gallery.html">GALLERY </a></li>
                            <li><a href="BookOnline.html">BOOK ONLINE</a></li>
                            <li><a href="Contact.html">CONTACT</a></li>

                            <!-- Search
                            <li class="right_sub no_arrow sub_min_width"><a href="#" class="parents"><i class="ti-search"></i></a>
                                <ul class="mega_menu">
                                    <li class="mega_sub bask_menu">
                                        <form>
                                            <input type="text" class="form-control" placeholder="Enter Your Keywords">
                                            <button type="submit" class="se_btn">
                                              <i class="ti-search"></i>
                                            </button>
                                        </form>
                                    </li>
                                </ul>
                            </li> -->
                            <!-- Search End-->

                        </ul>


                    </div>
                </div>
                <!-- Sub Menu End -->

            </div>
            <!-- Header Buttons End -->
            <!-- Up Arrow -->
            <a href="#page" class="up_block go"><i class="fa fa-angle-up"></i></a>

        </header>
        <!-- Header End -->
        <!--Intro-->

         <section class="boxes simple_title" id="contest">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12 bordered_block no-padding image_bck no-cover" data-color="#f5f5f5">

                        <div class="simple_block">
                            <h3 class="wow fadeInUp">Contest</h3>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <!-- Contacts -->
        <section class="boxes" id="contacts">
            <div class="container-fluid">

                <div class="row">

                    <!-- Contacts -->
                    <div class="col-md-12 simple_block text-left">

                        <form id="write_us" class="form" runat="server">
                            <div class="row">
                                <div class="text-center">
                                    To celebrate the launch of our website www.youngbeautifulsalonspa.com, we are hosting a contest with 2 GREAT PRIZES: 
                                </div>
                                <div class="text-center">
                                    COUPLE MASSAGE GIFT CERTIFICATE
                                </div>
                                <div class="text-center">
                                    1 HOUR EACH PERSON
                                </div>
                                <div class="text-center">
                                    (worth $120)
                                </div>
                                <div class="text-center">
                                    PAMPERING GIFT CERTIFICATE
                                </div>
                                <div class="text-center">
                                    SHELLAC MANI & PEDI, FOOT MASSAGE & FACIAL
                                </div>
                                <div class="text-center">
                                    (worth $150)
                                </div>
                            </div>
                            <div class="row" style="margin-top: 40px">TO ENTER, please fill out the entire entry form below:</div>
                            <div class="row">
                                <div class="col-md-6">
                                    <input type="text" id="txtFName" runat="server" class="form-control form-opacity" placeholder="First Name" required="required" />
                                </div>
                                <div class="col-md-6">
                                    <input type="text" id="txtLName" runat="server" class="form-control form-opacity" placeholder="Last Name" required="required" />
                                </div>
                                <div class="col-md-6">
                                    <input type="email" id="txtEmail" runat="server" class="form-control form-opacity" placeholder="Email" required="required" />
                                </div>
                                <div class="col-md-6">
                                    <input type="text" id="txtNumber" runat="server" class="form-control form-opacity" placeholder="Phone Number" required="required" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="row">
                                    What is your favorite spa service? (You can select more than one choice) 
                                </div>
                                <div class="col-md-6">
                                    <div class="checkbox">
                                        <label>
                                            <input id="cbHair" runat="server" type="checkbox" value="Hair" />Hair</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="checkbox">
                                        <label>
                                            <input id="cbNail" runat="server" type="checkbox" value="Nail" />Nail</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="checkbox">
                                        <label>
                                            <input id="cbFacial" runat="server" type="checkbox" value="Facial" />Facial</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="checkbox">
                                        <label>
                                            <input id="cbEyelash" runat="server" type="checkbox" value="Eyelash" />Eyelash</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="checkbox">
                                        <label>
                                            <input id="cbMassage" runat="server" type="checkbox" value="Massage" />Massage</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="checkbox">
                                        <label>
                                            <input id="cbWaxing" runat="server" type="checkbox" value="Waxing" />Waxing</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="checkbox">
                                        <label>
                                            <input id="cbProfessional" runat="server" type="checkbox" value="Professional Makeup" />Professional Makeup</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="checkbox">
                                        <label>
                                            <input id="cbPermanent" runat="server" type="checkbox" value="Permanent Makeup" />Permanent Makeup</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="checkbox">
                                        <label>
                                            <input id="cbSpa" runat="server" type="checkbox" value="Spa Party" />Spa Party</label>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="txtOther">Other:</label>
                                        <textarea class="form-control" rows="5" id="txtOther" runat="server"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" class="btn btn-white btn-rounded" Text="Submit" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="row">THIS CONTEST IS OPEN TO ONTARIO RESIDENTS ONLY AND IS GOVERNED BY CANADIAN LAW. The contest begins on January 1st, 2016 at 12:00:01 a.m. ET, and ends on January 31st, 2016 at 11:59:59 p.m. ET. No purchase necessary to enter or win. One entry per customer. Valid entry must have your first and last name, valid email address and valid telephone number, and reply to survey question. Must be 18 year old or over. Must be a resident of the province of Ontario. Two winners will be selected and will be notified of the winning by February 15th, 2016. An ID must be presented to claim the prize(s). You must answer a simple skill testing question to claim your prize(s). You will be informed of your winning via telephone or email. </div>
                                <div class="row">By entering the contest and clicking on submit, you authorize Young & Beautiful Salon Spa to contact you via phone or electronic communication. By entering this contest, each entrant expressly consents to Young & Beautiful Salon Spa, their agents and/or representatives, storing, sharing and using the personal information submitted with his/her contest entry only for the purpose of administering the contest and in accordance with Young & Beautiful Salon & Spa privacy policy, unless the entrant otherwise agrees.</div>
                                <div class="row">Young & Beauty Salon Spa reserves the right, to withdraw, amend or suspend this contest (or to amend these Rules) in any way, in the event of an error, technical problem, computer virus, bugs, tampering, unauthorized intervention, fraud, technical failure or any other cause beyond the reasonable control of Young & Beauty Salon Spa that interferes with the proper conduct of this contest as contemplated by these Rules. Any attempt to deliberately damage any website or to undermine the legitimate operation of this contest in any way (as determined by Young & Beauty Salon Spa in their sole and absolute discretion) is a violation of criminal and civil laws and should such an attempt be made, Young & Beauty Salon Spa reserves the right to seek remedies and damages to the fullest extent permitted by law. Young & Beauty Salon Spa reserves the right to cancel, amend or suspend this contest, or to amend these Rules, in any way without prior notice or obligation, in the event of any accident, printing, administrative, or other error of any kind, or for any other reason whatsoever. Without limiting the generality of the forgoing, Young & Beauty Salon Spa reserves the right, in their sole and absolute discretion, to administer an alternate test of skill as it deems appropriate based on the circumstances and/or to comply with applicable law.</div>
                                <div class="row">Young & Beauty Salon Spa reserves the right, in their sole and absolute discretion, and without prior notice, to adjust any of the dates and/or timeframes stipulated in these Rules, to the extent necessary, for purposes of verifying compliance by any entrant or contest entry with these Rules, or as a result of any technical or other problems, or in light of any other circumstances which, in the opinion of Young & Beauty Salon Spa, in their sole and absolute discretion, affect the proper administration of the contest as contemplated in these Rules, or for any other reason.</div>
                            </div>
                        </form>
                    </div>

                    <!-- Write Us -->
                    <!-- Write Us End -->

                </div>
                <!-- Row End -->
            </div>
        </section>
        <!-- Contacts End -->
        <!-- Title -->
        <!-- Title End -->
        <!--Reviews-->
        <!-- Reviews End -->
        <!-- Footer -->
        <div class="footer image_bck">

            <!-- Container End -->
            <!-- Footer Copyrights -->
            <div class="footer_end white_txt image_bck" data-color="#5fc7ae">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-4">
                            <a href="http://www.9cmarketing.com/">  <span class="sub">&copy; Copyright 2015 - Design by 9C Marketing </span></a>
                        </div>

                        <div class="col-sm-4">
                            <div id="mc_embed_signup" style="background: #5fc7ae none repeat scroll 0 0 !important;">
                                <form action="//facebook.us11.list-manage.com/subscribe/post?u=01b7b6dcd807d4562015e49a3&amp;id=371dae5870" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
                                    <div id="mc_embed_signup_scroll">
                                        <div class="mc-field-group">
                                            <h4 class="newsletter_title" style="margin: 0">
                                                Stay informed with our newsletter
                                            </h4>
                                            <div class="row">
                                                <div class="col-sm-9">
                                                    <input type="email" value="" name="EMAIL" class="required email form-control form-opacity no-margin newsletter_input" id="mce-EMAIL">
                                                </div>
                                                <div class="col-sm-3">
                                                    <input for="txtEmail" style="margin:0 !important" type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe" class="btn btn-white btn-rounded">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div id="mce-responses" class="clear">
                                                    <div class="response" id="mce-error-response" style="display: none"></div>
                                                    <div class="response" id="mce-success-response" style="display: none"></div>
                                                </div> <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
                                                <div class="clear" style="position: absolute; left: -5000px;" aria-hidden="true">
                                                    <input type="text" id="txtEmail" name="b_01b7b6dcd807d4562015e49a3_371dae5870" tabindex="-1" value="">
                                                </div>
                                                <div class="form-tip">
                                                    <i class="fa fa-info-circle"></i> By subscribing, you authorize us to contact you via phone or electronic communication.
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-4 text-right">
                            <ul class="list-inline social-list">

                                <li>
                                    <a href="https://www.facebook.com/youngbeautifulsalonspa/" data-placement="top" title="Facebook">
                                        <img src="images/icon-face.png" width="100%" />
                                        <!--<i class="ti-facebook"></i>-->
                                    </a>
                                </li>
                                <li>
                                    <a href="https://www.instagram.com/youngbeautifulsalonspa/" data-placement="top" title="Instagram">
                                        <img src="images/icon-ins.jpeg" width="100%" />
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Copyrights End -->


        </div>
        <!-- Footer End -->


    </div>
    <!-- Page End -->
    <!-- JQuery -->
    <script src="js/jquery-1.11.3.min.js"></script>
    <!-- WL Carousel JS -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="js/bootstrap.min.js"></script>
    <!-- PrefixFree -->
    <script src="js/prefixfree.min.js"></script>
    <!-- Magnific Popup core JS file -->
    <script src="js/jquery.magnific-popup.min.js"></script>
    <!-- Textillate -->
    <script src="js/jquery.lettering.js"></script>
    <!-- Countdown -->
    <script src="js/jquery.plugin.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <!-- JQuery UI -->
    <script src="js/jquery-ui.js"></script>
    <!-- Wow -->
    <script src="js/wow.js"></script>
    <!-- Masonry -->
    <script src="js/masonry.pkgd.min.js"></script>
    <!-- Theme JS -->
    <script src="js/script.js"></script>

    <script type='text/javascript' src='//s3.amazonaws.com/downloads.mailchimp.com/js/mc-validate.js'></script>
    <script type='text/javascript'>
        (function ($) {
            window.fnames = new Array();
            window.ftypes = new Array();
            fnames[0] = 'EMAIL';
            ftypes[0] = 'email';
        }(jQuery));
        var $mcj = jQuery.noConflict(true);
    </script>

</body>
</html>
