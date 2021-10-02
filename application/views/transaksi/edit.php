<form method="post">
    <div class="row g-3 align-items-center mb-3">
        <div class="col-3">
            <label class="col-form-label">Tanggal</label>
        </div>
        <div class="col-3">
            <input type="text" name="tanggal" class="form-control datepicker" value="<?= $data['tanggal']; ?>" />
        </div>
    </div>
    <div class="row g-3 align-items-center mb-3">
        <div class="col-3">
            <label class="col-form-label">Konsumen</label>
        </div>
        <div class="col-3">
            <input type="text" name="konsumen" class="form-control" value="<?= $data['konsumen']; ?>"  required>
        </div>
    </div>
    <div class="row g-3 align-items-center mb-3">
        <div class="col-3">
            <label class="col-form-label">Marketing</label>
        </div>
        <div class="col-3">
            <select class="selectpicker" name="marketing" data-live-search="true">
                <?php foreach($marketing as $m): ?>
                    <?php if($m['id'] === $data['id_marketing']): ?>
                        <option value="<?= $m['id']; ?>" selected><?= $m['nama']; ?></option>
                    <?php else: ?>
                            <option value="<?= $m['id']; ?>"><?= $m['nama']; ?></option>
                    <?php endif; ?>
                <?php endforeach; ?>
            </select>
        </div>
    </div>
    <div class="row g-3 align-items-center mb-3">
        <div class="col-3">
            <label class="col-form-label">Obat</label>
        </div>
        <div class="col-3">
            <input type="text" name="obat" class="form-control" value="<?= $data['obat']; ?>" required>
        </div>
    </div>
    <div class="row g-3 align-items-center mb-3">
        <div class="col-3">
            <label class="col-form-label">Resi</label>
        </div>
        <div class="col-3">
            <input type="text" name="resi" class="form-control" value="<?= $data['resi']; ?>" required>
        </div>
    </div>
    <div class="row g-3 align-items-center mb-3">
        <div class="col-3">
            <label class="col-form-label">Expedisi</label>
        </div>
        <div class="col-3">
            <select class="selectpicker" name="expedisi" data-live-search="true">
                <?php foreach($expedisi as $m): ?>
                    <?php if($m['id'] === $data['id_expedisi']): ?>
                        <option value="<?= $m['id']; ?>" selected><?= $m['nama']; ?></option>
                    <?php else: ?>
                            <option value="<?= $m['id']; ?>"><?= $m['nama']; ?></option>
                    <?php endif; ?>
                <?php endforeach; ?>
            </select>
        </div>
    </div>
    <button type="submit" class="btn btn-primary">Simpan</button>
</form>
