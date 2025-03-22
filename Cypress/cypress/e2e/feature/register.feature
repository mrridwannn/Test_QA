Feature: Registrasi Pengguna

  Scenario: Verifikasi Pengguna Berhasil Register
    Given pengguna membuka halaman register
    When pengguna mengisi semua field dengan data valid
    Then registrasi berhasil

  Scenario: Verifikasi Pengguna Gagal Register - Input email yang sudah terdaftar
    Given pengguna membuka halaman register
    When pengguna menginput email yang sudah terdaftar
    Then muncul pesan error Email sudah terdaftar!

  Scenario: Verifikasi Pengguna Gagal Register - Input email temporary/disposable
    Given pengguna membuka halaman register
    When pengguna menginput email temporary
    Then muncul pesan error Email tidak diperbolehkan
