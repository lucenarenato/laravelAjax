<html>
 <head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Adagio - Individual Column Search in Datatables using Ajax</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
  <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" />
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 </head>
 <body>
  <div class="container-fluid">
     <br />
     <h3 align="center">Advice - Custom Search in Datatables using Ajax</h3>
     <br />
            <br />
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="form-group">
                        <select name="filter_gender" id="filter_gender" class="form-control" required>
                            <option value="">Select</option>
                            <option value="status">Status</option>
                            <option value="situacao_cadastral">Situação</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <select name="filter_country" id="filter_country" class="form-control" required>
                            <option value="">Select</option>
                            @foreach($advice_name as $advice)

                            <option value="{{ $advice->cpf_condutor }}">{{ $advice->cpf_condutor }}</option>

                            @endforeach
                        </select>
                    </div>

                    <div class="form-group" align="center">
                        <button type="button" name="filter" id="filter" class="btn btn-info">Filter</button>

                        <button type="button" name="reset" id="reset" class="btn btn-default">Reset</button>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>
            <br />
    <a class = "list-group-item active">
        Registros
    </a><br>
   <div class="table-responsive">
    <table id="customer_data" class="table table-bordered table-striped display nowrap condesed" cellspacing="0" width="100%" style="width:100%">
                    <thead>
                        <tr>
                            <th style="width:5%" class="hidden-xs hidden-sm text-uppercase adagio-header-registros">ID</th>
                            <th class="hidden-xs hidden-sm text-uppercase adagio-header-registros">Nome</th>
                            <th>CPF</th>
                            <th>Placa</th>
                            <th>Renavam</th>
                            <th>Data</th>

                        </tr>
                    </thead>
                </table>
   </div>
            <br />
            <br />
  </div>
 </body>
</html>

<script>
$(document).ready(function(){

    fill_datatable();

    function fill_datatable(filter_gender = '', filter_country = '')
    {
        var dataTable = $('#customer_data').DataTable({
            processing: true,
            serverSide: true,
            ajax:{
                url: "{{ route('advice.index') }}",
                data:{filter_gender:filter_gender, filter_country:filter_country}
            },
            language: {
                processing: "Processando...",
                search: "Pesquisar",
                lengthMenu: "Mostrar _MENU_ registros",
                info: "Exibindo de _START_ a _END_ em _TOTAL_ registros",
                infoEmpty: "Nenhum item encontrado",
                infoFiltered: "(filtro sobre _MAX_)",
                emptyTable: "Sem registros para listagem",
                zeroRecords: "Sem registros para listagem",
                paginate: {
                    first: "Primeiro",
                    previous: "Anterior",
                    next: "Próximo",
                    last: "Último"
                }
            },
            columns: [
                {
                    data:'id_cartorial_dado',
                    name:'id_cartorial_dado'
                },
                {
                    data:'nome_condutor',
                    name:'nome_condutor'
                },
                {
                    data:'cpf_condutor',
                    name:'cpf_condutor'
                },
                {
                    data:'placa_veiculo',
                    name:'placa_veiculo'
                },
                {
                    data:'renavam',
                    name:'renavam'
                },
                {
                    data:'created_at',
                    name:'created_at'
                }
            ]
        });
    }

    $('#filter').click(function(){
        var filter_gender = $('#filter_gender').val();
        var filter_country = $('#filter_country').val();

        if(filter_gender != '' &&  filter_gender != '')
        {
            $('#customer_data').DataTable().destroy();
            fill_datatable(filter_gender, filter_country);
        }
        else
        {
            alert('Select Both filter option');
        }
    });

    $('#reset').click(function(){
        $('#filter_gender').val('');
        $('#filter_country').val('');
        $('#customer_data').DataTable().destroy();
        fill_datatable();
    });

});
</script>