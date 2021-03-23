<?php

namespace App\Http\Controllers\Resource;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Route;
use App\Role;
use DB;
use Exception;
use App\RolePermission;

class PermissionsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $permission = DB::table('role_permissions')
        ->join('roles','roles.id','=','role_permissions.role_id')
        ->select('roles.name','role_permissions.*')
        ->get();

        //dd($permission);
        return view(Route::currentRouteName(), compact('permission'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $Roles = Role::all();
        return view(Route::currentRouteName(),compact('Roles'));
    }

    
    public function fetch(Request $request)
    {
        $select = $request->get('select');

        $data = DB::table('roles')
        ->where('id',$select)
        ->get();


        return response()->json($data);
    }



    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //dd($request);

        $this->validate($request, [
            'role' => 'required',
            
           
        ]);
 
        
            //$permission = $request->all();

            $model = new RolePermission();
            $model->role_id = $request->role;
            $model->dashboard = $request->dashboard;
            $model->restaurant = $request->restaurant;
            $model->delivery_poeple = $request->delivery_poeple;
            $model->add_admins = $request->add_admins;
            $model->restaurant_banner = $request->restaurant_banner;
            $model->roles = $request->roles;
            $model->user = $request->user;
            $model->setting = $request->setting;
           // dd($model);
           $model->save();

            //$permission = RolePermission::create($permission);
    
            // return redirect()->route('admin.users.index')->with('flash_success','User added successfully');
            return back()->with('flash_success',trans('user.created_success',['name'=>'Permissions']));
            // return redirect()->route('admin.users.index')->with('flash_error', 'Whoops! something went wrong.');
            return back()->with('flash_error', 'Whoops! something went wrong.');
        
        



    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
