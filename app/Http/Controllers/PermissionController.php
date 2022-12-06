<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\StorePermissions;
use Illuminate\Support\Facades\Redirect;
use Spatie\Permission\Models\Permission;

class PermissionController extends Controller
{
    public function index()
    {
        $permissions = Permission::all();
        return view('admin.permissions.index', compact('permissions'));
    }

    public function create()
    {
        return view('admin.permissions.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|unique:permissions|min:4|max:40',
        ]);

        $permission = new Permission();
        $permission->name = $request->name;
        $permission->guard_name = 'web';
        $permission->save();
        session()->flash('status', 'Permission was added successfully!');
        return redirect('/permissions');
    }

    public function edit($id)
    {
        $permission = Permission::findOrFail($id);
        return view('admin.permissions.edit', compact('permission'));
    }

    public function update(StorePermissions $request, $id)
    {
        $permission = Permission::findOrFail($id);
        $validated = $request->validated();
        $permission->fill($validated);
        $permission->save();

        session()->flash('status', 'permission Updated Successfully!');
        return Redirect::route('permissions.index');
    }

    public function destroy($id)
    {
        $permission = Permission::findOrFail($id);
        $permission->delete();
        session()->flash('status', 'permission Deleted Successfully!');
        return Redirect::route('permissions.index');
    }
}
