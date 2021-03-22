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
                        <th>Role</th>

                        @foreach($Roles as $Role)
                        
                        <th class="text-center">{{$Role->name}}</th>
                        @endforeach
                           </tr> 
                            <tr>
                            
                            </tr>
                           
                         
                        </thead>
                        
                        <tbody>
                        <tr><th>Restaurant</th>
                        <td> <input type="checkbox" class="form-control"> </td>
                        <td> <input type="checkbox" class="form-control"> </td>
                        <td> <input type="checkbox" class="form-control"> </td>
                        </tr>
                        <tr>
                        <th>Delivery</th>
                        <td> <input type="checkbox" class="form-control"> </td>
                        <td> <input type="checkbox" class="form-control"> </td>
                        <td> <input type="checkbox" class="form-control"> </td>
                        </tr>
                        <tr>
                        <th>Dispute</th>
                        <td> <input type="checkbox" class="form-control"> </td>
                        <td> <input type="checkbox" class="form-control"> </td>
                        <td> <input type="checkbox" class="form-control"> </td>
                        </tr>
                        <tr>
                        <th>Role</th>
                        <td> <input type="checkbox" class="form-control"> </td>
                        <td> <input type="checkbox" class="form-control"> </td>
                        <td> <input type="checkbox" class="form-control"> </td>
                            </tr>
                        <tr>
                        <th>User</th>
                        <td> <input type="checkbox" class="form-control"> </td>
                        <td> <input type="checkbox" class="form-control"> </td>
                        <td> <input type="checkbox" class="form-control"> </td>
                        </tr>
                        <tr>
                        <th>Settings</th>
                        <td> <input type="checkbox" class="form-control"> </td>
                        <td> <input type="checkbox" class="form-control"> </td>
                        <td> <input type="checkbox" class="form-control"> </td>
                        </tr>
                        
                           <tr></tr>
                           <tr><td><button type="submit" class="btn btn-success">Save</button></td></tr>
                               
                                
                         
                        </tbody>
                        
                  
                        
                        
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection