<?php
session_start();
require 'db_connect.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $first_name = $_POST["first_name"];
    $last_name = $_POST["last_name"];
    $email = $_POST["email"];
    $password = password_hash($_POST["password"], PASSWORD_DEFAULT);
    $gender = $_POST["gender"];
    $birth_day = $_POST["birth_day"];
    $birth_month = $_POST["birth_month"];
    $birth_year = $_POST["birth_year"];
    $newsletter = isset($_POST["newsletter"]) ? 1 : 0;

    // Validasi email unik
    $check_email = $conn->prepare("SELECT email FROM users WHERE email = ?");
    $check_email->bind_param("s", $email);
    $check_email->execute();
    $result = $check_email->get_result();

    if ($result->num_rows > 0) {
        header("Location: register.php?message=Email%20sudah%20terdaftar!&type=danger");
        exit();
    } else {
        $stmt = $conn->prepare("INSERT INTO users (first_name, last_name, email, password, gender, birth_day, birth_month, birth_year, newsletter) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("sssssiisi", $first_name, $last_name, $email, $password, $gender, $birth_day, $birth_month, $birth_year, $newsletter);

        if ($stmt->execute()) {
            header("Location: index.php?message=Registrasi%20berhasil!&type=success");
            exit();
        } else {
            header("Location: register.php?message=Terjadi%20kesalahan,%20coba%20lagi!&type=danger");
            exit();
        }
        $stmt->close();
    }
    $conn->close();
}
?>
