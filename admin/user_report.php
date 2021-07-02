<?php
require_once '../model/autoload.php';
require_once '../model/tcpdf/tcpdf.php';
date_default_timezone_set("Asia/kolkata");

//echo "<pre>";
//print_r ($_POST);
//echo "</pre>";
$user = new User();

$report_type = $_POST['report_type'];
if ($report_type == 1){
	$title = "Users";
	$userList = $user->getUsers();
} elseif ($report_type == 2){
	$title = "User Status Wise";
	$userList = $user->getStatusWiseUsers($_POST['status']);
} elseif ($report_type == 3){
	$title = "User Location Wise";
	$userList = $user->getLocWiseUser($_POST['country_id'], $_POST['state_id'], $_POST['city_id']);
}
//echo "<pre>";
//print_r ($userList);
//echo "</pre>";
//
//
//die();
class MYPDF extends TCPDF {

	public function Header() {
		$image_file = base_url.'assets/images/logo.png';
		$this->Image($image_file, 10, 5, 50, 10);
		$this->SetXY(190, 10);
		$date = date('d M Y');
		$this->Cell(10, 8, $date, 0, 0, 'R');
		$this->Line(10, 17.5, 200, 17.5);
	}

	public function Footer() {
		$this->Line(10, 282, 200, 282);
		$this->SetY(-15);
		$this->SetFont('helvetica', 'B', 8);
		$this->Cell(0, 10, $this->getAliasNumPage(), 0, false, 'C', 0, '', 0, false, 'T', 'M');
	}

}
$pdf = new MYPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set header and footer fonts
//$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
//$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));
$pdf->SetFont('helvetica', '', 10, '', true);

// set default monospaced font
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// set margins
$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
$pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);
$pdf->setFontSubsetting(true);
//$pdf->setPrintHeader(false);
//$pdf->setPrintFooter(false);
$pdf->SetTitle($title.' Report');

// set auto page breaks
$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

// set image scale factor
$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

$pdf->AddPage('p','A4');
$pdf->SetLineStyle(array('width' => 0.1, 'cap' => 'butt', 'join' => 'miter', 'dash' => 0, 'color' => array(80, 80, 80)));

$pdf->SetXY(10, 20);
$pdf->SetFont('helvetica', 'B', 13, '', true);

$pdf->Cell(190, 8, $title.' Report', 0, 0, 'C');
$pdf->SetXY(14, 30);
$pdf->SetFont('helvetica', '', 10, '', true);
/*
 * b74c4c
 * 7c9bbd
 * */
$pageno = $pdf->PageNo();
$htmlData = '
			<style>
			tbody{
			page-break-inside: auto;
			}
				table th {
					border-right: 1px solid #fff;
				}
				table,
				table td {
					border: 1px solid #f16732;
				}
			</style>

			<table width="100%" style="padding:10px;border: 1px solid #f16732;">
				<tr style="background-color: #f16732;">
					<th>User Id</th>
					<th>User Name</th>
					<th>Email Id</th>
					<th>Contact</th>
					<th>Address</th>
					<th>Location</th>
					<th>Gender</th>
					<th>Status</th>
				</tr>
			';
foreach ($userList as $item)
{
	$htmlData .='
				<tr>
					<td>'. $item["user_id"] .'</td>
					<td>'. $item["user_name"] .'</td>
					<td>'. $item["email"] .'</td>
					<td>'. $item["contact"] .'</td>
					<td>'. $item["address"] .'</td>
					<td>'. $item["city_name"] .'</td>
					<td>'. $item["gender"] .'</td>
					<td>'. (($item["status"]==0)? "Active" : "Blocked") .'</td>
				</tr>';
}

$htmlData .= '</table>';

// Print text using writeHTMLCell()
//$pdf->setTableHeader();
$pdf->writeHTML( $htmlData, 0, 1, 0, true, '');

$pdf->Output('commission.pdf', 'I');
