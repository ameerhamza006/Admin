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
                <form method="POST" action="{{ route('admin.permissions.store') }}">
                {{ csrf_field() }}
                <div class="col-lg-3 mb-2">
                <select class="form-control dynamic" id="role" name="role">
                <option disabled selected>Select Role</option>
                @foreach($Roles as $Role)
                <option value="{{$Role->id}}">{{$Role->name}}</option>
                @endforeach
                </select>
                </div>
                
                    <table class="table table-striped table-bordered ">
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
                     
                        @foreach($Roles as $Role)
                        <tr align="center">
                        <td class="text-center">{{$Role->name}}</td>
                        
                        <td> <input type="checkbox" name="dashboard" class="form-control"> </td>
                        <td> <input type="checkbox" name="restaurant" class="form-control"> </td>
                        <td> <input type="checkbox" name="delivery_poeple" class="form-control"> </td>
                        <td> <input type="checkbox" name="add_admins" class="form-control"> </td>
                        <td> <input type="checkbox" name="restaurant_banner" class="form-control"> </td>
                        <td> <input type="checkbox" name="roles" class="form-control"> </td>
                        <td> <input type="checkbox" name="user" class="form-control"> </td>
                        <td> <input type="checkbox" name="setting" class="form-control"> </td>
                        
                        </tr> 

                        @endforeach
                           
                       
                        </tbody>
                        
                  
                        
                        
                    </table>
                    <button type="submit" class="btn btn-success">Save</button>  
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>






<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <script>
$(document).ready(function(){
 $('.dynamic').change(function(){
    
  if($(this).val() != '')
  {
   var select = $(this).val();
   
   var _token = $('input[name="_token"]').val();
   $.ajax({
    url:"{{ route('permissions.fetch') }}",
    method:"POST",
    data:{select:select, _token:"{{csrf_token()}}"},
    success:function(result)
    {
        
      var location = '';
        $('#location').empty()
    
                 
    $.each(result,function(i,result){
        
        location += '<tr>'+
                   
                    '<td>'+result.name+'</td>' +
                    '<td>' + 
                    '<input type="checkbox" name="dashboard" class="form-control">' + 
                    '</td>' +
                    '<td>' + 
                    '<input type="checkbox" name="restaurant" class="form-control">' +
                     '</td>' +
                    '<td>' +
                    '<input type="checkbox" name="delivery_poeple" class="form-control">' + 
                    '</td>' +
                    '<td>' +
                    '<input type="checkbox" name="add_admins" class="form-control">' +
                    '</td>' +
                    '<td>' +
                    '<input type="checkbox" name="restaurant_banner" class="form-control">' +
                    '</td>' +
                    '<td>' +
                    '<input type="checkbox" name="roles" class="form-control">' +
                    '</td>' +
                    '<td>' +
                    '<input type="checkbox" name="user" class="form-control">' +
                    '</td>' +
                    '<td>' +
                    '<input type="checkbox" name="setting" class="form-control">' + 
                    '</td>' +
                   
                  '</tr>' 
        
        
        
        
       // remark += '<option value="'+result.id+'">"'+result.name+'"</option>'
        $('#location').html(location)
        $('#available').html(available)
        
    })
    }
   })
  }
 });
 $('#user').change(function(){
  $('#location').val('');
  $('#remark').val('');
 });
 $('#location').change(function(){
  $('#remark').val('');
 });
 
});
</script>













@endsection