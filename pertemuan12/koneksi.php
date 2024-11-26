<?php
// Konfigurasi database
$host = "127.0.0.1"; // Server host
$user = "root";      // Username MySQL (ganti jika berbeda)
$password = "";      // Password MySQL (ganti jika ada password)
$database = "ptbendicar"; // Nama database

// Membuat koneksi
$koneksi = new mysqli($host, $user, $password, $database);

// Cek koneksi
if ($koneksi->connect_error) {
    die("Koneksi gagal: " . $koneksi->connect_error);
}
echo "Koneksi berhasil!";
?>
