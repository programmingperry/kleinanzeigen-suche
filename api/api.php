<?php
header('Content-Type: application/json');
include 'db.php';

$method = $_SERVER['REQUEST_METHOD'];

$searchWord = $_GET['search'];

$sql = "SELECT * FROM  anzeige WHERE UPPER(titel) LIKE UPPER('%$searchWord%') OR UPPER(beschreibung) LIKE UPPER('%$searchWord%')";
$stmt = $pdo->prepare($sql);
$stmt->execute();
$result = $stmt->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($result);
