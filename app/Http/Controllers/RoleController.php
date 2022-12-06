<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreRoles;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class RoleController extends Controller
{
    public function index()
    {
        $roles = Role::whereNotIn('name', ['admin'])->get();
        return view('admin.roles.index', compact('roles'));
    }

    public function create()
    {
        return view('admin.roles.create');
    }

    public function store(StoreRoles $request)
    {
        $validated = $request->validated();
        $role = Role::create($validated);
        session()->flash('status', 'Role was added successfully!');
        return redirect('/roles');
    }

    public function show($id)
    {

    }

    public function edit($id)
    {
        $role = Role::findOrFail($id);
        return view('admin.roles.edit', compact('role'));
    }

    public function update(StoreRoles $request, $id)
    {
        $role = Role::findOrFail($id);
        $validated = $request->validated();
        $role->fill($validated);
        $role->save();

        session()->flash('status', 'Role Updated Successfully!');
        return Redirect::route('roles.index');
    }

    public function destroy($id)
    {
        $role = Role::findOrFail($id);
        $role->delete();
        session()->flash('status', 'Role Deleted Successfully!');
        return Redirect::route('roles.index');
    }

    public function givePermission(Request $request, Role $role)
    {
        $user = User::find(1);
        dd($user->getDirectPermissions());
        $role->syncPermissions($request->permission, []);
        return back()->with('status', 'Permission Added');
    }

}
