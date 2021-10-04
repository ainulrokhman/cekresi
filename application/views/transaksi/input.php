<div class="card mt-3">
    <div class="card-body">
        <div class="row">
            <div class="col">
                <input type="text" name="tanggal[]" class="form-control datepicker" placeholder="<?= date("Y-m-d"); ?>" required/>
            </div>
            <div class="col">
                <input type="text" name="konsumen[]" class="form-control" placeholder="Nama Konsumen" required>
            </div>
            <div class="col">
                <select class="selectpicker" name="marketing[]" data-live-search="true">
                    <?php foreach($marketing as $m): ?>
                        <option value="<?= $m['id']; ?>"><?= $m['nama']; ?></option>
                    <?php endforeach; ?>
                    <option value="" selected disabled>-- PILIH MARKETING --</option>
                </select>
            </div>
        </div>
        <div class="row mt-1">
            <div class="col">
                    <input type="text" name="obat[]" class="form-control" placeholder="Data obat" required>
                </div>
                <div class="col">
                    <input type="text" name="resi[]" class="form-control" placeholder="Resi" required>
                </div>
                <div class="col">
                <select class="selectpicker" name="expedisi[]" data-live-search="true">
                    <?php foreach($expedisi as $m): ?>
                        <option value="<?= $m['id']; ?>"><?= $m['nama']; ?></option>
                    <?php endforeach; ?>
                    <option value="" selected disabled>--PILIH EXPEDISI --</option>
                </select>
            </div>
        </div>
    </div>
    <?php if(isset($hapus)): ?>
        <div class="btn btn-danger w-25" onclick="this.parentNode.parentNode.removeChild(this.parentNode);">Hapus Kolom</div>
    <?php endif; ?>
</div>