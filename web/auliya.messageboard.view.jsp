<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="id">
    <head>
        <meta charset="UTF-8">
        <title>Message Board - Siti Auliya</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

        <style>
            body {
                background: linear-gradient(135deg, #f0faff, #ffffff);
                font-family: 'Segoe UI', sans-serif;
                padding-top: 40px;
            }

            .message-box {
                background-color: #ffffff;
                border-left: 5px solid #0d6efd;
                border-radius: 8px;
                box-shadow: 0 2px 8px rgba(0,0,0,0.05);
                padding: 16px;
                margin-bottom: 15px;
            }

            .message-text {
                font-style: italic;
                color: #333;
            }

            .form-control {
                margin-bottom: 10px;
            }
        </style>

        <script>
            function konfirmasi(id) {
                if (confirm("Yakin ingin menghapus pesan ini?")) {
                    window.location = "?delete=" + id;
                }
            }
        </script>
    </head>
    <body>
        <div class="container">
            <div class="mb-3">
                <a href="index.jsp" class="btn btn-secondary">&larr; Kembali</a>
            </div>

            <h2 class="text-center text-primary mb-4">💬 Message Board - Siti Auliya</h2>

            <c:forEach items="${list}" var="row">
                <div class="message-box">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <strong>${row.pengirim}</strong> 
                            <small class="text-muted">(${row.waktu})</small>
                        </div>
                        <button class="btn btn-sm btn-outline-danger" onclick="konfirmasi(${row.id})">Hapus</button>
                    </div>
                    <div class="message-text mt-2">
                        Pesan: "<span>${row.pesan}</span>"
                    </div>
                </div>
            </c:forEach>

            <div class="card mt-4 shadow-sm">
                <div class="card-body">
                    <h5 class="card-title">Tulis Pesan Baru</h5>
                    <form method="post">
                        <input type="text" name="pengirim" class="form-control" placeholder="Nama Pengirim" required>
                        <textarea name="pesan" class="form-control" placeholder="Isi Pesan" required></textarea>
                        <button type="submit" class="btn btn-primary mt-2">Kirim</button>
                    </form>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>