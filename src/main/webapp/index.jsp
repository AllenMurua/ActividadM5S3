<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .login-card {
            max-width: 400px;
            margin: 100px auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        .profile-img {
            width: 100px;
            height: 100px;
            margin: 0 auto 20px;
            display: block;
        }
        .form-container {
            padding: 20px;
        }
        .forgot-password {
            text-align: center;
            margin-top: 15px;
        }
        .forgot-password a {
            color: #6c757d;
            text-decoration: none;
            font-size: 0.9rem;
        }
        .forgot-password a:hover {
            text-decoration: underline;
        }
        .login-btn {
            width: 100%;
            padding: 10px;
            margin-top: 20px;
        }
    </style>
</head>
<body class="bg-light">
<div class="container">
    <div class="card login-card bg-white">
        <div class="card-body">
            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077114.png" alt="Profile" class="profile-img">

            <form action="/login " method="post" class="form-container">
                <div class="mb-3">
                    <input type="text" class="form-control" id="Usuario" name="usuario" placeholder="login" required>
                </div>
                <% if(request.getParameter("error")!= null) { %>
                <div class="alert alert-danger" role="alert">Contraseña incorrecta </div>
                <% } %>

                <div class="mb-3">
                    <input type="password" class="form-control" id="Password" name="password" placeholder="password" required>
                </div>
                <button type="submit" class="btn btn-info text-white login-btn">Log in</button>

                <div class="forgot-password">
                    <a href="#">¿Olvidó su clave?</a>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>