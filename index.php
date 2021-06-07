<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema de Comentários | PHP e AJAX</title>
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <header>
        
    </header>
    <section class="content">
        <div class="box_form">
            <h1>Deixe seu comentário:</h1>
            <form id="form1">
                <label for="name">Nome</label><br>
                <input type="text" name="name" id="name" required/><br><br>
              
                <label for="comment">Comentário</label><br>
                <textarea name="comment" id="comment" required></textarea><br><br>

                <input type="submit" form="form1" class="btn-sub" value="Enviar Comentário"/><br><br>
            </form>
        </div>

        <div class="box_comment">

        </div>

    </section>

    <script src="assets/js/jQuery/jquery-3.6.0.min.js"></script>
    <script src="assets/js/script.js"></script>
</body>
</html>