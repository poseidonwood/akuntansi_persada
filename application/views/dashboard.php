<section class="content">
    <div class="row">
        <div class="col-lg-12 col-xs-6">
            <div class="small-box bg-yellow">
                <div class="inner">
                    <h3><label class="label ">Rp <?php echo number_format($cash_in_hand, 0, '.', '.'); ?></label></h3>

                    <h4 class="paragraph">Saldo Kas <?php echo $currency; ?></h4>
                </div>
                <div class="icon">
                    <i class="fa fa-money " aria-hidden="true"></i>
                </div>
                <a href="<?php echo base_url('statements/leadgerAccounst'); ?>" class="small-box-footer">Lihat <i class="fa fa-hand-o-right"></i></a>
            </div>
        </div>
        <!-- <div class="col-lg-3 col-xs-6">
            <div class="small-box bg-red">
                <div class="inner">
                    <?php
                    if ($payables < 0) {
                        $payables = '(' . - (number_format($payables, 0, '.', '')) . ')';
                    }

                    ?>
                    <h3><label class="label"><?php echo $payables; ?></label></h3>

                    <h4 class="paragraph">Hutang Usaha (AP) <?php echo $currency; ?></h4>
                </div>
                <div class="icon">
                    <i class="fa fa-hand-o-right" aria-hidden="true"></i>
                </div>
                <a href="<?php echo base_url('statements/leadgerAccounst'); ?>" class="small-box-footer">Lihat <i class="fa fa-hand-o-right"></i></a>
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box bg-green ">
                <div class="inner">
                    <h3><label class="label"><?php echo number_format($account_recieveble, 0, '.', ''); ?></label></h3>

                    <h4 class="paragraph">Piutang Usaha (AR) <?php echo $currency; ?></h4>
                </div>
                <div class="icon">
                    <i class="fa fa-lemon-o"></i>
                </div>
                <a href="<?php echo base_url('statements/leadgerAccounst'); ?>" class="small-box-footer">Lihat <i class="fa fa-hand-o-right"></i></a>
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box custom-bg-color-second">
                <div class="inner">
                    <h3><label class="label"><?php echo $product_Count; ?></label></h3>

                    <h4 class="paragraph">Stok Produk</h4>
                </div>
                <div class="icon">
                    <i class="fa fa-shopping-basket" aria-hidden="true"></i>
                </div>
                <a href="<?php echo base_url('product/productStock'); ?>" class="small-box-footer">Lihat <i class="fa fa-hand-o-right"></i></a>
            </div>
        </div> -->
    </div>
    <!-- <div class="row">
        <div class="col-md-3">
            <div class="box box-success">
                <div class="info-box">
                    <span class="info-box-icon bg-red"><i class="fa fa-book"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">
                            <h4>Bagan Akun</h4>
                        </span>
                        <span class="info-box-number"><a href="<?php base_url() ?>accounts">Lihat</a></span>
                    </div>
                </div>

            </div>
        </div>
        <div class="col-md-3">
            <div class="box box-success">
                <div class="info-box">
                    <span class="info-box-icon bg-blue"><i class="fa fa-list-alt"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">
                            <h4>Jurnal Umum</h4>
                        </span>
                        <span class="info-box-number"><a href="<?php base_url() ?>statements">Lihat</a></span>
                    </div>
                </div>

            </div>
        </div>
        <div class="col-md-3">
            <div class="box box-success">
                <div class="info-box">
                    <span class="info-box-icon bg-yellow"><i class="fa fa-calendar-plus-o"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">
                            <h4>Buku Besar</h4>
                        </span>
                        <span class="info-box-number"><a href="<?php base_url() ?>statements/leadgerAccounst">Lihat</a></span>
                    </div>
                </div>

            </div>
        </div>
        <div class="col-md-3">
            <div class="box box-success">
                <div class="info-box">
                    <span class="info-box-icon bg-green"><i class="fa fa-money"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">
                            <h4>Neraca</h4>
                        </span>
                        <span class="info-box-number"><a href="<?php base_url() ?>statements/balancesheet">Lihat</a></span>
                    </div>
                </div>

            </div>
        </div>
    </div> -->
    <div class="row">
        <div class="col-lg-3 col-xs-6">
            <div class="small-box custom-bg-color">
                <div class="inner">
                    <h3><label class="label">Rp <?= number_format($Sales_sum_today_count, 0, ',', '.'); ?></label></h3>
                    <h4 class="paragraph">Income Hari Ini : <strong><?php echo $Sales_today_count; ?></strong> Transaksi</h4>
                </div>
                <div class="icon">
                    <i class="fa fa-bar-chart "></i>
                </div>
                <a href="<?php echo base_url('customers/payment_list'); ?>" class="small-box-footer">Lihat <i class="fa fa-hand-o-right"></i></a>
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box custom-bg-color">
                <div class="inner">
                    <h3><label class="label">Rp <?= number_format($Sales_sum_month_count, 0, ',', '.'); ?></label></h3>

                    <h4 class="paragraph">Income Bulan Ini : <strong><?php echo $Sales_month_count; ?> </strong> Transaksi</h4>
                </div>
                <div class="icon">
                    <i class="fa fa-area-chart "></i>
                </div>
                <a href="<?php echo base_url('customers/payment_list'); ?>" class="small-box-footer">Lihat <i class="fa fa-hand-o-right"></i></a>
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box custom-bg-color-second">
                <div class="inner">
                    <h3><label class="label">Rp <?= number_format($Expense_sum_today_count, 0, ',', '.'); ?></label></h3>
                    <h4 class="paragraph">Expense Hari Ini : <strong><?php echo $Expense_today_count; ?> </strong> Transaksi</h4>
                </div>
                <div class="icon">
                    <i class="fa fa-cubes"></i>
                </div>
                <a href="<?php echo base_url('expense'); ?>" class="small-box-footer">Lihat <i class="fa fa-hand-o-right"></i></a>
            </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box custom-bg-color-second">
                <div class="inner">
                    <h3><label class="label">Rp <?= number_format($Expense_sum_month_count, 0, ',', '.'); ?></label></h3>

                    <h4 class="paragraph">Expense Bulan Ini : <strong><?php echo $Expense_month_count; ?> </strong> Transaksi</h4>

                </div>
                <div class="icon">
                    <i class="fa fa-rocket" aria-hidden="true"></i>
                </div>
                <a href="<?php echo base_url('expense'); ?>" class="small-box-footer">Lihat <i class="fa fa-hand-o-right"></i></a>
            </div>
        </div>
    </div>
</section>
<div class="row">
    <section class="col-lg-7 connectedSortable">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title"><i class="fa fa-money" aria-hidden="true"></i> Pemasukan & Pengeluaran Tahun Ini <?php echo $currency; ?></h3>
                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                    </button>
                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                </div>
            </div>
            <div class="box-body">
                <div class="chart">
                    <canvas id="areaChart" style="height:250px"></canvas>
                </div>
            </div>
        </div>
    </section>
    <section class="col-lg-5 connectedSortable">
        <div class="box box-primary ">
            <div class="box-header with-border">
                <h3 class="box-title"> <i class="ion ion-stats-bars "></i> Profit Penjualan Tahun Ini <?php echo $currency; ?> </h3>
                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                    </button>
                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                </div>
            </div>
            <div class="box-body">
                <div class="chart">
                    <canvas id="lineChart" style="height:249px"></canvas>
                </div>
            </div>
        </div>

    </section>


</div>
<style>
    .small-box>.inner {
        padding: 20px;
    }

    @media (min-width: 992px) {
        .col-md-10 {
            width: 85.333333%;
        }
    }
</style>
<?php
$this->load->view('script/dashboard_script.php');
?>