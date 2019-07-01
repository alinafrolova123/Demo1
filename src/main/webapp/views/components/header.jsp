<%@ page contentType=" text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>ItalianFood Restaurant - Home</title>
    <link rel="icon" href="${pageContext.request.contextPath}/static/img/Fevicon.png" type="image/png"/>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/vendors/bootstrap/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/vendors/themify-icons/themify-icons.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/vendors/owl-carousel/owl.theme.default.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/vendors/owl-carousel/owl.carousel.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/vendors/Magnific-Popup/magnific-popup.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css"/>
</head>

<!--================ Header Menu Area start =================-->
<header class="header_area" style="background-color: #E9967A;">
    <div class="main_menu">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container box_1620">
                <a class="navbar-brand logo" href="${pageContext.request.contextPath}/home">
                    <img src="/static/img/2Restoran1.png" alt=""/>
                </a>

                <div class="collapse navbar-collapse offset" idUser="navbarSupportedContent">
                    <ul class="nav navbar-nav menu_nav justify-content-end">
                        <li class="nav-item active">
                            <a class="nav-link" href="${pageContext.request.contextPath}/home">
                                Home
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/about">
                                About
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/menu">Menu
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/contact">
                                Contact
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class=" button button-shadow mt-2 mt-lg-4"
                               href="${pageContext.request.contextPath}/login">Login
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class=" button button-shadow mt-2 mt-lg-4"
                               href="${pageContext.request.contextPath}/registration">Registration
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</header>
<!--================Header Menu Area =================-->
