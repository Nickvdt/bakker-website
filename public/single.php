<?php

$mysqli = new mysqli(MYSQL_HOST,MYSQL_USER,MYSQL_PASSWORD, MYSQL_DATABASE);

// Controleer de connectie
if ($mysqli->connect_error) {
  echo "Failed to connect to MySQL: " . $mysqli->connect_error;
  exit();
}

/* maak een statement */
$sql = 'SELECT * 
        FROM products 
        WHERE slug=?
        ORDER BY products.title';

/* maak een prepared statement */
$stmt = $mysqli->prepare($sql);

/* Bind de slug */
$slug = PRODUCT_SLUG;
$stmt->bind_param('s', $slug);

/* execute query */
$stmt->execute();

/* bind result variables */
$result = $stmt->get_result();

/**
 * Nu wil ik mijn data in een array plaatsen
 */
$product = mysqli_fetch_assoc($result);