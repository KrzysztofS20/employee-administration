<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%@include file="dynamic/css.jspf" %>

<!-- Template Main CSS File -->
<link href="<c:url value="../resources/css/style_about_edit.css"/> " rel="stylesheet">

<!-- =======================================================
* Template Name: DevFolio - v4.3.0
* Template URL: https://bootstrapmade.com/devfolio-bootstrap-portfolio-html-template/
* Author: BootstrapMade.com
* License: https://bootstrapmade.com/license/
======================================================== -->


<!-- ======= Header ======= -->
<header id="header" class="fixed-top">
    <div class="container d-flex align-items-center justify-content-between">

        <h1 class="logo"><a href="<c:url value="/index"/>">DevFolio</a></h1>

    </div>
</header>
<!-- End Header -->

<main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about-mf sect-pt4 route">
        <div class="container">
            <c:forEach items="${user}" var="user">
                <form method="post" action='<c:url value="/editUser/${user.id}"/>'>
                    <div id="block" class="row">
                        <div class="col-sm-12">
                            <div class="box-shadow-full">
                                <div class="row">
                                    <div class="row">
                                        <div class="col-sm-6 col-md-5">
                                            <div class="about-img">
                                                <img src="../resources/img/testimonial-2.jpg"
                                                     class="img-fluid rounded b-shadow-a" alt="">
                                            </div>
                                        </div>


                                        <div class="col-sm-6 col-md-7">


                                            <div class="about-info">
                                                <p><span class="title-s">Name: </span> <input type="text" name="name"
                                                                                              value="${user.name}">
                                                </p>
                                                <p><span class="title-s">Surname: </span> <input type="text"
                                                                                                 name="surname"
                                                                                                 value="${user.surname}">
                                                </p>
                                                <p><span class="title-s">Profile: </span> <input type="text"
                                                                                                 name="profile"
                                                                                                 value="${user.profile}">
                                                </p>
                                                <p><span class="title-s">Email: </span> <input type="email" name="email"
                                                                                               value="${user.email}">
                                                </p>
                                                <p><span class="title-s">Phone: </span> <input type="text" name="phone"
                                                                                               value="${user.phone}">
                                                </p>
                                            </div>

                                        </div>


                                    </div>
                                    <div class="about-me pt-4 pt-md-0">
                                        <div class="title-box-2">
                                            <h5 class="title-left ">
                                                About me
                                            </h5>
                                        </div>
                                        <p class="lead">
                                        <div class="form-floating">
                                    <textarea class="form-control" name="aboutMe" rows="8"
                                              id="floatingTextarea">${user.aboutMe}
                                    </textarea>

                                        </div>
                                        </p>
                                    </div>
                                    <div class="col-2">
                                        <button type="submit" class="button button1-a  button-rouded">
                                            <h4
                                                    class="text-white" style="margin-bottom: 0">SAVE</h4></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </c:forEach>
        </div>


        <!-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX -->


        <div class="container">
            <div id="block" class="row">
                <div class="col-sm-12">
                    <div class="box-shadow-full">
                        <div class="row">

                            <div class="row">
                                <div class="col-sm-6 col-md-5">
                                    <h2>
                                        Skills
                                    </h2>
                                </div>
                            </div>
                            <div class="skill-mf">

                                <form name="send" method="post" action='<c:url value="/addSkill"/>'>
                                    <div class="row">
                                        <input id="skillName" class="col-4" type="text" name="name"
                                               placeholder="skill name">
                                        <input id="skillValue" class="col-4" type="text" name="value"
                                               placeholder="% value of knowledge">
                                        <div class="col-2">
                                            <button type="submit"
                                                    class="button button1-a  button-rouded"><h4
                                                    class="text-white" style="margin-bottom: 0">ADD</h4></button>
                                        </div>
                                    </div>
                                </form>
                                <c:forEach items="${skills}" var="skill">
                                    <div id="content" data-bs-toggle="modal" data-bs-target="#skille${skill.id}">


                                        <span id="upper">${skill.name}</span> <span
                                            class="pull-right">${skill.value}%</span>
                                        <div class="progress">
                                            <div class="progress-bar" role="progressbar" style="width: ${skill.value}%;"
                                                 aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>


                                    </div>
                                </c:forEach>

                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </div>

        <c:forEach items="${skills}" var="skill">
            <!-- Modal -->

            <div class="modal fade" id="skille${skill.id}" tabindex="-1" aria-labelledby="exampleModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog">

                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Change value</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <form name="editSkill" method="post" action='<c:url value="/editSkill/${skill.id}"/>'>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-6">
                                        <input name="id" type="hidden" value="${skill.id}">
                                        <input name="name" value="${skill.name}">
                                    </div>
                                    <div class="col-6">
                                        <input name="value" value="${skill.value}">
                                    </div>
                                </div>
                            </div>


                            <button type="submit" class="btn btn-primary button-rouded justify-content-center">Save
                            </button>
                        </form>
                        <form name="editSkill" method="post" action='<c:url value="/deleteSkill/${skill.id}"/>'>
                            <button type="submit" class="btn btn-danger button-rouded justify-content-center">Delete
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            </form>
        </c:forEach>

    </section><!-- End About Section -->

</main>
<!-- End #main -->

<div class="container d-flex align-items-center justify-content-between">
    <div class="col-1">

        <a href="<c:url value="/about"/>" type="button" class="button button2 button-a  button-rouded "><h4
                class="text-white" style="margin-bottom: 0">BACK</h4></a></div>
</div>




<form name="saveImage" method="post" action='<c:url value="/saveImage"/>' enctype="multipart/form-data">
    <div>
    <label>Photo</label>
    <input type="file" name="image" accept="image/png, image/jpeg"/>
    </div>
</form>




<!-- ======= Footer ======= -->
<div class="col-12"></div>

<footer class="foot">
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
</footer>
<!-- End Footer -->


<div id="preloader"></div>

<script src='<c:url value="../resources/js/button.js"/>'></script>

<%@include file="dynamic/js.jspf" %>

</body>

</html>