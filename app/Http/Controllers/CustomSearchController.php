<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;

class CustomSearchController extends Controller {
	function index(Request $request) {
		if (request()->ajax()) {
			if (!empty($request->filter_gender)) {
				$data = DB::table('tbl_customer')
					->select('customername', 'gender', 'address', 'city', 'postalcode', 'country')
					->where('gender', $request->filter_gender)
					->where('country', $request->filter_country)
					->get();
			} else {
				$data = DB::table('tbl_customer')
					->select('customername', 'gender', 'address', 'city', 'postalcode', 'country')
					->get();
			}
			return datatables()->of($data)->make(true);
		}
		$country_name = DB::table('tbl_customer')
			->select('country')
			->groupBy('country')
			->orderBy('country', 'ASC')
			->get();
		return view('custom_search', compact('country_name'));
	}
}
