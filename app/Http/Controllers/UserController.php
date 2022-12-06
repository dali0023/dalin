<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Permission;

class UserController extends Controller
{

    public function index()
    {
        $users = User::all();
        return view('admin.users.index', compact('users'));
    }

    public function create()
    {
        $permissions = Permission::all();
        $checkNewuser = 'new';
        return view('admin.users.create', compact('permissions', 'checkNewuser'));
    }

    public function store(Request $request)
    {

        $request->validate([
            'name' => ['required', 'string', 'min:5', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => 'required|confirmed|min:6',
        ]);

        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $user->save();
        $user->syncPermissions($request->permission, []);

        session()->flash('status', 'User was added successfully!');
        return redirect('/users');
    }

    public function edit($id)
    {
        $user = User::findOrFail($id);
        $permissions = Permission::all();
        $checkNewuser = 'exits';
        return view('admin.users.edit', compact('user', 'permissions', 'checkNewuser'));
    }

    public function update(Request $request, $id)
    {
        $user = User::findOrFail($id);
        $request->validate([
            'name' => ['required', 'string', 'min:5', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255'],
        ]);
        $user = User::find($id);
        $user->name = $request->name;
        $user->email = $request->email;
        $user->save();
        $user->syncPermissions($request->permission, []);

        session()->flash('status', 'User was added successfully!');
        return redirect('/users');
    }

    public function destroy($id)
    {
        try {
            $user = User::find($id);
            $user->delete();
            $user->revokePermissionTo($user->permissions);
        } catch (\Exception$e) {
            return redirect('/users')->with('status', 'User was not deleted!');
        }
        return redirect('/users')->with('status', 'User was deleted Successfully!');
    }
}
