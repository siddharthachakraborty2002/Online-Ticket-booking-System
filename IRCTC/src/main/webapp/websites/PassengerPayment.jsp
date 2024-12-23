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
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
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
            padding: 0.5vh;
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



        .records {
            background-color: #f2f4f4;
            margin: 5vh auto;
            overflow: hidden;
            overflow-y: scroll;
            height: 14vh;
            width: 90%;
        }

        table {
            width: 100%;
        }

        table tr th {
            color: white;
            background-color: rgb(155, 3, 3);
        }

        table tr {
            background-color: rgb(213, 233, 251);
        }

        .btn {
            margin: 1vh auto;
            font-style: italic;
            font-size: medium;
            width: 10vw;
            height: 5vh;
            cursor: pointer;
            color: white;
            background-color: rgb(117, 6, 6);
            border-bottom: 3px solid rgb(114, 113, 113);
            border-right: 3px solid rgb(107, 105, 105);
            box-shadow: 5px 5px 5px #a0a1a1;
        }

        .btn:active {
            background-color: rgb(98, 5, 5);
            border-top: 2px solid rgb(114, 113, 113);
            border-bottom: 7px solid rgb(114, 113, 113);
            border-right: 7px solid rgb(114, 113, 113);
            
        }

        .trains h1 {
            margin: 0 auto;
            color: rgb(136, 6, 6);
            font-size: 10vh;

        }

        input[type=submit] {
            background: none;
            font-size: small;
            border: none;
            color: blue;
            text-decoration: underline;
            cursor: pointer;
        }

        @media Screen and (max-width:867px) {
            .header {
                width: 100vw;
            }

            .side-navigation {
                display: none;
            }

            .records {
                margin: 4vh auto;
                width: 100vw;
            }

            table {
                width: 100%;
            }

            .main {
                width: 100vw;
            }

            .footer {
                width: 100vw;
            }

            .btn {
                width: 30vw;
                height: 5vh;
            }
        }

        @media Screen and (max-width:393px) {
            .header {
                width: 100vw;
            }

            .main .side-navigation {
                display: none;
            }

            .records {
                margin: 3vh auto;
                width: 100vw;
            }

            table {
                width: 100vw;
            }

            .footer {
                width: 100vw;
            }

            .btn {
                width: 40vw;
                height: 5vh;
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
                   <a href="<%=request.getContextPath()%>/HomeController" class="url-link"><i class="fa fa-home"></i> Home</a>
                </li>
                <li>
                    <a href="#" class="url-link"><i class="fa fa-phone"></i> Support</a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/ChangePasswordNavigator" class="url-link"><i class="fa fa-lock"></i> Change Password</a>
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
                <li class="nav-link"><a href="<%=request.getContextPath()%>/NewBookingController" class="nav-url">New Booking</a></li>
                <li class="nav-link"><a href="<%=request.getContextPath()%>/StatusController" class="nav-url">Payment Status</a></li>
                <li class="nav-link"><a href="<%=request.getContextPath()%>/WalletController" class="nav-url">E-Wallet Balance</a></li>
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

                </form>
                <table>

                    <tr>
                        <th>Train No.</th>
                        <th>Departed</th>
                        <th>Arrived</th>
                        <th>Date</th>
                        <th>Status</th>

                    </tr>
                           
                    <tr>
                        <td>${train_no}</td>
                        <td>${departed_form}</td>
                        <td>${reached_to}</td>
                        <td>${date}</td>
                        <form action="#">
                            <input type="hidden" name="aadher" value="123">
                            <td><input type="submit" value="Edit" /></td>
                        </form>
                    </tr>

                </table>
                <div class="records">
                    <table>

                        <tr>
                            <th>Aadhar No.</th>
                            <th>Name</th>
                            <th>Age</th>
                            <th>Gender</th>
                            <th>Status</th>

                        </tr>

                          <c:forEach var="items" items="${passengers}">
                        <tr>
                            <td>${items.getAadher_no()}</td>
                            <td>${items.getName()}</td>
                            <td>${ items.getAge()}</td>
                            <td>${items.getGender()}</td>
                            <form action="<%=request.getContextPath()%>/AddSinglePassengerController" method="POST">
                                <input type="hidden" name="aadher" value="${items.getAadher_no()}">
                                <input type="hidden" name="name" value="${items.getName()}">
                                <input type="hidden" name="age" value="${items.getAge()}">
                                <input type="hidden" name="gender" value="${items.getGender()}">
                                <td><input type="submit" value="add" /></td>
                            </form>
                        </tr>
                        </c:forEach>
                        

                    </table>
                </div>
                <div class="records">
                    <table>

                        <tr>
                            <th>Aadhar No.</th>
                            <th>Name</th>
                            <th>Age</th>
                            <th>Gender</th>
                            <th>Status</th>

                        </tr>

                         <c:forEach var="items" items="${addedPassengers}">
                        <tr>
                            <td>${items.getAadher_no()}</td>
                            <td>${items.getName()}</td>
                            <td>${ items.getAge()}</td>
                            <td>${items.getGender()}</td>
                            <form action="<%=request.getContextPath()%>/RemoveSinglePassenger" method="POST">
                                <input type="hidden" name="aadher" value="${items.getAadher_no()}">
                                <input type="hidden" name="name" value="${items.getName()}">
                                <input type="hidden" name="age" value="${items.getAge()}">
                                <input type="hidden" name="gender" value="${items.getGender()}">
                                <td><input type="submit" value="Remove" /></td>
                            </form>
                        </tr>
                        </c:forEach>

                    </table>
                </div>
                  <form action="<%=request.getContextPath()%>/TicketBookingController" method="POST">
                      <button class="btn">Next</button>
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