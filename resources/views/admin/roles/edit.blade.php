@extends('admin.layouts.app')

@section('content')
<div class="card">
    <div class="card-header">
        <h3 class="card-title">Edit Role</h3>
    </div>
    <div class="card-body collapse in">
        <div class="card-block">
            <form class="form-horizontal" role="form" method="POST" action="{{ route('admin.roles.update', $Role->id) }}" enctype="multipart/form-data">
                {{ csrf_field() }}
                {{ method_field('PATCH') }}
                <div class="form-group col-xs-12 mb-2">
                     <input id="name" type="text" class="form-control" name="name" value="{{ old('name',$Role->name) }}" required placeholder="Name" autofocus>

                    @if ($errors->has('name'))
                        <span class="help-block">
                            <strong>{{ $errors->first('name') }}</strong>
                        </span>
                    @endif
                </div>
                <div class="form-group col-xs-12 mb-2">
                    <input  type="text" class="form-control" name="guard_name" value="{{ old('guard_name',$Role->guard_name) }}" placeholder="E-Mail" required>

                    @if ($errors->has('guard_name'))
                        <span class="help-block">
                            <strong>{{ $errors->first('guard_name') }}</strong>
                        </span>
                    @endif  
                </div>
                
                <div class="col-xs-12 mb-2">
                    <a href="{{ route('admin.roles.index') }}" class="btn btn-warning mr-1">
                        <i class="ft-x"></i> Cancel
                    </a>
                    <button type="submit" class="btn btn-primary">
                        <i class="fa fa-check-square-o"></i> Save
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection

@section('styles')
<link rel="stylesheet" href="{{ asset('assets/admin/plugins/dropify/dist/css/dropify.min.css') }}">
@endsection

@section('scripts')
<script type="text/javascript" src="{{ asset('assets/admin/plugins/dropify/dist/js/dropify.min.js') }}"></script>
<script type="text/javascript">
    $('.dropify').dropify();
</script>
@endsection