@extends('admin.layouts.app')

@section('content')
<div class="row">
    <div class="col-sm-12">
        <div class="card-box table-responsive">

            <form role="form" method="POST" action="{{ route('admin.shops.update', $Shop->id) }}" enctype="multipart/form-data" onkeypress="return disableEnterKey(event);">
                {{ csrf_field() }}
                {{ method_field('PATCH') }}

                <input type="hidden" id="latitude" name="latitude" value="{{ old('latitude', $Shop->latitude) }}" readonly required>
                <input type="hidden" id="longitude" name="longitude" value="{{ old('longitude', $Shop->longitude) }}" readonly required>

                <h4 class="m-t-0 header-title">
                    <b>@lang('shop.edit.title')</b>
                </h4>
                <hr>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                            <label for="name">@lang('shop.create.name')</label>

                            <input id="name" type="text" class="form-control" name="name" value="{{ old('name', $Shop->name) }}" required autofocus>

                            @if ($errors->has('name'))
                            <span class="help-block">
                                <strong>{{ $errors->first('name') }}</strong>
                            </span>
                            @endif
                        </div>

                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <label for="email">@lang('shop.create.email')</label>

                            <input id="email" type="text" class="form-control" name="email" value="{{ old('email', $Shop->email) }}" required autofocus>

                            @if ($errors->has('email'))
                            <span class="help-block">
                                <strong>{{ $errors->first('email') }}</strong>
                            </span>
                            @endif
                        </div>
                        <div class="form-group{{ $errors->has('cuisine_id') ? ' has-error' : '' }}">
                            <label for="parent_id">@lang('shop.create.cuisine')</label>
                            <?php $shop_cusines = $Shop->cuisines->pluck('id','id')->all();  ?>
                            <select class="form-control" multiple id="cuisine_id" name="cuisine_id[]">
                                @foreach(\App\Cuisine::list() as $Index=>$Cuisine)   
                                <option value="{{ $Cuisine->id }}" @if(in_array($Cuisine->id,$shop_cusines)) selected="selected" @endif >{{ $Cuisine->name }}</option>
                                    
                                @endforeach
                            </select>

                            @if ($errors->has('cuisine_id'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('cuisine_id') }}</strong>
                                </span>
                            @endif
                        </div>

                        <div class="form-group{{ $errors->has('phone') ? ' has-error' : '' }}">
                            <label for="phone">@lang('shop.create.phone')</label>

                            <input id="phone" type="text" class="form-control" name="phone" value="{{ old('phone', $Shop->phone) }}" required autofocus>

                            @if ($errors->has('phone'))
                            <span class="help-block">
                                <strong>{{ $errors->first('phone') }}</strong>
                            </span>
                            @endif
                        </div>

                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                            <label for="password">@lang('form.password')</label>

                            <input id="password" type="password" class="form-control" name="password">

                            @if ($errors->has('password'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('password') }}</strong>
                                </span>
                            @endif
                        </div>

                        <div class="form-group">
                            <label for="password-confirm">@lang('form.confirm_password')</label>

                            <input id="password-confirm" type="password" class="form-control" name="password_confirmation">
                        </div>

                        <div class="form-group{{ $errors->has('status') ? ' has-error' : '' }}">
                            <label for="parent_id">@lang('shop.create.status')</label>
                            <select class="form-control"  id="status" name="status">
                                <option value="onboarding" @if(@$Shop->status=='onboarding') selected="selected" @endif >Onboarding</option>
                                <option value="banned" @if(@$Shop->status=='banned') selected="selected" @endif >Banned</option>    
                                <option value="active" @if(@$Shop->status=='active') selected="selected" @endif >Active</option> 
                            </select>

                            @if ($errors->has('status'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('status') }}</strong>
                                </span>
                            @endif
                        </div>
                        <?php $array = $Shop->timings->toArray(); ?>

                         <div class="form-group">
                            <label for="password-confirm">@lang('shop.create.everyday')</label>

                            <input id="everyday" type="checkbox"  class="form-control" name="everyday" value="1"  @if($Shop->timings[0]->day == 'ALL') checked  @endif >
                        </div>

                       

                         @foreach($Days as $dky => $day)
                         <?php  $key='';
                         $keys = array_search($dky,array_column($array, 'day'));  ?>
                        <div    @if($dky == 'ALL') 
                                    class = "row everyday" 
                                        @if($Shop->timings[$keys]->day != 'ALL')
                                            style="display:none";
                                        @endif
                                @else 
                                    class = "row singleday"  
                                        @if($Shop->timings[$keys]->day == 'ALL')
                                            style="display:none";
                                        @endif
                                @endif  >
                            <div class="col-xs-4">
                                <div class="form-group{{ $errors->has('hours_opening') ? ' has-error' : '' }}">
                                    <label for="hours_opening">{{$day}}</label>

                                    
                                        <input type="checkbox" class="chk form-control" name="day[{{$dky}}]" value="{{$dky}}" @if(@$Shop->timings[$keys]->day == $dky) checked @endif >
                                    
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="form-group{{ $errors->has('hours_opening') ? ' has-error' : '' }}">
                                    <label for="hours_opening">@lang('shop.create.hours_opening')</label>

                                    <div class="input-group clockpicker">
                                        <input type="text" class="form-control" name="hours_opening[{{$dky}}]" @if(@$Shop->timings[$keys]->day==$dky)
                                        value="{{@$Shop->timings[$keys]->start_time}}" 
                                        @else 
                                        value="00:00" 
                                        @endif required>
                                        <span class="input-group-addon">
                                            <i class="fa fa-clock-o"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="form-group{{ $errors->has('hours_closing') ? ' has-error' : '' }}">
                                    <label for="hours_closing">@lang('shop.create.hours_closing')</label>

                                    <div class="input-group clockpicker">
                                        <input type="text" class="form-control" name="hours_closing[{{$dky}}]" @if(@$Shop->timings[$keys]->day==$dky)
                                        value="{{@$Shop->timings[$keys]->end_time}}"timings                                        @else 
                                        value="00:00" 
                                        @endif required>
                                        <span class="input-group-addon">
                                            <i class="fa fa-clock-o"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach

                        <div class="form-group{{ $errors->has('avatar') ? ' has-error' : '' }}">
                            <label for="avatar">@lang('shop.create.image')</label>

                            <input type="file" accept="image/*" name="avatar" class="dropify" id="avatar" aria-describedby="fileHelp" @if($Shop->avatar) data-default-file="{{ asset($Shop->avatar) }}" @endif>

                            @if ($errors->has('avatar'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('avatar') }}</strong>
                                </span>
                            @endif
                        </div>
                        <div class="form-group{{ $errors->has('default_banner') ? ' has-error' : '' }}">
                            <label for="avatar">@lang('shop.create.banner')</label>

                            <input type="file" accept="image/*" name="default_banner" class="dropify" id="default_banner" aria-describedby="fileHelp" @if($Shop->default_banner) data-default-file="{{ asset($Shop->default_banner) }}" @endif>

                            @if ($errors->has('default_banner'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('default_banner') }}</strong>
                                </span>
                            @endif
                        </div>
                        <hr>
                    <br> <br>  <br> <br> <br> <br> <br>
                    

                    <div class="col-xs-12  mt-2">
                            <h4><b>Social Links</b></h4>
                            <div style="width: 40px; ">
                           
                           
                        </div>
                        </div>
                        
                    

                    <div class="col-xs-12 list-group-item mt-2">
                            <label>Home Url</label>
                            <div style="width: 40px; ">
                            <input   name="hl"   type="checkbox" onclick="documentFilter(this, '#hideablehome')" />
                           
                        </div>
                        </div>

                        <div class="col-sm-12 mt-1" id="hideablehome"  class="hiddenByDefault">
                                <div class="form-group">
                                  
                                    <input tabindex="2" id="pac-input" class="form-control controls" type="text" placeholder="Enter Home Url" name="home_url" >
                                </div>
                            </div>


                            


                            <div class="col-xs-12 list-group-item mt-2">
                            <label>Instagram </label>
                            <div style="width: 40px; ">
                            <input   name="insta"   type="checkbox" onclick="documentFilter(this, '#hideableinsta')" />
                           
                        </div>
                        </div>

                        <div class="col-sm-12 mt-1" id="hideableinsta"  class="hiddenByDefault">
                                <div class="form-group">
                                  
                                    <input tabindex="2" id="pac-input" class="form-control controls" type="text" placeholder="Enter Instagram Url" name="instagram_url" >
                                </div>
                            </div>

                            <div class="col-xs-12  mt-2">
                            <h4><b>Get Order Details</b></h4>
                            <div style="width: 40px; ">
                           
                           
                        </div>
                        </div>

                        <div class="col-xs-12 list-group-item mt-2">
                            <label>Use WhatsApp Order</label>
                            <div style="width: 40px; ">
                            <input   name="wp"   type="checkbox" onclick="documentFilter(this, '#hideablewp')" />
                           
                        </div>
                        </div>

                        <div class="col-sm-12 mt-1" id="hideablewp"  class="hiddenByDefault">
                                <div class="form-group">
                                  
                                    <input tabindex="2" id="pac-input" class="form-control controls" type="text" placeholder="Enter WhatsApp Number" name="whatsapp" >
                                </div>
                            </div>


                            <div class="col-xs-12 list-group-item mt-2 mb-2">
                            <label>Use Credit Card Order</label>
                            <div style="width: 40px; ">
                            <input  name="card"   type="checkbox" onclick="documentFilter(this, '#hideablecard')" />
                           
                        </div>
                        </div>

                       <!-- <div class="col-sm-12 mt-1" id="hideablecard"  class="hiddenByDefault">
                                <div class="form-group">
                                  
                                    <input tabindex="2" id="pac-input" class="form-control controls" type="text" placeholder="Enter Card Number" name="credit" >
                                </div>
                            </div> -->

                            <br>
                        



                      





                    



                    </div>
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group{{ $errors->has('pure_veg') ? ' has-error' : '' }}">
                                    <label for="parent_id">@lang('shop.create.pure_veg')</label>
                                    <label class="radio-inline">
                                        <input type="radio" value="no" @if($Shop->pure_veg==0)  checked @endif name="pure_veg">No
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" value="yes" name="pure_veg" @if($Shop->pure_veg==1)  checked @endif >Yes
                                    </label>

                                    @if ($errors->has('pure_veg'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('pure_veg') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group{{ $errors->has('rating') ? ' has-error' : '' }}">
                                    <label for="parent_id">@lang('shop.create.rating')</label>
                                    <label class="radio-inline">
                                        <input type="checkbox" value="1" @if($Shop->rating_status==1)  checked @endif name="rating_status">@lang('shop.create.fixed')
                                    </label>
                                    
                                        <input type="number" class="form-control" value="{{$Shop->rating}}" name="rating"  min="1" max="5">
                                    

                                    @if ($errors->has('rating'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('rating') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group{{ $errors->has('offer_min_amount') ? ' has-error' : '' }}">
                                    <label for="offer_min_amount">@lang('shop.create.Min_Amount')</label>
                                    <input  id="offer_min_amount" class="form-control controls" type="number"  min="1" step="any" placeholder="Enter Min Amount For Offer" name="offer_min_amount" value="{{ old('offer_min_amount', $Shop->offer_min_amount) }}">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group{{ $errors->has('offer_percent') ? ' has-error' : '' }}">
                                    <label for="offer_percent">@lang('shop.create.offer_percent')</label>
                                    <input tabindex="2" id="offer_percent" class="form-control controls" type="number" placeholder="Enter amount in Percent" name="offer_percent" value="{{ old('offer_percent', $Shop->offer_percent) }}">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group{{ $errors->has('estimated_delivery_time') ? ' has-error' : '' }}">
                                    <label for="estimated_delivery_time">@lang('shop.create.estimated_delivery_time')</label>
                                    <input tabindex="2" id="estimated_delivery_time" class="form-control controls" type="number" placeholder="Enter Max Delivery Time" name="estimated_delivery_time" value="{{ old('estimated_delivery_time', $Shop->estimated_delivery_time) }}">
                                </div>
                            </div>

                            <div class="col-sm-12">
                                <div class="form-group{{ $errors->has('description') ? ' has-error' : '' }}">
                                    <label for="description">@lang('shop.create.description')</label>
                                    <textarea class="form-control"  placeholder="Enter Description" id="description" name="description" required>{{ old('description',$Shop->description) }}</textarea>
                                </div>
                            </div>

                            <div class="col-sm-12">
                                <div class="form-group{{ $errors->has('maps_address') ? ' has-error' : '' }}">
                                <label for="maps_address">@lang('shop.create.location')</label>
                                <select class="form-control controls" name="maps_address">
                                <option selected >{{ old('description',$Shop->maps_address) }}</option>
                                <option value="Pakistan">Pakistan</option>
                                <option value="Turky">Turky</option>
                                </select>
                                    
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <div class="form-group form-group-default required m-t-5">
                                    <label>@lang('shop.create.address')</label>
                                    <textarea class="form-control" placeholder="Enter Address" id="address" name="address" required>{{ old('address', $Shop->address) }}</textarea>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <div id="map" style="height:400px;"></div>
                            </div>

                            <hr>
                    

                        <!--facebook-->
                        <div class="col-xs-12 list-group-item mt-2">
                            <label>Facebook </label>
                            <div style="width: 40px; ">
                            <input   name="fb"   type="checkbox" onclick="documentFilter(this, '#hideablefb')" />
                           
                        </div>
                        </div>

                        <div class="col-sm-12 mt-1" id="hideablefb"  class="hiddenByDefault">
                                <div class="form-group">
                                  
                                    <input tabindex="2" id="pac-input" class="form-control controls" type="text" placeholder="Enter Home Url" name="facebook_url" >
                                </div>
                            </div>

                            <!--twitter-->
                            
                            <div class="col-xs-12 list-group-item mt-2 ">
                            <label>Twitter </label>
                            <div style="width: 40px; ">
                            <input   name="tw"   type="checkbox" onclick="documentFilter(this, '#hideabletw')" />
                           
                        </div>
                        </div>

                        <div class="col-sm-12 mt-1" id="hideabletw"  class="hiddenByDefault mb-4" >
                                <div class="form-group">
                                  
                                    <input tabindex="2" id="pac-input" class="form-control controls" type="text" placeholder="Enter Twitter Url" name="twitter_url" >
                                </div>
                            </div>


                            
                        

                        <!---->
                        <br><br> <br> <br><br>
                        <div class="col-xs-12  mt-2">
                            <label></label>
                            
                            <div style="width: 40px; ">
                           
                           
                        </div>
                        </div>
                        <label></label>
                        <div class="col-xs-12 list-group-item mt-2">
                            <label>Use System Order</label>
                            <div style="width: 40px; ">
                            <input   name="sys"   type="checkbox" onclick="documentFilter(this, '#hideablesys')" />
                           
                        </div>
                        </div>

                       <!-- <div class="col-sm-12 mt-1" id="hideablesys"  class="hiddenByDefault">
                                <div class="form-group">
                                  
                                    <input tabindex="2" id="pac-input" class="form-control controls" type="text" placeholder="Enter System Number" name="system" >
                                </div>
                            </div> -->

                            <!---->
                     



                     





                        </div>
                    </div>
                </div>

                <div class="col-xs-12 mb-2">
                    <a href="{{ route('admin.shops.index') }}" class="btn btn-warning mr-1">
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
<link rel="stylesheet" href="{{ asset('assets/admin/plugins/clockpicker/dist/bootstrap-clockpicker.min.css') }}">
<link rel="stylesheet" href="{{ asset('assets/admin/plugins/dropify/dist/css/dropify.min.css') }}">
@endsection

@section('scripts')
<script type="text/javascript" src="{{ asset('assets/admin/plugins/clockpicker/dist/bootstrap-clockpicker.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('assets/admin/plugins/dropify/dist/js/dropify.min.js') }}"></script>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-switch/3.3.2/js/bootstrap-switch.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.2/css/bootstrap-theme.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-switch/3.3.2/css/bootstrap2/bootstrap-switch.min.css" />

<script type="text/javascript">


$('#hideablewp').hide();
$("[name='wp']").bootstrapSwitch({
  onSwitchChange: function(e, state) {
    $('#hideablewp').toggle(state);
  }
});

$('#hideablesys').hide();
$("[name='sys']").bootstrapSwitch({
  onSwitchChange: function(e, state) {
    $('#hideablesys').toggle(state);
  }
});


$('#hideablecard').hide();
$("[name='card']").bootstrapSwitch({
  onSwitchChange: function(e, state) {
    $('#hideablecard').toggle(state);
  }
});


$('#hideablehome').hide();
$("[name='hl']").bootstrapSwitch({
  onSwitchChange: function(e, state) {
    $('#hideablehome').toggle(state);
  }
});


$('#hideablefb').hide();
$("[name='fb']").bootstrapSwitch({
  onSwitchChange: function(e, state) {
    $('#hideablefb').toggle(state);
  }
});

$('#hideableinsta').hide();
$("[name='insta']").bootstrapSwitch({
  onSwitchChange: function(e, state) {
    $('#hideableinsta').toggle(state);
  }
});


$('#hideabletw').hide();
$("[name='tw']").bootstrapSwitch({
  onSwitchChange: function(e, state) {
    $('#hideabletw').toggle(state);
  }
});








    function disableEnterKey(e)
    {
        var key;
        if(window.e)
            key = window.e.keyCode; // IE
        else
            key = e.which; // Firefox

        if(key == 13)
            return e.preventDefault();
    }
    $('.clockpicker').clockpicker({
        donetext: "Done"
    });
    $('.dropify').dropify();
    $('#everyday').change(function() {
        if($(this).is(":checked")) {
            $('.everyday').show();
            $('.singleday').hide();
            $('.singleday .chk').prop('checked',false);
            $('.everyday .chk').prop('checked',true);
        }else{
            $('.everyday').hide();
            $('.singleday').show();
            $('.everyday .chk').prop('checked',false);
            $('.singleday .chk').prop('checked',true);
        }
    });
</script>
<script>
    var map;
    var input = document.getElementById('pac-input');
    var latitude = document.getElementById('latitude');
    var longitude = document.getElementById('longitude');
    var address = document.getElementById('address');

    function initMap() {

        var userLocation = new google.maps.LatLng(
                {{ $Shop->latitude }},
                {{ $Shop->longitude }}
            );
console.log(userLocation);
        map = new google.maps.Map(document.getElementById('map'), {
            center: userLocation,
            zoom: 15
        });

        var service = new google.maps.places.PlacesService(map);
        var autocomplete = new google.maps.places.Autocomplete(input);
        var infowindow = new google.maps.InfoWindow();

        autocomplete.bindTo('bounds', map);

        var infowindow = new google.maps.InfoWindow({
            content: "Shop Location",
        });

        var marker = new google.maps.Marker({
            map: map,
            draggable: true,
            anchorPoint: new google.maps.Point(0, -29)
        });

        marker.setVisible(true);
        marker.setPosition(userLocation);
        infowindow.open(map, marker);

        google.maps.event.addListener(map, 'click', updateMarker);
        google.maps.event.addListener(marker, 'dragend', updateMarker);

        function updateMarker(event) { console.log(event.latLng);
            var geocoder = new google.maps.Geocoder();
            geocoder.geocode({'latLng': event.latLng}, function (results, status) {
                if (status == google.maps.GeocoderStatus.OK) {
                    if (results[0]) {
                        input.value = results[0].formatted_address;
                        updateForm(event.latLng.lat(), event.latLng.lng(), results[0].formatted_address);
                    } else {
                        alert('No Address Found');
                    }
                } else {
                    alert('Geocoder failed due to: ' + status);
                }
            });

            marker.setPosition(event.latLng);
            map.setCenter(event.latLng);
        }

        autocomplete.addListener('place_changed', function(event) {
            marker.setVisible(false);
            var place = autocomplete.getPlace();

            if (place.hasOwnProperty('place_id')) {
                if (!place.geometry) {
                    window.alert("Autocomplete's returned place contains no geometry");
                    return;
                }
                updateLocation(place.geometry.location);
            } else {
                service.textSearch({
                    query: place.name
                }, function(results, status) {
                    if (status == google.maps.places.PlacesServiceStatus.OK) {
                        updateLocation(results[0].geometry.location, results[0].formatted_address);
                        input.value = results[0].formatted_address;
                    }
                });
            }
        });

        function updateLocation(location) {
            map.setCenter(location);
            marker.setPosition(location);
            marker.setVisible(true);
            infowindow.open(map, marker);
            updateForm(location.lat(), location.lng(), input.value);
        }

        function updateForm(lat, lng, addr) {
            console.log(lat,lng, addr);
            latitude.value = lat;
            longitude.value = lng;
            address.value = addr;
        }
    }
</script>
<script src="https://maps.googleapis.com/maps/api/js?key={{Setting::get('GOOGLE_MAP_KEY')}}&libraries=places&callback=initMap" async defer></script>
@endsection