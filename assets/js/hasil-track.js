
$(document).ready(function () {
    $(".datepicker").datepicker({
        format: 'yyyy-mm-dd',
        autoclose: true,
        todayHighlight: true,
    });
    
    
    // ===================== DATATABLES ==================================
    
    var table = $('#example').DataTable({
        dom: 'Bfrtip',
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ],
        'processing': true,
        aaSorting: [[0, 'desc']],
        'serverSide': true,
        'pageLength': 100,
        'ajax': {
            'url': 'http://localhost/cekresi/rekap/result/',
            'type': 'POST',
        },
        
    });

    $('#month-select').on('change', function () {
        table.search(this.value).draw();   
     });

    // $.ajax({
    //     dataType: 'json',
    //     url: 'http://localhost/cekresi/rekap/test/' + id,
    //     success: function (params) {
    //         console.log(params);
    //     }
    // })

});