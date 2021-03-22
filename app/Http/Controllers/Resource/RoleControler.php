<?php

namespace App\Http\Controllers\Resource;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use Illuminate\Database\Eloquent\ModelNotFoundException;

use Route;
use Exception;

use App\Role;


class RoleControler extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $roles = Role::all();
        //dd($roles);
       // return view('admin.roles.index', ['roles' => $roles]);
       
        return view(Route::currentRouteName(), compact('roles'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view(Route::currentRouteName());
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|max:255',
            'guard_name' => 'required|max:255',
           
        ]);

    try {
        $Role = $request->all();
      //  $Role['password'] = bcrypt($request->password);
       // if($request->hasFile('avatar')) {
         //   $User['avatar'] = asset('storage/'.$request->avatar->store('user/profile'));
        //}
        $Role['latitude'] = 0;
        $Role['longitude'] = 0;
        $Role = Role::create($Role);

        // return redirect()->route('admin.users.index')->with('flash_success','User added successfully');
        return back()->with('flash_success',trans('user.created_success',['name'=>$Role->name]));
    } catch (Exception $e) {
        // return redirect()->route('admin.users.index')->with('flash_error', 'Whoops! something went wrong.');
        return back()->with('flash_error', 'Whoops! something went wrong.');
    }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        try {
            $User = Role::findOrFail($id);
            return view(Route::currentRouteName(), compact('Role'));
        } catch (ModelNotFoundException $e) {
            // return redirect()->route('admin.users.index')->with('flash_error', 'User not found!');
            return back()->with('flash_error', 'Role not found!');
        } catch (Exception $e) {
            // return redirect()->route('admin.users.index')->with('flash_error', 'Whoops! something went wrong.');
            return back()->with('flash_error', 'Whoops! something went wrong.');
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        try {
            $Role = Role::findOrFail($id);
            return view(Route::currentRouteName(), compact('Role'));
        } catch (ModelNotFoundException $e) {
            // return redirect()->route('admin.users.index')->with('flash_error', 'User not found!');
            return back()->with('flash_error', 'Role not found!');
        } catch (Exception $e) {
            // return redirect()->route('admin.users.index')->with('flash_error', 'Whoops! something went wrong.');
            return back()->with('flash_error', 'Whoops! something went wrong.');
        }
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
        try {
            $Role = Role::findOrFail($id);
            
            $Update['name'] = $request->name;
            $Update['guard_name'] = $request->guard_name;
           // $Update['phone'] = $request->phone;

           // if($request->has('password')) {
             //   $Update['password'] = bcrypt($request->password);
            //}
            
            //if($request->hasFile('avatar')) {
             //   $Update['avatar'] = asset('storage/'.$request->avatar->store('user/profile'));
            //}

            $Role->update($Update);
            // return redirect()->route('admin.users.index')->with('flash_success', 'User details updated!');
            return back()->with('flash_success', trans('user.updated_success',['name'=>$Role->name]));
        } catch (ModelNotFoundException $e) {
            // return redirect()->route('admin.users.index')->with('flash_error', 'User not found!');
            return back()->with('flash_error', 'Role not found!');
        } catch (Exception $e) {
            // return redirect()->route('admin.users.index')->with('flash_error', 'Whoops! something went wrong.');
            return back()->with('flash_error', 'Whoops! something went wrong.');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $Role = Role::findOrFail($id);
            $Role->name = $Role->name.'-'.uniqid();
            $Role->guard_name = $Role->guard_name.'-'.uniqid();
           // $User->social_unique_id = $User->social_unique_id.'-'.uniqid();
            $Role->save();
            $Role->delete();

            return back()->with('flash_success','Role has been deleted!');
        } catch (ModelNotFoundException $e) {
            return back()->with('flash_error', 'Whoops! something went wrong.');
        }
    }
}
