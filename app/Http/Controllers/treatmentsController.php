<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\treatment;
use Illuminate\Http\Request;

class treatmentsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\View\View
     */
    public function index(Request $request)
    {
        $keyword = $request->get('search');
        $perPage = 25;

        if (!empty($keyword)) {
            $treatments = treatment::where('patient_id', 'LIKE', "%$keyword%")
                ->orWhere('doctor_id', 'LIKE', "%$keyword%")
                ->orWhere('case_description', 'LIKE', "%$keyword%")
                ->orWhere('diagnose', 'LIKE', "%$keyword%")
                ->orWhere('prescription', 'LIKE', "%$keyword%")
                ->orWhere('date', 'LIKE', "%$keyword%")
                ->orWhere('remark', 'LIKE', "%$keyword%")
                ->latest()->paginate($perPage);
        } else {
            $treatments = treatment::latest()->paginate($perPage);
        }

        return view('user.treatments.index', compact('treatments'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        return view('user.treatments.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function store(Request $request)
    {
        
        $requestData = $request->all();
        
        treatment::create($requestData);

        return redirect('user/treatments')->with('flash_message', 'treatment added!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\View\View
     */
    public function show($id)
    {
        $treatment = treatment::findOrFail($id);

        return view('user.treatments.show', compact('treatment'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\View\View
     */
    public function edit($id)
    {
        $treatment = treatment::findOrFail($id);

        return view('user.treatments.edit', compact('treatment'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param  int  $id
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function update(Request $request, $id)
    {
        
        $requestData = $request->all();
        
        $treatment = treatment::findOrFail($id);
        $treatment->update($requestData);

        return redirect('user/treatments')->with('flash_message', 'treatment updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function destroy($id)
    {
        treatment::destroy($id);

        return redirect('user/treatments')->with('flash_message', 'treatment deleted!');
    }
}
