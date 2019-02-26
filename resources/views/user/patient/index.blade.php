@extends('user/layout/default')

@section('header')
<div class="row">
  <div class="col-xl-3 col-lg-6 card-statstic">
    <a href="#" class="link">
      <div class="card card-stats mb-4 mb-xl-0">
      <div class="card-body">
        <div class="row">
          <div class="col">
            <h5 class="card-title text-uppercase text-muted mb-0">Traffic</h5>
            <span class="h2 font-weight-bold mb-0">350,897</span>
          </div>
          <div class="col-auto">
            <div class="icon icon-shape bg-danger text-white rounded-circle shadow">
              <i class="fas fa-chart-bar"></i>
            </div>
          </div>
        </div>
        <p class="mt-3 mb-0 text-muted text-sm">
          <span class="text-success mr-2"><i class="fa fa-arrow-up"></i> 3.48%</span>
          <span class="text-nowrap">Since last month</span>
        </p>
      </div>
    </div>
    </a>
  </div>
  <div class="col-xl-3 col-lg-6 card-statstic">
    <a href="#" class="link">
      <div class="card card-stats mb-4 mb-xl-0">
      <div class="card-body">
        <div class="row">
          <div class="col">
            <h5 class="card-title text-uppercase text-muted mb-0">New users</h5>
            <span class="h2 font-weight-bold mb-0">2,356</span>
          </div>
          <div class="col-auto">
            <div class="icon icon-shape bg-warning text-white rounded-circle shadow">
              <i class="fas fa-chart-pie"></i>
            </div>
          </div>
        </div>
        <p class="mt-3 mb-0 text-muted text-sm">
          <span class="text-danger mr-2"><i class="fas fa-arrow-down"></i> 3.48%</span>
          <span class="text-nowrap">Since last week</span>
        </p>
      </div>
    </div>
    </a>
  </div>
  <div class="col-xl-3 col-lg-6 card-statstic">
    <a href="#" class="link">
      <div class="card card-stats mb-4 mb-xl-0">
      <div class="card-body">
        <div class="row">
          <div class="col">
            <h5 class="card-title text-uppercase text-muted mb-0">Sales</h5>
            <span class="h2 font-weight-bold mb-0">924</span>
          </div>
          <div class="col-auto">
            <div class="icon icon-shape bg-yellow text-white rounded-circle shadow">
              <i class="fas fa-users"></i>
            </div>
          </div>
        </div>
        <p class="mt-3 mb-0 text-muted text-sm">
          <span class="text-warning mr-2"><i class="fas fa-arrow-down"></i> 1.10%</span>
          <span class="text-nowrap">Since yesterday</span>
        </p>
      </div>
    </div>
    </a>
  </div>
  <div class="col-xl-3 col-lg-6 card-statstic">
    <a href="#" class="link">
      <div class="card card-stats mb-4 mb-xl-0">
      <div class="card-body">
        <div class="row">
          <div class="col">
            <h5 class="card-title text-uppercase text-muted mb-0">Performance</h5>
            <span class="h2 font-weight-bold mb-0">49,65%</span>
          </div>
          <div class="col-auto">
            <div class="icon icon-shape bg-info text-white rounded-circle shadow">
              <i class="fas fa-percent"></i>
            </div>
          </div>
        </div>
        <p class="mt-3 mb-0 text-muted text-sm">
          <span class="text-success mr-2"><i class="fas fa-arrow-up"></i> 12%</span>
          <span class="text-nowrap">Since last month</span>
        </p>
      </div>
    </div>
    </a>
  </div>
</div>
@endsection

@section('content')

<div class="row mt-5">
  <div class="col-xl-12 mb-5 mb-xl-0">
    <div class="card shadow">
      <div class="card-header border-0">
        <div class="row align-items-center">
          <div class="col">
            <h3 class="mb-0">Patients</h3>
          </div>
          <div class="col text-right">
            <a href="#!" class="btn btn-sm btn-primary">New</a>
          </div>
        </div>
      </div>
      <div class="table-responsive" style="padding:20px;">
        <!-- Patient table -->
        <table class="table align-items-center table-flush" id="table-patient">

        </table>
      </div>
    </div>
  </div>
</div>
@endsection

@section('optional-js')
<script src="{{ url('/') }}/theme-argon/assets/vendor/clipboard/dist/clipboard.min.js"></script>
<script>
  $(document).ready(function() {
    var dataSet = [];
    //console.log('@json($table_patient)');
    var patients = JSON.parse('@json($table_patient)');
    console.log(patients);
    patients.forEach(function(element, index){
      dataSet.push([
        element.patient_id,
        '<a href="{{ url('/') }}/user/patient/'+element.patient_id+'">'+element.patient_name+'</a>',
        element.gender,
        element.date_of_birth,
      ]);
    });
    $('#table-patient').DataTable({
      data: dataSet,
      columns: [
          { title: "Patient id" },
          { title: "Patient name" },
          { title: "Gender" },
          //{ title: "Blood type" },
          //{ title: "Citizen ID" },
          { title: "Birthday" },
          //{ title: "Age" },
          //{ title: "Address" },
          //{ title: "Phone" },
          //{ title: "Medical condition" },
          //{ title: "Drug allergy" }
      ],
    });
  } );
</script>
@endsection
