<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f8f9fa;
        }
        .container {
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="text-center fw-bold">Test Quality Assurance</h2>
        <p class="text-center fw-semibold">Create an Account</p>

        <!-- Menampilkan pesan jika ada -->
        <?php if (isset($_GET['message'])): ?>
            <div class="alert alert-<?php echo $_GET['type']; ?>" id="alert-message">
                <?php echo htmlspecialchars($_GET['message']); ?>
            </div>
        <?php endif; ?>

        <form action="process_register.php" method="POST">
            <div class="row mb-3">
                <div class="col">
                    <label class="form-label">First Name*</label>
                    <input type="text" name="first_name" class="form-control" required>
                </div>
                <div class="col">
                    <label class="form-label">Last Name*</label>
                    <input type="text" name="last_name" class="form-control" required>
                </div>
            </div>

            <div class="mb-3">
                <label class="form-label">Email Address*</label>
                <input type="email" name="email" class="form-control" required>
            </div>

            <div class="row mb-3">
                <div class="col">
                    <label class="form-label">Password*</label>
                    <input type="password" name="password" class="form-control" required>
                </div>
                <div class="col">
                    <label class="form-label">Confirm Password*</label>
                    <input type="password" name="confirm_password" class="form-control" required>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col">
                    <label class="form-label">Gender*</label>
                    <select name="gender" class="form-select" required>
                        <option value="Female">Female</option>
                        <option value="Male">Male</option>
                    </select>
                </div>
                <div class="col">
                    <label class="form-label">Birth Date*</label>
                    <div class="d-flex">
                        <select name="birth_day" class="form-select me-1" required>
                            <?php for ($i = 1; $i <= 31; $i++) echo "<option value='$i'>$i</option>"; ?>
                        </select>
                        <select name="birth_month" class="form-select me-1" required>
                            <?php for ($i = 1; $i <= 12; $i++) echo "<option value='$i'>$i</option>"; ?>
                        </select>
                        <select name="birth_year" class="form-select" required>
                            <?php for ($i = 2000; $i <= 2025; $i++) echo "<option value='$i'>$i</option>"; ?>
                        </select>
                    </div>
                </div>
            </div>

            <div class="mb-3 form-check">
                <input type="checkbox" name="newsletter" class="form-check-input">
                <label class="form-check-label">Sign up for BeautyHaul newsletter</label>
            </div>

            <button type="submit" class="btn btn-primary w-100">Register</button>

            <div class="text-center mt-3">
                Already a member? <a href="index.php">Sign In</a>
            </div>
        </form>
    </div>
</body>
</html>
