<%@include file="dynamic/css.jspf"%>

  <!-- Template Main CSS File -->
  <link href="../resources/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: DevFolio - v4.3.0
  * Template URL: https://bootstrapmade.com/devfolio-bootstrap-portfolio-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

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
          <li><a class="nav-link " href="<c:url value="/services"/>">Services</a></li>
          <li><a class="nav-link  " href="<c:url value="/portfolio"/>">Portfolio</a></li>
          <li><a class="nav-link " href="<c:url value="/contact"/>">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section =======  ../resources/img/hero-bg.jpg -->
  <div id="hero" class="hero route bg-image img" style="background-image: url(<c:url value="../resources/img/hero-bg.jpg"/>)">
    <div class="overlay-itro"></div>
    <div class="hero-content display-table">
      <div class="table-cell">
        <div class="container">
          <!--<p class="display-6 color-d">Hello, world!</p>-->
          <h1 class="hero-title mb-4">I am Morgan Freeman</h1>
          <p class="hero-subtitle"><span class="typed" data-typed-items="Designer, Developer, Freelancer, Photographer"></span></p>
          <!-- <p class="pt-3"><a class="btn btn-primary btn js-scroll px-4" href="#about" role="button">Learn More</a></p> -->
        </div>
      </div>
    </div>
  </div><!-- End Hero Section -->

  <main id="main">

  </main><!-- End #main -->


  <div id="preloader"></div>


<%@include file="dynamic/js.jspf"%>

</body>

</html>