$(document).ready(function() {
    $('#marketing').DataTable();

    $('#marketing-add').on('click', function () {
        $('form').append('<div class="row g-3 align-items-center mt-1"><div class="col-auto"><label for="inputName" class="col-form-label">Nama</label></div><div class="col"><input name="nama[]" type="text" id="inputName" class="form-control" aria-describedby="passwordHelpInline"></div><div class="col-auto"><div class="btn btn-danger" onclick="this.parentNode.parentNode.parentNode.removeChild(this.parentNode.parentNode);" id="marketing-hapus">+</div></div></div>');
    })

    $('#marketing-hapus').on('click', function () {
    })
} );