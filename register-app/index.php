<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Welcome to the System</h2>

        <!-- Menampilkan pesan jika ada -->
        <?php if (isset($_GET['message'])): ?>
            <div class="alert alert-<?php echo $_GET['type']; ?>" id="alert-message">
                <?php echo htmlspecialchars($_GET['message']); ?>
            </div>
        <?php endif; ?>

        <p class="text-center">Thank you for registering. You can now log in.</p>
        <div class="text-center">
            <a href="register.php" class="btn btn-primary">Go Back to Register</a>
        </div>
    </div>
</body>
</html>
