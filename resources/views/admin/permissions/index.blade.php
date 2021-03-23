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
                        <th>Roles</th>
                        <th>Dashboard</th>
                        <th>Restaurant</th>
                        <th>Delivery </th>
                        <th>Dispute</th>
                        <th>Restaurant Banner</th>
                        <th>Role</th>
                        <th>User</th>
                        <th>Settings</th>
                        </tr>
                        
                     
                     
                    </thead>
                    
                    <tbody class="dynamic" id="location">
                 
                    @foreach($permission as $per)
                    <tr align="center">
                    <td class="text-center">{{$per->name}}</td>
                    @if($per->dashboard == 'on')
                    <td> <input type="checkbox" checked class="form-control"> </td>
                    @else
                    <td> <input type="checkbox"  class="form-control"> </td>
                    @endif
                    @if($per->restaurant == 'on')
                    <td> <input type="checkbox" checked class="form-control"> </td>
                    @else
                    <td> <input type="checkbox"  class="form-control"> </td>
                    @endif
                    @if($per->delivery_poeple == 'on')
                    <td> <input type="checkbox" checked class="form-control"> </td>
                    @else
                    <td> <input type="checkbox"  class="form-control"> </td>
                    @endif
                    
                    @if($per->add_admins == 'on')
                    <td> <input type="checkbox" checked class="form-control"> </td>
                    @else
                    <td> <input type="checkbox"  class="form-control"> </td>
                    @endif

                    @if($per->restaurant_banner == 'on')
                    <td> <input type="checkbox" checked class="form-control"> </td>
                    @else
                    <td> <input type="checkbox"  class="form-control"> </td>
                    @endif

                    @if($per->roles == 'on')
                    <td> <input type="checkbox" checked class="form-control"> </td>
                    @else
                    <td> <input type="checkbox"  class="form-control"> </td>
                    @endif

                    @if($per->user == 'on')
                    <td> <input type="checkbox" checked class="form-control"> </td>
                    @else
                    <td> <input type="checkbox"  class="form-control"> </td>
                    @endif

                    @if($per->setting == 'on')
                    <td> <input type="checkbox" checked class="form-control"> </td>
                    @else
                    <td> <input type="checkbox"  class="form-control"> </td>
                    @endif


                    
                    </tr> 

                    @endforeach
                       
                   
                    </tbody>
    

                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection