$(document).ready(function () {
    
    
    // ===================== DATATABLES ==================================
    
    var table = $('#example').DataTable({
        'processing' : true,
        'serverSide': true,
        // 'pageLength': 100,
        "ordering": false,
        'ajax' : {
            'url' : 'http://localhost/cekresi/welcome/datatables',
            'type': 'POST',
            'data': proses
        },
    });

    
    $(".datepicker").datepicker({
        format: 'yyyy-mm-dd',
        autoclose: true,
        todayHighlight: true,
    });

    $('#month-select').on('change', function () {
        table.search(this.value).draw();   
     });


    // ================== LOAD RESI ======================================

    function proses(data) {
        $.ajax({
            type: 'GET', 
            url: 'http://localhost/cekresi/welcome/token',
            success: function (token) {
                getData(token, data);
            }
        });
        
    }

    function getData(token, data) {
        $.ajax({
            type: 'POST',
            data: data,
            url: 'http://localhost/cekresi/welcome/datatables',
            success: function (params) {
                getStatus(token, params.hasil)
            }
        });
    }
    
    function getStatus(token, data_resi) {
        data_resi.forEach(data => {
            $.ajax({
                type: 'POST',
                url: 'http://localhost/cekresi/welcome/status',
                data: {token: token,courier: data.courier, awb: data.awb.trim()},
                success: function (status_resi) {
                    $('.' + data.awb).empty();
                    $('.' + data.awb).append(result(status_resi, data));
                    console.log(status_resi);
                },
                error: function (params) {
                    console.log(params);
                }
            });
        });
    }

    function result(resi, data_rekap) {

        let crud = "<small><span role='button' onclick='return hapus("+data_rekap.id+")' class='badge bg-danger'>Hapus</span>" +
            " <a href='http://localhost/cekresi/transaksi/edit/"+data_rekap.id+"'><span class='badge bg-info'>Edit</span></a></small>";

        if (resi === null) {
            return "<span class='badge bg-danger'>Server Error!</span>"
        }

        if (resi.code === 400) {
            return "<span class='badge bg-danger'>Tidak terlacak!</span><br>" + crud;
        } else {
            if (resi.status === "DELIVERED") {
                insertRekap(resi, data_rekap);
                return '<span class="badge bg-success">'+resi.status+'</span>';
            } else if (resi.status === "RETURNED"){
                insertRekap(resi, data_rekap);
                return '<span class="badge bg-warning">'+resi.status+'</span>';            
            } else {
                return '<span class="badge bg-info text-dark">'+resi.status+'</span>' + crud;
            }
        }

        // Tidak terlacak
        // if (resi.error !== undefined) {
        //     return "<span class='badge bg-danger'>Tidak terlacak!</span><br>" + crud;
        // }
        
        // // return
        // if (resi['actual_latest_status']['message'].toLowerCase().includes('retur') || resi.status.toLowerCase().includes('retur')) {
        //     resi.status = "RETURN";
        //     insertRekap(resi, data_rekap);
        //     return '<span class="badge bg-danger" title="'+resi['actual_latest_status']['message']+'">RETURN</span>'
        // }
        
        // // on process
        // if (resi.status.toLowerCase().includes('on process')) {
        //     return '<span class="badge bg-info text-dark" title="'+resi['actual_latest_status']['message']+'">'+resi.status+'</span>'
        // }
        
        // // sukses
        // insertRekap(resi, data_rekap);
        // return '<span class="badge bg-success" title="'+resi['actual_latest_status']['message']+'">'+resi.status+' '+resi.history.at(-1).date+'</span>'
    }

    function insertRekap(resi, data_rekap) {
        let data = {
            id_trx: data_rekap.id,
            tanggal: '',
            keterangan: '',
            status: resi.status
        }

        $.ajax({
            type: 'post',
            url: 'http://localhost/cekresi/rekap/insert',
            data: data,
            success: function (params) {
                console.log(params);
            }
        })
    }
    
});

function hapus(params) {
    if (confirm('Konfirmasi')) {
        $.ajax({
            type: 'delete',
            url: 'http://localhost/cekresi/transaksi/delete',
            data: { id: params },
            success: () => ($('#example').DataTable().ajax.reload())
        })
    }
}