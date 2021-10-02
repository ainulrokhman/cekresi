                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2021</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        
        <?php if(isset($js)): ?>
            <?php foreach($js as $link): ?>
                <script src="<?= $link; ?>"></script>
            <?php endforeach; ?>
        <?php endif; ?>
        <script src="<?= base_url('assets/'); ?>js/scripts.js"></script>
    </body>
</html>