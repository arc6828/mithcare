@extends('user/layout/default')
@section('content')
<div class="row mt-5">
  <div class="col-xl-12 mb-5 mb-xl-0">
    <div class="card shadow">
      <div class="card-header border-0">
        <div class="row align-items-center">
          <div class="col">
            <h3 class="mb-0">Patient</h3>
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
