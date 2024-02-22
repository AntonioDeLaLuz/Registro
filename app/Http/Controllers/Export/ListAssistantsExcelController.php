<?php

namespace App\Http\Controllers\Export;

use App\Http\Controllers\Controller;
use Maatwebsite\Excel\Facades\Excel;
use App\Http\Exports\ListExportExcel;
use App\Models\Evento;

class ListAssistantsExcelController extends Controller
{
    /**
     * Muestra la lista de usuarios registrados.
     *
     * @return Response
     */
    public function ListExportExcel(Evento $evento)
    {
        info($evento);
        // Generar el archivo Excel
        return Excel::download(new ListExportExcel($evento), 'Lista.xlsx');
    }
}
