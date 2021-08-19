<%@include file="dynamic/css.jspf" %>

<!-- Template Main CSS File -->
<link href="<c:url value="../resources/css/style_services.css"/> " rel="stylesheet">

<!-- =======================================================
* Template Name: DevFolio - v4.3.0
* Template URL: https://bootstrapmade.com/devfolio-bootstrap-portfolio-html-template/
* Author: BootstrapMade.com
* License: https://bootstrapmade.com/license/
======================================================== -->


<body>

<!-- ======= Header ======= -->
<header id="header" class="fixed-top">
    <div class="container d-flex align-items-center justify-content-between">

        <h1 class="logo"><a href="<c:url value="/index"/>">DevFolio</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

        <nav id="navbar" class="navbar">
            <ul>

                <li><a class="nav-link " href="<c:url value="/about"/>">About</a></li>
                <li><a class="nav-link active" href="<c:url value="/services"/>">Services</a></li>
                <li><a class="nav-link  " href="<c:url value="/portfolio"/>">Portfolio</a></li>
                <li><a class="nav-link " href="<c:url value="/contact"/>">Contact</a></li>
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->

    </div>
</header><!-- End Header -->


<main id="main">


    <!-- ======= Services Section ======= -->
    <section id="services" class="services-mf pt-5 route">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <h3 class="title-a"></h3>
                        <p class="subtitle-a"></p>
                    </div>
                </div>

                <div class="col-sm-12">
                    <div class="title-box text-center">
                        <h3 class="title-a">
                            Services
                        </h3>
                        <p class="subtitle-a">
                            Lorem ipsum, dolor sit amet consectetur adipisicing elit.
                        </p>
                        <div class="line-mf"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <c:forEach items="${servives}" var="serv">
                    <div class="col-md-4" data-bs-toggle="modal" data-bs-target="#edit${serv.id}">
                        <div class="service-box">
                            <div class="service-ico">
                                <span class="ico-circle"><i class="${serv.symbol}"></i></span>
                            </div>
                            <div class="service-content">
                                <h2 class="s-title">${serv.title}</h2>
                                <p class="s-description text-center">
                                        ${serv.description}
                                </p>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <div data-bs-toggle="modal" data-bs-target="#add"
             class="container d-flex align-items-center justify-content-between">
            <div></div>
            <button class="button button-a button-big button-rouded align-self-center"><h4 class="text-white"
                                                                                           style="margin-bottom: 0">
                EDIT</h4></button>
        </div>
    </section><!-- End Services Section -->

</main><!-- End #main -->

<c:forEach items="${servives}" var="serv">
    <div class="modal fade" id="edit${serv.id}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form method="post" action='<c:url value="/addServives"/>'>
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Edit services</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form name="editServ" method="post" action='<c:url value="/editServives/${serv.id}"/>'>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-4">
                                <h4>Title</h4>
                            </div>
                            <div class="col-8">
                                <input name="id" type="hidden" value="${serv.id}">
                                <input name="title" value="${serv.title}">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-4">
                                <h4>Description</h4>
                            </div>
                            <div class="col-8">
                                <div class="form-floating">
                                    <textarea class="form-control" name="description" rows="4" id="">${serv.description}
                                    </textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-4">
                                <h4>Choose symbol</h4>
                            </div>
                            <div class="col-8">
                                <div class="form-floating">
                                    <select class="form-select" name="symbol" aria-label="Default select example">
                                        <option <c:if test="${serv.symbol eq 'bi bi-briefcase'}">selected</c:if> value="bi bi-briefcase">Briefcase </option>
                                        <option <c:if test="${serv.symbol eq 'bi bi-card-checklist'}">selected</c:if> value="bi bi-card-checklist">Check list</option>
                                        <option <c:if test="${serv.symbol eq 'bi bi-bar-chart'}">selected</c:if> value="bi bi-bar-chart">Chart </option>
                                        <option <c:if test="${serv.symbol eq 'bi bi-binoculars'}">selected</c:if> value="bi bi-binoculars">Binoculars</option>
                                        <option <c:if test="${serv.symbol eq 'bi bi-brightness-high'}">selected</c:if> value="bi bi-brightness-high">Sun</option>
                                        <option <c:if test="${serv.symbol eq 'bi bi-calendar4-week'}">selected</c:if> value="bi bi-calendar4-week">Calendar</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>

                        <button type="submit" class="col-2 btn btn-primary button-rouded justify-content-center">Save
                        </button>
                    </form>
                        <form name="deleteServ" method="post" action='<c:url value="/deleteServives/${serv.id}"/>'>
                            <button type="submit" class="col-2 btn btn-danger button-rouded justify-content-center">Delete
                            </button>
                        </form>

                </form>
            </div>
        </div>
    </div>
</c:forEach>


<!-- Modal -->
<div class="modal fade" id="add" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form method="post" action='<c:url value="/addServives"/>'>
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add new services</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-4">
                            <h4>Title</h4>
                        </div>
                        <div class="col-8">
                            <input name="title" value="">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-4">
                            <h4>Description</h4>
                        </div>
                        <div class="col-8">
                            <div class="form-floating">
                                    <textarea class="form-control" name="description" rows="4" id="floatingTextarea"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-4">
                            <h4>Choose symbol</h4>
                        </div>
                        <div class="col-8">
                            <div class="form-floating">
                                <select class="form-select" name="symbol" aria-label="Default select example">
                                    <option selected value="bi bi-briefcase">Briefcase </option>
                                    <option value="bi bi-card-checklist">Check list</option>
                                    <option value="bi bi-bar-chart">Chart </option>
                                    <option value="bi bi-binoculars">Binoculars</option>
                                    <option value="bi bi-brightness-high">Sun</option>
                                    <option value="bi bi-calendar4-week">Calendar</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary button-rouded justify-content-center">Save
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>


<!-- ======= Footer ======= -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="copyright-box">
                    <p class="copyright">&copy; Copyright <strong>DevFolio</strong>. All Rights Reserved</p>
                    <div class="credits">
                        <!--
                        All the links in the footer should remain intact.
                        You can delete the links only if you purchased the pro version.
                        Licensing information: https://bootstrapmade.com/license/
                        Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=DevFolio
                      -->
                        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer><!-- End  Footer -->

<div id="preloader"></div>

<%@include file="dynamic/js.jspf" %>

</body>

</html>