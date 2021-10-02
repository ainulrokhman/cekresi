<div class="card">
    <div class="row mt-3 px-3">
        <div class="col-4"><h3 class="modal-title">Data Marketing</h3></div>
        <div class="col-5"></div>
        <div class="col-3">
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary float-end" data-bs-toggle="modal" data-bs-target="#exampleModal">
            Input Marketing
            </button>

            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Form Input</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form method="post" action="<?= base_url('marketing/insert'); ?>">
                    <div class="row g-3 align-items-center">
                        <div class="col-auto">
                            <label for="inputName" class="col-form-label">Nama</label>
                        </div>
                        <div class="col">
                            <input name="nama[]" type="text" id="inputName" class="form-control" aria-describedby="passwordHelpInline">
                        </div>
                        <div class="col-auto">
                            <div class="btn btn-secondary" id="marketing-add">+</div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                    </form>
                </div>
                </div>
            </div>
            </div>
        </div>
    </div>
    <div class="card-body">
        <table id="marketing" class="table table-striped" style="width:100%">
            <thead>
                <tr>
                    <td>Nama Marketing</td>
                </tr>
            </thead>
            <tbody>
                <?php foreach($marketing as $m): ?>
                    <tr>
                        <td><?= $m['nama']; ?></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</div>