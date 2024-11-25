<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Home</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        .header {
            display: block;
            height: 20vh;
            width: 65vw;
            margin: 0 auto;

        }

        .header .title {
            height: 80%;
            display: block;
            background-color: #87CEEB;
        }

        .header .title h1 {
            padding: 5vh;
            color: white;
            font-family: 'Times New Roman', Times, serif;
        }

        .header .nav {
            height: 20%;
            display: block;
            background-color: #36454F;
        }

        .header .nav ul {
            display: flex;
            flex-direction: row;
            padding:0.5vh
        }

        .url-link {
            font-size: small;
            text-decoration: none;
            color: white;
            margin: 1vh 10w;
            padding: 1vh 1vw;

        }

        .url-link:hover {
            text-decoration: underline;
        }

        .main {
            background: url("./background.avif");
            background-repeat: no-repeat;
            width: 65vw;
            margin: 0 auto;
            display: grid;
            grid-template-columns: 1fr 4fr;
        }

        .main .side-navigation {
            height: 34vh;
        }

        .nav-link {
            opacity: 0.7;
            list-style: none;
            text-align: center;
            width: 100%;
            background-color: blue;
            border: 1px solid white;
        }

        .nav-link:hover {
            color: black;
            background-color: #cfc340;
        }

        .nav-url {
            color: white;
            font-size: small;
            text-decoration: none;
        }

        .main .main-page {
            height: 60vh;
            text-align: center;
        }

        select,
        input[type="date"] {
            text-align: center;
            width: 10vw;
            border: 2px solid white;
            box-shadow: -1px -1px 5px gray;
            border-radius: 3px;
            height: 4vh;
        }

        .main .group-form {
            position: relative;
            border-radius: 5px;
            opacity: 0.5;
            background-color: #36454F;
            height: 58vh;
            margin: 1vh;
        }

        .main .main-page h1 {
            margin: 3vh auto;
        }

        .footer {
            width: 65vw;
            margin: 0 auto;
            height: 20vh;
            background-color: #dbdee0;
        }

        .footer .link-copyright ul {
            list-style: none;
            display: flex;
        }

        .footer .link-copyright ul li {
            margin: 5vh auto;
            font-size: small;
            color: black;
        }

        .trains {
            overflow: hidden;
            overflow-y: scroll;
            height: 100%;
        }

        table {
            width: 100%;
        }

        table tr th {
            color: white;
            background-color: red;
        }
        table tr{
            opacity: 0.8;
            background-color: rgb(233, 214, 178);
        }
        .btn {
            font-size: small;
            width: 100%;
            cursor: pointer;
            color: white;
            background-color: #2929d3;
            border: 2px solid blue;
        }

        .btn:hover{
            background-color: red;
            border: 2px solid red;
        }

        @media Screen and (max-width:867px) {
            .header {
                width: 100vw;
            }

            .main {
                width: 100vw;
            }

            .footer {
                width: 100vw;
            }
        }
        @media Screen and (max-width:393px) {
            .header {
                width: 100vw;
            }
            .main .side-navigation{
                display: none;
            }
            table{
                width: 100vw;
            }
            .footer {
                width: 100vw;
            }
        }
    </style>
</head>
<body>
 <div class="header">
        <div class="title">
            <h1>Ticket Online</h1>
        </div>
        <div class="nav">
            <ul type="none">
                <li>
                    <a href="#" class="url-link"><i class="fa fa-home"></i> Home</a>
                </li>
                <li>
                    <a href="#" class="url-link"><i class="fa fa-phone"></i> Support</a>
                </li>
                <li>
                    <a href="#" class="url-link"><i class="fa fa-lock"></i> Change Password</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/Logout" class="url-link"><i class="fa fa-sign-out"></i> Sign Out</a>
                </li>
            </ul>
        </div>
    </div>
    <div class="main">
        <div class="side-navigation">
            <ul type="none">
                <li class="nav-link"><a href="#" class="nav-url">New Booking</a></li>
                <li class="nav-link"><a href="#" class="nav-url">Payment Status</a></li>
                <li class="nav-link"><a href="#" class="nav-url">E-Wallet Balance</a></li>
                <li class="nav-link"><a href="#" class="nav-url">Flight Booking</a></li>
                <li class="nav-link"><a href="#" class="nav-url">PNR Status</a></li>
                <li class="nav-link"><a href="#" class="nav-url">Download Ticket</a></li>
                <li class="nav-link"><a href="#" class="nav-url">Add Payment Method</a></li>
                <li class="nav-link"><a href="#" class="nav-url">Status</a></li>
                <li class="nav-link"><a href="#" class="nav-url">Hotel Booking</a></li>
                <li class="nav-link"><a href="#" class="nav-url">IRCTC</a></li>
            </ul>
        </div>
        <div class="main-page">
            <div class="trains">
                <form action="./paymentPage.html">
                    <table>
                        <tr>
                            <th>Train no</th>
                            <th>Departed Form</th>
                            <th>Reached to</th>
                            <th>Fare</th>
                            <th>Date</th>
                            <th>Payment</th>
                        </tr>
                        <c:forEach var="items" items="${trains}">
                        <tr>
                            <td>${items.getTrain_no()}</td>
                            <td>${items.getDeparted_form()}</td>
                            <td>${ items.getReached_to()}</td>
                            <td>${items.getFare()}</td>
                            <td>${items.getDate()}</td>
                            <td><button type="submit" class="btn">pay</button></td>
                        </tr>
                        </c:forEach>
                        
                    </table>
                </form>
            </div>
        </div>
    </div>
    <div class="footer">
        <div class="link-copyright">
            <ul type="none">
                <li>&copy; Copy Right Law 2020</li>
            </ul>
        </div>
    </div>
</body>
</html>