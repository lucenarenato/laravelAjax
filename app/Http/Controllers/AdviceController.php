<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;

class AdviceController extends Controller {
	function index(Request $request) {
		if (request()->ajax()) {
			if (!empty($request->filter_gender)) {
				$data = DB::table('cartorial_dados')
					->select('id_cartorial_dado', 'nome_condutor', 'cpf_condutor', 'placa_veiculo', 'renavam', 'status', 'rg_condutor', 'marca_veiculo', 'modelo_veiculo', 'placa_integrada_1', 'placa_integrada_2', 'created_at')
					->where('status', $request->filter_gender)
					->where('situacao_cadastral', $request->filter_country)
					->get();
			} else {
				$data = DB::table('cartorial_dados')
					->select('id_cartorial_dado', 'nome_condutor', 'cpf_condutor', 'placa_veiculo', 'renavam', 'status', 'rg_condutor', 'marca_veiculo', 'modelo_veiculo', 'placa_integrada_1', 'placa_integrada_2', 'created_at')
					->get();
			}
			return datatables()->of($data)->make(true);
		}
		//dd('teste');
		$advice_name = DB::table('cartorial_dados')
			->select('cpf_condutor')
			->groupBy('cpf_condutor')
			->orderBy('cpf_condutor', 'ASC')
			->get();
		return view('advice', compact('advice_name'));
	}
}
