<div data-scroll-to-active="true" class="main-menu menu-fixed menu-dark menu-accordion menu-shadow">
        <div class="main-menu-content">
        @php
            $role_idd =  @Auth::user()->role_id;
    $permission = App\RolePermission::where('role_id',$role_idd)
           ->first();
    $per = $permission->role_id;
    
    
    @endphp
            <ul id="main-menu-navigation" data-menu="menu-navigation" class="navigation navigation-main">
                <li class=" navigation-header"><span>General</span><i data-toggle="tooltip" data-placement="right" data-original-title="General" class=" ft-minus"></i>
                </li>
                @if(@Auth::user()->role_id == $per and $permission->dashboard == 'on')
                <li class="@if(Request::segment(2)=='home') active  @endif nav-item">
                    <a href="{{ route('admin.home') }}"><i class="ft-home"></i><span data-i18n="" class="menu-title">@lang('menu.admin.dashboard')</a>
                </li>
                
               @endif
             
                @if(@Auth::user()->role_id == $per and $permission->restaurant == 'on')
               <li class="@if(Request::segment(2)=='shops') active  @endif nav-item"><a href="#"><i class="fa fa-cutlery"></i><span data-i18n="" class="menu-title">@lang('menu.admin.restaurant')</span></a>
                    <ul class="menu-content">
                        <li><a href="{{ route('admin.shops.index') }}" class="menu-item">@lang('menu.admin.list_restaurant')</a></li>
                        <li><a href="{{ route('admin.shops.create') }}" class="menu-item">@lang('menu.admin.add_restaurant')</a></li>
                    </ul>
                </li> 
                <li class="@if(Request::segment(2)=='cuisines') active  @endif nav-item"><a href="#"><i class="fa fa-book"></i><span data-i18n="" class="menu-title">Menu</span></a>
                    <ul class="menu-content">
                        <li><a href="{{ route('admin.cuisines.index') }}" class="menu-item">Menu List</a></li>
                        <li><a href="{{ route('admin.cuisines.create') }}" class="menu-item"> Add Menu </a></li>
                    </ul>
                </li>
                @endif
                @if(@Auth::user()->role_id == $per and $permission->delivery_poeple == 'on')
                <li class="@if(Request::segment(2)=='transporters') active  @endif nav-item"><a href="#"><i class="fa fa-motorcycle"></i><span data-i18n="" class="menu-title">@lang('menu.admin.delivery_boy')</span></a>
                    <ul class="menu-content">
                        <li><a href="{{ route('admin.transporters.index') }}" class="menu-item">@lang('menu.admin.list_delivery_boy')</a></li>
                        <li><a href="{{ route('admin.transporters.create') }}" class="menu-item">@lang('menu.admin.add_delivery_boy')</a></li>
                        <li><a href="{{ url('admin/transporters-shift') }}" class="menu-item">@lang('menu.admin.list_delivery_boy_shift')</a></li>
                    </ul>
                </li>
                @endif
                
                
                @if(@Auth::user()->role_id == $per and $permission->add_admins == 'on')
               <li class="@if(Request::segment(2)=='dispute-user') active  @endif nav-item"><a href="#"><i class="fa fa-user-circle"></i><span data-i18n="" class="menu-title">@lang('menu.admin.dispute_manager')</span></a>
                    <ul class="menu-content">
                        <li><a href="{{ route('admin.dispute-user.index') }}" class="menu-item">@lang('menu.admin.list_dispute_manager')</a></li>
                        <li><a href="{{ route('admin.dispute-user.create') }}" class="menu-item">@lang('menu.admin.add_dispute_manager')</a></li>
                    </ul>
                </li> 
                @endif
                
                @if(@Auth::user()->role_id == $per and $permission->restaurant_banner == 'on')
                 <li class="@if(Request::segment(2)=='banner') active  @endif nav-item"><a href="#"><i class="fa fa-image"></i><span data-i18n="" class="menu-title">@lang('menu.admin.resturant_banner')</span></a>
                    <ul class="menu-content">
                        <li><a href="{{route('admin.banner.index')}}" class="menu-item">@lang('menu.admin.list_resturant_banner')</a></li>
                        <li><a href="{{route('admin.banner.create')}}" class="menu-item">@lang('menu.admin.add_resturant_banner')</a></li>
                    </ul>
                </li>
                @endif
             
                @if(@Auth::user()->role_id == $per and $permission->roles == 'on')
                <li class="@if(Request::segment(2)=='roles') active  @endif nav-item"><a href="#"><i class="fa fa-users"></i><span data-i18n="" class="menu-title">Roles</span></a>
                    <ul class="menu-content">
                        <li><a href="{{route('admin.roles.index')}}" class="menu-item">Role List</a></li>
                        <li><a href="{{route('admin.roles.create')}}" class="menu-item">Add Role</a></li>
                        <li><a href="{{route('admin.permissions.create')}}" class="menu-item">Role Manager</a></li>
                        <li><a href="{{route('admin.permissions.index')}}" class="menu-item">List Role Manager</a></li>
                    </ul>
                </li>
                @endif

                @if(@Auth::user()->role_id == $per and $permission->user == 'on')
                <li class="@if(Request::segment(2)=='users') active  @endif nav-item"><a href="#"><i class="fa fa-users"></i><span data-i18n="" class="menu-title">@lang('menu.admin.customer')</span></a>
                    <ul class="menu-content">
                        <li><a href="{{route('admin.users.index')}}" class="menu-item">@lang('menu.admin.list_customer')</a></li>
                        <li><a href="{{route('admin.users.create')}}" class="menu-item">@lang('menu.admin.add_customer')</a></li>
                    </ul>
                </li>
                @endif

                @if(@Auth::user()->role_id == $per and $permission->setting == 'on')
                <li class="@if(Request::segment(2)=='settings') active  @endif nav-item"><a href="#"><i class="fa fa-cog"></i><span data-i18n="" class="menu-title">@lang('menu.admin.setting')</span></a>
                        <ul class="menu-content">
                            <li><a href="{{ route('admin.settings') }}"><i class="fa fa-cog"></i><span data-i18n="" class="menu-title">@lang('menu.admin.site_setting')</a></li>
                          
                        </ul>
                </li>
                    @endif
                    
              
            </ul>
        </div>
    </div>