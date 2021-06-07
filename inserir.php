<?php

    header('Content-Type: application/json');
    
try {

    if(empty($_POST['name']))
       throw new Exception();

    if(empty($_POST['comment']))
        throw new Exception();
    
    $name = $_POST['name'];
    
    $comment = $_POST['comment'];

    $pdo = new PDO('mysql:host=localhost; dbname=bd-comment;', 'root', '');

    $stmt = $pdo->prepare('INSERT INTO comments (name, comment) VALUES (:na, :co)');
    $stmt->bindValue(':na', $name);
    $stmt->bindValue(':co', $comment);
    $stmt->execute();

    if ($stmt->rowCount() >= 1) {
        echo json_encode('Comentário Salvo com Sucesso');
    } else {
        echo json_encode('Falha ao salvar comentário');
    }

} catch (Exception $exce) {
    echo $exce->getMessage();
}
