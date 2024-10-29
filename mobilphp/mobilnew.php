<?php
// Membuat Objek dari Kelas Mobil
$mobil2 = new Mobil("Honda", "Biru");
$mobil3 = new Mobil("Suzuki", "Hitam");

// Menggunakan method tampilkanInfo pada kedua mobil
$mobil2->tampilkanInfo();  // Menampilkan info mobil kedua
$mobil3->tampilkanInfo();  // Menampilkan info mobil ketiga

// Menjalankan mobil kedua dan ketiga dengan kecepatan berbeda
$mobil2->jalankan(80);  // Mobil Honda dijalankan dengan kecepatan 80 km/jam
$mobil3->jalankan(100); // Mobil Suzuki dijalankan dengan kecepatan 100 km/jam

// Menampilkan informasi setelah mobil dijalankan
$mobil2->tampilkanInfo();
$mobil3->tampilkanInfo();

// Menghentikan mobil kedua dan ketiga
$mobil2->berhenti();  // Mobil Honda berhenti
$mobil3->berhenti();  // Mobil Suzuki berhenti

// Menampilkan informasi terakhir setelah mobil berhenti
$mobil2->tampilkanInfo();
$mobil3->tampilkanInfo();
?>
