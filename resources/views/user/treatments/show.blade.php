@extends('layouts.argon-dashboard.default')

@section('content')
    <div class="container">
        <div class="row">

            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">treatment {{ $treatment->id }}</div>
                    <div class="card-body">

                        <a href="{{ url('/user/treatments') }}" title="Back"><button class="btn btn-warning btn-sm"><i class="fa fa-arrow-left" aria-hidden="true"></i> Back</button></a>
                        <a href="{{ url('/user/treatments/' . $treatment->id . '/edit') }}" title="Edit treatment"><button class="btn btn-primary btn-sm"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit</button></a>

                        <form method="POST" action="{{ url('user/treatments' . '/' . $treatment->id) }}" accept-charset="UTF-8" style="display:inline">
                            {{ method_field('DELETE') }}
                            {{ csrf_field() }}
                            <button type="submit" class="btn btn-danger btn-sm" title="Delete treatment" onclick="return confirm(&quot;Confirm delete?&quot;)"><i class="fa fa-trash-o" aria-hidden="true"></i> Delete</button>
                        </form>
                        <br/>
                        <br/>

                        <div class="table-responsive">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <th>ID</th><td>{{ $treatment->id }}</td>
                                    </tr>
                                    <tr><th> Patient Id </th><td> {{ $treatment->patient_id }} </td></tr><tr><th> Doctor Id </th><td> {{ $treatment->doctor_id }} </td></tr><tr><th> Case Description </th><td> {{ $treatment->case_description }} </td></tr><tr><th> Diagnose </th><td> {{ $treatment->diagnose }} </td></tr><tr><th> Prescription </th><td> {{ $treatment->prescription }} </td></tr><tr><th> Date </th><td> {{ $treatment->date }} </td></tr><tr><th> Remark </th><td> {{ $treatment->remark }} </td></tr>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
