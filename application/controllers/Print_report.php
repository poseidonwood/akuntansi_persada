<?php
/*

*/
defined('BASEPATH') or exit('No direct script access allowed');
class Print_report extends CI_Controller
{
  function __construct()
  {
    parent::__construct();
    $this->load->library('pdf');
  }

  function income($firstdate = null, $secondate = null)
  {
    $pdf = new FPDF('l', 'mm', 'A5');
    // membuat halaman baru
    $pdf->AddPage();
    // setting jenis font yang akan digunakan
    $pdf->SetFont('Arial', 'B', 16);
    // mencetak string 
    $pdf->Cell(190, 7, 'Report Income', 0, 1, 'C');
    $pdf->SetFont('Arial', 'B', 12);
    $pdf->Cell(190, 7, '[bisa diatur untuk tanggal berapa]', 0, 1, 'C');
    // Memberikan space kebawah agar tidak terlalu rapat
    $pdf->Cell(10, 7, '', 0, 1);
    $pdf->SetFont('Arial', 'B', 10);
    $pdf->Cell(30, 6, 'USER', 1, 0);
    $pdf->Cell(60, 6, 'TANGGAL', 1, 0);
    $pdf->Cell(27, 6, 'AMOUNT', 1, 0);
    $pdf->Cell(70, 6, 'DESKRIPSI', 1, 1);
    $pdf->SetFont('Arial', '', 10);
    if ($firstdate && $secondate !== null) {
      $mahasiswa = $this->db->get('mp_customer_payments')->result();
    } else {
      $mahasiswa = $this->db->get('mp_customer_payments')->result();
    }
    foreach ($mahasiswa as $row) {
      $pdf->Cell(30, 6, $row->agentname, 1, 0);
      $pdf->Cell(60, 6, $row->date, 1, 0);
      $pdf->Cell(27, 6, "Rp " . number_format($row->amount, 0, '.', '.'), 1, 0);
      $pdf->Cell(70, 6, $row->description, 1, 1);
    }
    $pdf->Cell(10, 7, '', 0, 1);
    $pdf->Cell(10, 7, '', 0, 1);
    $pdf->SetFont('Arial', 'B', 12);
    $pdf->Cell(190, 7, 'Mengetahui                                                                                                      Hormat Kami', 0, 1, 'C');
    // $pdf->Cell(10, 7, '', 0, 1);
    $pdf->Cell(190, 7, '                                                                                                                          Bendahara', 0, 1, 'C');

    // $pdf->Cell(190, 7, 'Hormat Kami', 0, 1, 'L');
    // $pdf->Cell(10, 7, '', 0, 1);
    // $pdf->Cell(10, 7, '', 0, 1);
    $pdf->Cell(10, 7, '', 0, 1);
    $pdf->Cell(10, 7, '', 0, 1);
    $pdf->SetFont('Arial', 'B', 12);
    $pdf->Cell(190, 7, '____________                                                                                                   ____________', 0, 1, 'C');
    $pdf->Output();
  }

  function expense()
  {
    $pdf = new FPDF('l', 'mm', 'A5');
    // membuat halaman baru
    $pdf->AddPage();
    // setting jenis font yang akan digunakan
    $pdf->SetFont('Arial', 'B', 16);
    // mencetak string 
    $pdf->Cell(190, 7, 'Report Expense', 0, 1, 'C');
    $pdf->SetFont('Arial', 'B', 12);
    $pdf->Cell(190, 7, '[bisa diatur untuk tanggal berapa]', 0, 1, 'C');
    // Memberikan space kebawah agar tidak terlalu rapat
    $pdf->Cell(10, 7, '', 0, 1);
    $pdf->SetFont('Arial', 'B', 10);
    $pdf->Cell(30, 6, 'USER', 1, 0);
    $pdf->Cell(60, 6, 'TANGGAL', 1, 0);
    $pdf->Cell(27, 6, 'AMOUNT', 1, 0);
    $pdf->Cell(70, 6, 'DESKRIPSI', 1, 1);
    $pdf->SetFont('Arial', '', 10);
    $mahasiswa = $this->db->get('mp_expense')->result();
    foreach ($mahasiswa as $row) {
      $pdf->Cell(30, 6, $row->user, 1, 0);
      $pdf->Cell(60, 6, $row->date, 1, 0);
      $pdf->Cell(27, 6, "Rp " . number_format($row->total_paid, 0, '.', '.'), 1, 0);
      $pdf->Cell(70, 6, $row->description, 1, 1);
    }
    $pdf->Cell(10, 7, '', 0, 1);
    $pdf->Cell(10, 7, '', 0, 1);
    $pdf->SetFont('Arial', 'B', 12);
    $pdf->Cell(190, 7, 'Mengetahui                                                                                                      Hormat Kami', 0, 1, 'C');
    // $pdf->Cell(10, 7, '', 0, 1);
    $pdf->Cell(190, 7, '                                                                                                                          Bendahara', 0, 1, 'C');

    // $pdf->Cell(190, 7, 'Hormat Kami', 0, 1, 'L');
    // $pdf->Cell(10, 7, '', 0, 1);
    // $pdf->Cell(10, 7, '', 0, 1);
    $pdf->Cell(10, 7, '', 0, 1);
    $pdf->Cell(10, 7, '', 0, 1);
    $pdf->SetFont('Arial', 'B', 12);
    $pdf->Cell(190, 7, '____________                                                                                                   ____________', 0, 1, 'C');
    $pdf->Output();
  }
}
