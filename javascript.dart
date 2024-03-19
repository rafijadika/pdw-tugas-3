function show() {
    var tanggal = new Date();
    var result = confirm(". Apakah Anda ingin melanjutkan?");
    if (result == true) {
        // Buka profil Instagram dengan nama pengguna tertentu
        var usernameInstagram = "waga_deg"; // Ganti dengan nama pengguna Instagram yang diinginkan
        var linkInstagram = "https://www.instagram.com/" + usernameInstagram;
        window.open(linkInstagram, "_blank");
    } else {
        // Kode untuk jika pengguna menekan Cancel
    }
}


function updateClock() {
    var now = new Date();
    var hours = now.getHours();
    var minutes = now.getMinutes();
    var seconds = now.getSeconds();
    var day = now.getDate();
    var month = now.getMonth() + 1; // Januari dimulai dari 0
    var year = now.getFullYear();

    // Tambahkan nol di depan angka jika angka < 10
    hours = hours < 10 ? '0' + hours : hours;
    minutes = minutes < 10 ? '0' + minutes : minutes;
    seconds = seconds < 10 ? '0' + seconds : seconds;
    day = day < 10 ? '0' + day : day;
    month = month < 10 ? '0' + month : month;

    var waktu = hours + ':' + minutes + ':' + seconds;
    var tanggal = day + '/' + month + '/' + year;

    document.getElementById("hasil").innerHTML = "Waktu sekarang: " + waktu + "<br>Tanggal sekarang: " + tanggal;
}

// Panggil fungsi updateClock setiap 1 detik (1000 milidetik)
setInterval(updateClock, 1000);

// Panggil updateClock() agar waktu ditampilkan sesaat setelah halaman dimuat
updateClock();