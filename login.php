<?php

include("connection.php");

 


?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE-edge">
        <meta name="viewport" content="width-device-width, initial-scale-1.0">
        <title> The Rental Webpage</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <header id ="header">
            <div class="header">
                <div class="header-navbar">
                    <div class="header-logo">
                        <h2>The Rental Webpage</h2>
                    </div>
                    <div class = "header-menu">
                        <ul>
                            <li><a href="index.html">Go Back To Home Page</a></li>
                        </ul>
                    </div>
                </div>
                <div class="header-text">
                    <h1>Login</h1>
                    <br><br>
                    <form action="">
                        username:
                        <input type="text" name="user">
                        <br>
                        password:
                        <input type="password" name="password">
                    </form>
                    
                </div>
            </div>
        </header>


        <footer id="footer">
            <div class="footer">
                <div class="footer-content">
                    <div class="page-title">
                        <h2>Footer</h2>
                    </div>
                    <div class="footer-copyright">
                        <p>Yazılacak yazılar</p>
                        <br>
                    </div>
                </div>
            </div>
        </footer>

        
    </body>
</html>