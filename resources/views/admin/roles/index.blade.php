@extends('admin.layouts.app')

@section('content')
<!-- File export table -->
<div class="row file">
    <div class="col-xs-12">
        <div class="card">
            <div class="card-header">
            @if(Setting::get('DEMO_MODE')==0)
            <div class="col-md-12" style="height:50px;color:red;">
                 ** Demo Mode : No Permission to Edit and Delete.
            </div>
            @endif
                <h4 class="card-title">Roles</h4>
                <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
                <div class="heading-elements">
                    <ul class="list-inline mb-0">
                        <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                        <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                        <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                        <!-- <li><a href="{{ route('admin.transporters.create') }}" class="btn btn-primary add-btn btn-darken-3">Add Delivery People</a></li> -->
                    </ul>
                </div>
            </div>
            <div class="card-body collapse in">
                <div class="card-block card-dashboard table-responsive">
                    <table class="table table-striped table-bordered file-export">
                        <thead>
                            <tr>
                                <th>@lang('user.index.sl_no')</th>
                                <th>Name</th>
                                <th>Guard Name</th>
                                
                                <th>@lang('user.index.action')</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($roles as $key=>$Role)
                                <tr>
                                    <td>{{$key+1}}</td>
                                    <td>{{$Role->name}}</td>
                                    <td>{{$Role->guard_name}}</td>
                                    
                                    <td>
                                        @if(Setting::get('DEMO_MODE')==1)
                                        <a href="{{ route('admin.roles.edit', $Role->id) }}" class="table-btn btn btn-icon btn-success"><i class="fa fa-pencil-square-o"></i></a>
                                        <button   class="table-btn btn btn-icon btn-danger" form="resource-delete-{{ $Role->id }}" ><i class="fa fa-trash-o"></i></button>
                                        @endif
                                        <form id="resource-delete-{{ $Role->id }}" action="{{ route('admin.roles.destroy', $Role->id)}}" method="POST">
                                            {{ csrf_field() }}
                                            {{ method_field('DELETE') }}
                                        </form>
                                    </td>
                                </tr>
                            @empty
                                <tr><td colspan="50">@lang('user.index.no_record_found')</td></tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection