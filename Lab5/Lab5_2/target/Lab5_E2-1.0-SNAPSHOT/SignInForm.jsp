<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign In Form</title>
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        html{
            font-family: Arial , Helvetica, sans-serif;
        }
        /*body{*/
        /*    background: url("3096236_house_on_the_hill-wallpaper-1920x1080.jpg")  ;*/
        /*}*/
        #container{
            width: 360px;
            top: 50%;
            position: absolute;
            left: 50%;
            margin-left: -180px;
            margin-top: -280px;
            padding: 32px;
            border-radius: 8px;
            text-align: center;
            background: #ffffff;
        }
        #container .form-title{
            font-size: 28px;
            margin: 12px 0;

        }
        #container #sign-in-form .input{
            padding: 16px;
            width: 100%;
            margin: 12px 0;
            border-radius: 50px;
            border: none;
            box-shadow: #c0c1bd  0px 0px 12px 0px;
            outline: none;
            cursor: pointer;
            font-weight: bold;
        }
        #container .btn-sign-in{
            padding: 12px 40px;
            border-radius: 50px;
            border: none;
            cursor: pointer;
            margin-top: 20px;
            background: #bd59d7;
            color: #fff;
            font-size: 15px;
            text-transform: uppercase;
            box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease 0s;
        }
        #container .btn-sign-in:hover{
            background-color: #2EE59D;
            box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
        }
        #container .title-other-sign-in{
            margin-top: 64px;
            color: #BBBBBB;
            font-size: 14px;
        }
        #container .icon-sign-in{
            margin-top: 28px;
        }
        #container .icon-sign-in .icon{
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background-color: #fff;
            box-shadow: #c0c1bd  0px 0px 12px 0px;
            margin: 0 4px;
            display: inline-block;

        }
        #container .icon-sign-in .icon i{
            text-align: center;
            line-height: 50px;
            width: 50px;
            font-size: 20px;
            color: #AFB1B3;
        }#container .icon-sign-in .icon i:hover{
             color: #bd59d7;
         }

        #container > a{
            text-decoration: none;

        }
        #container .title-sign-up{
            margin-top: 96px;
            color: #000;
            opacity: 0.8;
            font-weight: bold;

        }
    </style>
</head>
<body>
<div id="container">
    <h3 class="form-title">Sign In</h3>
    <form id="sign-in-form" method="post" action = "Login">
        <input name="username" type="text" placeholder="username or email" class="input input- account">
        <input name="password" type="password" placeholder="password" class="input input-password">
        <button type="submit" class="btn-sign-in">Sign in</button>
    </form>
    <p class="title-other-sign-in">Or login with</p>
    <div class="icon-sign-in">
        <div class="icon">
            <a href="#" class="icon-fa"><i class="fa fa-facebook"></i></a>
        </div>
        <div class="icon">
            <a href="#" class="icon-google"><i class="fa fa-google"></i></a>

        </div>
    </div>
    <a href="#" ><p class="title-sign-up">Sign up</p></a>
</div>
</body>
</html>
