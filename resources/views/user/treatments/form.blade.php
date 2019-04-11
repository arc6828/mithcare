<div class="form-group {{ $errors->has('patient_id') ? 'has-error' : ''}}">
    <label for="patient_id" class="control-label">{{ 'Patient Id' }}</label>
    <input class="form-control" name="patient_id" type="number" id="patient_id" value="{{ isset($treatment->patient_id) ? $treatment->patient_id : ''}}" >
    {!! $errors->first('patient_id', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group {{ $errors->has('doctor_id') ? 'has-error' : ''}}">
    <label for="doctor_id" class="control-label">{{ 'Doctor Id' }}</label>
    <input class="form-control" name="doctor_id" type="number" id="doctor_id" value="{{ isset($treatment->doctor_id) ? $treatment->doctor_id : ''}}" >
    {!! $errors->first('doctor_id', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group {{ $errors->has('case_description') ? 'has-error' : ''}}">
    <label for="case_description" class="control-label">{{ 'Case Description' }}</label>
    <textarea class="form-control" rows="5" name="case_description" type="textarea" id="case_description" >{{ isset($treatment->case_description) ? $treatment->case_description : ''}}</textarea>
    {!! $errors->first('case_description', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group {{ $errors->has('diagnose') ? 'has-error' : ''}}">
    <label for="diagnose" class="control-label">{{ 'Diagnose' }}</label>
    <textarea class="form-control" rows="5" name="diagnose" type="textarea" id="diagnose" >{{ isset($treatment->diagnose) ? $treatment->diagnose : ''}}</textarea>
    {!! $errors->first('diagnose', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group {{ $errors->has('prescription') ? 'has-error' : ''}}">
    <label for="prescription" class="control-label">{{ 'Prescription' }}</label>
    <textarea class="form-control" rows="5" name="prescription" type="textarea" id="prescription" >{{ isset($treatment->prescription) ? $treatment->prescription : ''}}</textarea>
    {!! $errors->first('prescription', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group {{ $errors->has('date') ? 'has-error' : ''}}">
    <label for="date" class="control-label">{{ 'Date' }}</label>
    <input class="form-control" name="date" type="date" id="date" value="{{ isset($treatment->date) ? $treatment->date : ''}}" >
    {!! $errors->first('date', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group {{ $errors->has('remark') ? 'has-error' : ''}}">
    <label for="remark" class="control-label">{{ 'Remark' }}</label>
    <textarea class="form-control" rows="5" name="remark" type="textarea" id="remark" >{{ isset($treatment->remark) ? $treatment->remark : ''}}</textarea>
    {!! $errors->first('remark', '<p class="help-block">:message</p>') !!}
</div>


<div class="form-group">
    <input class="btn btn-primary" type="submit" value="{{ $formMode === 'edit' ? 'Update' : 'Create' }}">
</div>
