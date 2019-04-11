@extends('layouts.argon-dashboard.default')

@section('content')
    <div class="container">
        <div class="row">

            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">patient {{ $patient->id }}</div>
                    <div class="card-body">

                        <a href="{{ url('/user/patients') }}" title="Back"><button class="btn btn-warning btn-sm"><i class="fa fa-arrow-left" aria-hidden="true"></i> Back</button></a>
                        <a href="{{ url('/user/patients/' . $patient->id . '/edit') }}" title="Edit patient"><button class="btn btn-primary btn-sm"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit</button></a>

                        <form method="POST" action="{{ url('user/patients' . '/' . $patient->id) }}" accept-charset="UTF-8" style="display:inline">
                            {{ method_field('DELETE') }}
                            {{ csrf_field() }}
                            <button type="submit" class="btn btn-danger btn-sm" title="Delete patient" onclick="return confirm(&quot;Confirm delete?&quot;)"><i class="fa fa-trash-o" aria-hidden="true"></i> Delete</button>
                        </form>
                        <br/>
                        <br/>

                        <div class="table-responsive">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <th>ID</th><td>{{ $patient->id }}</td>
                                    </tr>
                                    <tr><th> Name </th><td> {{ $patient->name }} </td></tr><tr><th> Gender </th><td> {{ $patient->gender }} </td></tr><tr><th> Blood Type </th><td> {{ $patient->blood_type }} </td></tr><tr><th> Citizen Id </th><td> {{ $patient->citizen_id }} </td></tr><tr><th> Dob </th><td> {{ $patient->dob }} </td></tr><tr><th> Address </th><td> {{ $patient->address }} </td></tr><tr><th> Phone </th><td> {{ $patient->phone }} </td></tr><tr><th> Medical Condition </th><td> {{ $patient->medical_condition }} </td></tr><tr><th> Drug Allergy </th><td> {{ $patient->drug_allergy }} </td></tr><tr><th> Image </th><td> {{ $patient->image }} </td></tr>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
