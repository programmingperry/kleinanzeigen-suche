<?php
header('Content-Type: application/json');
include 'db.php';

$method = $_SERVER['REQUEST_METHOD'];
$searchWord = $_GET['search'];
    
$sql = "SELECT * FROM anzeige WHERE UPPER(titel) LIKE UPPER(:search) OR UPPER(beschreibung) LIKE UPPER(:search)";
$stmt = $pdo->prepare($sql);
$stmt->execute(['search' => '%' . $searchWord . '%']);
$result = $stmt->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($result);


