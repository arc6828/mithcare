<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
  <meta name="author" content="Creative Tim">
  <title>@yield('title')</title>
  <!-- Favicon -->
  <link href="{{ url('/') }}/argon-dashboard/assets/img/brand/favicon.png" rel="icon" type="image/png">
  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <!-- Icons -->
  <link href="{{ url('/') }}/argon-dashboard/assets/vendor/nucleo/css/nucleo.css" rel="stylesheet">
  <link href="{{ url('/') }}/argon-dashboard/assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">
  <!-- Argon CSS -->
  <link type="text/css" href="{{ url('/') }}/argon-dashboard/assets/css/argon.css?v=1.0.0" rel="stylesheet">
  <!-- Datatable CSS -->
  <!--link type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css" rel="stylesheet"-->
  <link type="text/css" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>

<body>
  @include('layouts/argon-dashboard/sidenav')
  <!-- Main content -->
  <div class="main-content">
    @include('layouts/argon-dashboard/top-navbar')

    <!-- Header -->
    <div class="header bg-gradient-primary pb-8 pt-5 pt-md-8">
      <div class="container-fluid">
        <div class="header-body">
          <!-- Card stats -->
          @yield('header')
        </div>
      </div>
    </div>

    <!-- Page content -->
    <div class="container-fluid mt--7">
      @yield('content')

      <!-- Footer -->
      <footer class="footer">
        <div class="row align-items-center justify-content-xl-between">
          <div class="col-xl-6">
            <div class="copyright text-center text-xl-left text-muted">
              &copy; 2018 <a href="https://www.creative-tim.com" class="font-weight-bold ml-1" target="_blank">Creative Tim</a>
            </div>
          </div>
          <div class="col-xl-6">
            <ul class="nav nav-footer justify-content-center justify-content-xl-end">
              <li class="nav-item">
                <a href="https://www.creative-tim.com" class="nav-link" target="_blank">Creative Tim</a>
              </li>
              <li class="nav-item">
                <a href="https://www.creative-tim.com/presentation" class="nav-link" target="_blank">About Us</a>
              </li>
              <li class="nav-item">
                <a href="http://blog.creative-tim.com" class="nav-link" target="_blank">Blog</a>
              </li>
              <li class="nav-item">
                <a href="https://github.com/creativetimofficial/argon-dashboard/blob/master/LICENSE.md" class="nav-link" target="_blank">MIT License</a>
              </li>
            </ul>
          </div>
        </div>
      </footer>
    </div>
  </div>
  <!-- Argon Scripts -->
  <!-- Core -->
  <script src="{{ url('/') }}/argon-dashboard/assets/vendor/jquery/dist/jquery.min.js"></script>
  <script src="{{ url('/') }}/argon-dashboard/assets/vendor/bootstrap/dist/js/bootstrap.min.js"></script>
  <!-- Optional JS -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.23.0/moment.min.js"></script>
  <!--script src="https://code.jquery.com/jquery-3.3.1.js"></script-->
  <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
  @yield('optional-js')
  <!-- Argon JS -->
  <script src="{{ url('/') }}/argon-dashboard/assets/js/argon.js?v=1.0.0"></script>


</body>

</html>
