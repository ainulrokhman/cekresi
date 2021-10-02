<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<div class="card py-3">
    <h5 class="card-title my-3 mx-auto">Input Transaksi COD</h5>
    <form action="insert" method="POST">
    <div class="card-body append">
        <?php $this->load->view('transaksi/input'); ?>
    </div>
    
    <div class="container mt-3">
                <div class="col-6 mx-auto">
                    <div class="row">
                        <button type="submit" class="col-3 btn btn-primary mx-auto">
                            <i class="fas fa-save"></i>
                            Simpan
                        </button>
                        <div class="col-6 btn btn-secondary mx-auto" onclick="tambah()">
                            <i class="fas fa-plus"></i>
                            Tambah Kolom
                        </div>
                    </div>
                </div>
            </div>
    </form>
</div>