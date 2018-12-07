@extends('user/layout/default')
@section('content')
<div class="row">
  <div class="col">
    <div class="card shadow border-0">
      <div id="map-canvas" class="map-canvas" data-lat="40.748817" data-lng="-73.985428" style="height: 600px;"></div>
    </div>
  </div>
</div>
@endsection

@section('optional-js')
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBd3PjUqq81lIOfBPYXrQGWwK5T4ystZjA"></script>
@endsection
