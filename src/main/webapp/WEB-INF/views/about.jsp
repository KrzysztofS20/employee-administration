<%@include file="dynamic/css.jspf"%>

  <!-- Template Main CSS File -->
  <link href="<c:url value="/../resources/css/style_nav.css"/> " rel="stylesheet">

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
    <!-- Uncomment below if you prefer to use an image logo -->
    <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

    <nav id="navbar" class="navbar" >
      <ul>
        <li><a class="nav-link active" href="<c:url value="/about"/>">About</a></li>
        <li><a class="nav-link " href="<c:url value="/services"/>">Services</a></li>
        <li><a class="nav-link  " href="<c:url value="/portfolio"/>">Portfolio</a></li>
        <li><a class="nav-link " href="<c:url value="/contact"/>">Contact</a></li>
      </ul>
      <i class="bi bi-list mobile-nav-toggle"></i>
    </nav><!-- .navbar -->

  </div>
</header><!-- End Header -->

<main id="main">

  <!-- ======= About Section ======= -->
  <c:forEach items="${user}" var="user1">
  <section id="about" class="about-mf sect-pt4 route">
    <div  class="container">
      <div id="block" class="row">
        <div class="col-sm-12">
          <div class="box-shadow-full">
            <div class="row">
              <div class="col-md-6">
                <div class="row">
                  <div class="col-sm-6 col-md-5">
                    <div class="about-img">
                      <img src="../resources/img/testimonial-2.jpg" class="img-fluid rounded b-shadow-a" alt="">
                    </div>
                  </div>

                  <div class="col-sm-6 col-md-7">
                    <div class="about-info">
                      <p><span class="title-s">Name: </span> <span>${user1.name} ${user1.surname}</span></p>
                      <p><span class="title-s">Profile: </span> <span>${user1.profile}</span></p>
                      <p><span class="title-s">Email: </span> <span>${user1.email}</span></p>
                      <p><span class="title-s">Phone: </span> <span>${user1.phone}</span></p>
                    </div>
                  </div>
                </div>
                <div class="skill-mf">
                  <p class="title-s">Skill</p>
                  <c:forEach items="${skill}" var="skill1">
                    <div id="content" data-bs-toggle="modal" data-bs-target="#skille${skill1.id}">


                      <span id="upper">${skill1.name}</span> <span class="pull-right">${skill1.value}%</span>
                      <div class="progress">
                        <div class="progress-bar" role="progressbar" style="width: ${skill1.value}%;"
                             aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"></div>
                      </div>


                    </div>
                  </c:forEach>
                </div>
              </div>
              <div class="col-md-6">
                <div class="about-me pt-4 pt-md-0">
                  <div class="title-box-2">
                    <h5 class="title-left ">
                      About me
                    </h5>
                  </div>
                  <p class="lead">
                  ${user1.aboutMe}
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </c:forEach>
  </section><!-- End About Section -->

</main><!-- End #main -->

<div class="container d-flex align-items-center justify-content-between">
  <div></div>
  <a href="<c:url value="/aboutEdit"/>" type="button"  class="button button-a button-big button-rouded align-self-center"><h4 class="text-white" style="margin-bottom: 0">EDIT</h4></a>
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


<%@include file="dynamic/js.jspf"%>

</body>

</html>