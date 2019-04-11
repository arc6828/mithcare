<div class="form-group {{ $errors->has('name') ? 'has-error' : ''}}">
    <label for="name" class="control-label">{{ 'Name' }}</label>
    <input class="form-control" name="name" type="text" id="name" value="{{ isset($patient->name) ? $patient->name : ''}}" >
    {!! $errors->first('name', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group {{ $errors->has('gender') ? 'has-error' : ''}}">
    <label for="gender" class="control-label">{{ 'Gender' }}</label>
    <input class="form-control" name="gender" type="text" id="gender" value="{{ isset($patient->gender) ? $patient->gender : ''}}" >
    {!! $errors->first('gender', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group {{ $errors->has('blood_type') ? 'has-error' : ''}}">
    <label for="blood_type" class="control-label">{{ 'Blood Type' }}</label>
    <input class="form-control" name="blood_type" type="text" id="blood_type" value="{{ isset($patient->blood_type) ? $patient->blood_type : ''}}" >
    {!! $errors->first('blood_type', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group {{ $errors->has('citizen_id') ? 'has-error' : ''}}">
    <label for="citizen_id" class="control-label">{{ 'Citizen Id' }}</label>
    <input class="form-control" name="citizen_id" type="text" id="citizen_id" value="{{ isset($patient->citizen_id) ? $patient->citizen_id : ''}}" >
    {!! $errors->first('citizen_id', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group {{ $errors->has('dob') ? 'has-error' : ''}}">
    <label for="dob" class="control-label">{{ 'Dob' }}</label>
    <input class="form-control" name="dob" type="date" id="dob" value="{{ isset($patient->dob) ? $patient->dob : ''}}" >
    {!! $errors->first('dob', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group {{ $errors->has('address') ? 'has-error' : ''}}">
    <label for="address" class="control-label">{{ 'Address' }}</label>
    <input class="form-control" name="address" type="text" id="address" value="{{ isset($patient->address) ? $patient->address : ''}}" >
    {!! $errors->first('address', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group {{ $errors->has('phone') ? 'has-error' : ''}}">
    <label for="phone" class="control-label">{{ 'Phone' }}</label>
    <input class="form-control" name="phone" type="text" id="phone" value="{{ isset($patient->phone) ? $patient->phone : ''}}" >
    {!! $errors->first('phone', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group {{ $errors->has('medical_condition') ? 'has-error' : ''}}">
    <label for="medical_condition" class="control-label">{{ 'Medical Condition' }}</label>
    <textarea class="form-control" rows="5" name="medical_condition" type="textarea" id="medical_condition" >{{ isset($patient->medical_condition) ? $patient->medical_condition : ''}}</textarea>
    {!! $errors->first('medical_condition', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group {{ $errors->has('drug_allergy') ? 'has-error' : ''}}">
    <label for="drug_allergy" class="control-label">{{ 'Drug Allergy' }}</label>
    <textarea class="form-control" rows="5" name="drug_allergy" type="textarea" id="drug_allergy" >{{ isset($patient->drug_allergy) ? $patient->drug_allergy : ''}}</textarea>
    {!! $errors->first('drug_allergy', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group {{ $errors->has('image') ? 'has-error' : ''}}">
    <label for="image" class="control-label">{{ 'Image' }}</label>
    <input class="form-control" name="image" type="text" id="image" value="{{ isset($patient->image) ? $patient->image : ''}}" >
    {!! $errors->first('image', '<p class="help-block">:message</p>') !!}
</div>


<div class="form-group">
    <input class="btn btn-primary" type="submit" value="{{ $formMode === 'edit' ? 'Update' : 'Create' }}">
</div>
