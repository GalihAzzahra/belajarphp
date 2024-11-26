<?php
// Konfigurasi database
$host = "localhost"; // Nama host database
$user = "root";      // Username database
$password = "";      // Password database (kosong jika default XAMPP)
$database = "ptbendicar"; // Nama database Anda

// Membuat koneksi ke database
$koneksi = new mysqli($host, $user, $password, $database);

// Cek koneksi
if ($koneksi->connect_error) {
    die("Koneksi gagal: " . $koneksi->connect_error);
}

// Ambil data dari form
$alamat = $_POST['alamat'];
$nama = $_POST['nama'];
$no_ktp = $_POST['NoKTP']; // Name di form harus sama
$no_telp = $_POST['NoTelp'];
$jenis_kendaraan = $_POST['pilihan'];
$tanggal_penyewaan = date("Y-m-d"); // Tanggal otomatis diambil hari ini

// Query untuk menyimpan data
$sql = "INSERT INTO penyewaan (alamat, nama, no_ktp, no_telp, jenis_kendaraan, tanggal_penyewaan)
        VALUES (?, ?, ?, ?, ?, ?)";

// Gunakan prepared statement untuk keamanan
$stmt = $koneksi->prepare($sql);
$stmt->bind_param("ssssss", $alamat, $nama, $no_ktp, $no_telp, $jenis_kendaraan, $tanggal_penyewaan);

// Eksekusi query
if ($stmt->execute()) {
    echo "Data berhasil disimpan ke database!";
} else {
    echo "Gagal menyimpan data: " . $stmt->error;
}

// Tutup koneksi
$stmt->close();
$koneksi->close();
?>
