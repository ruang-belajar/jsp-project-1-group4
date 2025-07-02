<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Project 1 Group 4</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #fffbe0, #fffdf7);
            font-family: 'Segoe UI', sans-serif;
            min-height: 100vh;
        }

        h1 {
            font-weight: 700;
            letter-spacing: 1px;
            color:black;
        }

        .card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            border: none;
            border-radius: 16px;
            overflow: hidden;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        }

        .card-img-top {
            height: 250px;
            object-fit: cover;
        }

        .btn-primary {
            transition: background-color 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .card-text {
            font-size: 0.9rem;
            color: #6c757d;
        }
    </style>
</head>
<body>
    <div class="container py-5">
        <h1 class="text-center mb-5">Project 1 - Group 4</h1>

        <div class="row justify-content-center g-4">
            <!-- Anggota 1 -->
            <div class="col-md-3">
                <div class="card h-100 shadow-sm">
                    <img src="fotomail.jpg" class="card-img-top" alt="Fauzan">
                    <div class="card-body text-center">
                        <h5 class="card-title">Fauzan Hamzah</h5>
                        <p class="card-text">22110594</p>
                        <a href="fauzan.messageboard.jsp" class="btn btn-primary">Message Board</a>
                    </div>
                </div>
            </div>

            <!-- Anggota 2 -->
            <div class="col-md-3">
                <div class="card h-100 shadow-sm">
                    <img src="foto8.jpg" class="card-img-top" alt="Zakki">
                    <div class="card-body text-center">
                        <h5 class="card-title">Zakki Aditya</h5>
                        <p class="card-text">22110518</p>
                        <a href="zakki.messageboard.jsp" class="btn btn-primary">Message Board</a>
                    </div>
                </div>
            </div>

            <!-- Anggota 3 -->
            <div class="col-md-3">
                <div class="card h-100 shadow-sm">
                    <img src="foto9.jpg" class="card-img-top" alt="Aulia">
                    <div class="card-body text-center">
                        <h5 class="card-title">Siti Auliya</h5>
                        <p class="card-text">22110531</p>
                        <a href="auliya.messageboard.jsp" class="btn btn-primary">Message Board</a>
                    </div>
                </div>
            </div>

            <!-- Anggota 4 -->
            <div class="col-md-3">
                <div class="card h-100 shadow-sm">
                    <img src="foto10.jpg" class="card-img-top" alt="Kesya">
                    <div class="card-body text-center">
                        <h5 class="card-title">Kesya Amanda</h5>
                        <p class="card-text">22110471   </p>
                        <a href="kesya.messageboard.jsp" class="btn btn-primary">Message Board</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
