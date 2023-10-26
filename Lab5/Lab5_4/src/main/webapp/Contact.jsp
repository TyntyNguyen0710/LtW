<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Contact Form</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        html{
            font-family: Arial, Helvetica, sans-serif;
        }
        body{
            background: #BBBBBB;
        }
        #container{
            background: #fff;
            width: 650px;
            top: 50%;
            position: absolute;
            left: 50%;
            margin-left: -325px;
            margin-top: -290px;
            padding: 32px;
            border-radius: 4px;
        }
        #container .form-title{
            text-align: center;
            font-size: 28px;
            font-weight: 800;
            margin-bottom: 32px;
        }
        #contact-form label{
            padding: 12px;
            font-size: 12px;
            font-weight: bold;
            text-transform: uppercase;
        }
        #contact-form .input-box{
            border: none;
            padding: 12px;
            width: 100%;
            background: #f7f7f7;
        }
        #contact-form .input-box-service{
            font-weight: bold;
        }
        #contact-form .input-box-message{
            background: #fff;
        }

        #contact-form .form-input{
            margin: 8px 0;
            background: #f7f7f7;
            padding: 4px;
            border-radius: 8px;
        }
        #contact-form .input-email,
        #contact-form .input-phone{
            width: 49%;
            display: inline-block;
        }
        #contact-form .input-phone{
            float: right;
        }
        #contact-form .input-message{
            background: #fff;
            border: 1px solid #ccc;
            margin-top: 16px;
        }
        #contact-form .btn-sub{
            width: 100%;
            padding: 12px;
            border-radius: 50px;
            border: none;
            background: #333;
            color: #fff;
            margin-top: 20px;
            cursor: pointer;
            opacity: 0.9;
        }
        #contact-form .btn-sub:hover{
            opacity: 1;
        }
        .btn-sub i{
            margin-left: 8px;
        }
        .input-box:focus{
            outline: none;
        }
    </style>
</head>
<body>
<div>
    <div id="container">
        <h3 class="form-title">Contact Us</h3>
        <form id="contact-form" method = "post" action = "ContactForm">
            <div class="form-input input-name">
                <label>Full name *</label><br>
                <input name="name" type="text" placeholder="Enter Your Name" class="input-box input-box-name">
            </div>
            <div class="form-input input-email">
                <label>Email *</label><br>
                <input name="mail" type="email" placeholder="Enter Your Email" class="input-box input-box-email">
            </div>
            <div class="form-input input-phone">
                <label>Phone</label><br>
                <input name="phone" type="text" placeholder="Enter Number Phone" class="input-box input-box-phone">
            </div>
            <div class="form-input input-service">
                <label>Needed Service *</label><br>
                <select name="service" class="input-box input-box-service" id="service">
                    <option value="" disabled selected hidden >Please Chooses</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                </select>
            </div>
            <div class="form-input input-message">
                <label>Message</label><br>
                <textarea name="message" rows="5" placeholder="Your message here" class="input-box input-box-message"></textarea>
            </div>
            <button type="submit" class="btn-sub">Submit<i class="fa fa-arrow-right"></i></button>
        </form>

    </div>
</div>
</body>
</html>