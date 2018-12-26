@extends('user/layout/default')
@section('content')
<div class="row">
  <div class="col-xl-4 order-xl-2 mb-5 mb-xl-0">
    <div class="card card-profile shadow">
      <div class="row justify-content-center">
        <div class="col-lg-3 order-lg-2">
          <div class="card-profile-image">
            <a href="#">
              <img src="{{ $patient->image }}" class="rounded-circle">
            </a>
          </div>
        </div>
      </div>
      <div class="card-header text-center border-0 pt-8 pt-md-4 pb-0 pb-md-4">
        <div class="d-flex justify-content-between">
          <a href="#" class="btn btn-sm btn-info mr-4">Connect</a>
          <a href="#" class="btn btn-sm btn-default float-right">Message</a>
        </div>
      </div>
      <div class="card-body pt-0 pt-md-4">
        <div class="row">
          <div class="col">
            <div class="card-profile-stats d-flex justify-content-center mt-md-5">
              <div>
                <span class="heading">22</span>
                <span class="description">Friends</span>
              </div>
              <div>
                <span class="heading">10</span>
                <span class="description">Photos</span>
              </div>
              <div>
                <span class="heading">89</span>
                <span class="description">Comments</span>
              </div>
            </div>
          </div>
        </div>
        <div class="text-center">
          <h3>
            {{ $patient->patient_name }}<span class="font-weight-light age">, 27</span>
          </h3>
          <div class="h5 font-weight-300">
            <i class="ni location_pin mr-2"></i>Bucharest, Romania
          </div>
          <div class="h5 mt-4">
            <i class="ni business_briefcase-24 mr-2"></i>Solution Manager - Creative Tim Officer
          </div>
          <div>
            <i class="ni education_hat mr-2"></i>University of Computer Science
          </div>
          <hr class="my-4" />
          <p>Ryan — the name taken by Melbourne-raised, Brooklyn-based Nick Murphy — writes, performs and records all of his own music.</p>
          <a href="#">Show more</a>
        </div>
      </div>
    </div>
  </div>
  <div class="col-xl-8 order-xl-1">
    <div class="card bg-secondary shadow">
      <div class="card-header bg-white border-0">
        <div class="row align-items-center">
          <div class="col-8">
            <h3 class="mb-0">Patient</h3>
          </div>
          <div class="col-4 text-right">
            <a href="#!" class="btn btn-sm btn-primary">Settings</a>
          </div>
        </div>
      </div>
      <div class="card-body">
        <form>
          <h6 class="heading-small text-muted mb-4">Patient information</h6>
          <div class="pl-lg-4">
            <div class="row">
              <div class="col-lg-6">
                <div class="form-group">
                  <label class="form-control-label" for="input-username">Username</label>
                  <input type="text" id="input-username" class="form-control form-control-alternative" placeholder="Username" value="">
                </div>
              </div>
              <div class="col-lg-6">
                <div class="form-group">
                  <label class="form-control-label" for="input-email">Email address</label>
                  <input type="email" id="input-email" class="form-control form-control-alternative" placeholder="">
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-6">
                <div class="form-group">
                  <label class="form-control-label" for="input-first-name">First name</label>
                  <input type="text" id="input-first-name" class="form-control form-control-alternative" placeholder="First name" value="{{ $patient->patient_name }}">
                </div>
              </div>
              <div class="col-lg-6">
                <div class="form-group">
                  <label class="form-control-label" for="input-last-name">Last name</label>
                  <input type="text" id="input-last-name" class="form-control form-control-alternative" placeholder="Last name" value="{{ $patient->patient_name }}">
                </div>
              </div>
            </div>
          </div>
          <hr class="my-4" />
          <!-- Address -->
          <h6 class="heading-small text-muted mb-4">Contact information</h6>
          <div class="pl-lg-4">
            <div class="row">
              <div class="col-md-12">
                <div class="form-group">
                  <label class="form-control-label" for="input-address">Address</label>
                  <input id="input-address" class="form-control form-control-alternative" placeholder="Home Address" value="Bld Mihail Kogalniceanu, nr. 8 Bl 1, Sc 1, Ap 09" type="text">
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-4">
                <div class="form-group">
                  <label class="form-control-label" for="input-city">City</label>
                  <input type="text" id="input-city" class="form-control form-control-alternative" placeholder="City" value="New York">
                </div>
              </div>
              <div class="col-lg-4">
                <div class="form-group">
                  <label class="form-control-label" for="input-country">Country</label>
                  <input type="text" id="input-country" class="form-control form-control-alternative" placeholder="Country" value="United States">
                </div>
              </div>
              <div class="col-lg-4">
                <div class="form-group">
                  <label class="form-control-label" for="input-country">Postal code</label>
                  <input type="number" id="input-postal-code" class="form-control form-control-alternative" placeholder="Postal code">
                </div>
              </div>
            </div>
          </div>
          <hr class="my-4" />
          <!-- Description -->
          <h6 class="heading-small text-muted mb-4">About me</h6>
          <div class="pl-lg-4">
            <div class="form-group">
              <label>About Me</label>
              <textarea rows="4" class="form-control form-control-alternative" placeholder="A few words about you ...">A beautiful Dashboard for Bootstrap 4. It is Free and Open Source.</textarea>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
@endsection


@section('optional-js')
<script>
  $(document).ready(function() {
    //STATISTIC
    var statistic = [
      {
        "title" : "Treatment",
        "number" : "5",
        "change" : "-",
        "since" : "Since last month",
        "icon" : "ni ni-favourite-28",
        "url" : "{{ url('/') }}/user/patient/{{ $patient->patient_id }}/treatment",
      },
      {
        "title" : "Prescription",
        "number" : "4",
        "change" : "-",
        "since" : "Since last weeks",
        "icon" : "ni ni-bullet-list-67",
        "url" : "{{ url('/') }}/user/patient/{{ $patient->patient_id }}/prescription",
      },
      {
        "title" : "Checkup",
        "number" : "3",
        "change" : "-",
        "since" : "Since yesterday",
        "icon" : "ni ni-check-bold",
        "url" : "{{ url('/') }}/user/patient/{{ $patient->patient_id }}/checkup",
      },
      {
        "title" : "Admid",
        "number" : "2",
        "change" : "-",
        "since" : "Since last month",
        "icon" : "ni ni-ambulance",
        "url" : "{{ url('/') }}/user/patient/{{ $patient->patient_id }}/admin",
      },
    ];
    console.log($(".card-statstic"),statistic);
    $(".card-statstic").each(function(index,element){
      $(".card-title",element).text(statistic[index].title);
      $(".h2",element).text(statistic[index].number);
      $(".icon>i",element).removeClass().addClass(statistic[index].icon);
      $("p",element).html('<span class="text-nowrap">'+statistic[index].since+'</span>');
      $(".link",element).attr("href",statistic[index].url);
    });
    //information
    var a = moment();
    var b = moment("{{ $patient->date_of_birth }}");
    var age = a.diff(b, 'years');       // 1
    $(".age").text(", "+age);
  } );
</script>
@endsection
