<?php
require_once '../src/config.php';


$slug = $_GET['slug'];


$sql = "SELECT titel, introtekst, foto, slug, omschrijving  FROM producten WHERE slug='$slug'";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Product</title>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <?php
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        echo '<h2 class="product__h2">' . $row["titel"] . '</h2>';
        echo '<p class="product__p">' . $row["introtekst"] . '</p>';
        echo '<p class="product__p">' . $row["omschrijving"] . '</p>';
        echo '<img class="product__img" src="../images/' . $row["foto"] . '">';
    } else {
        echo "geen product gevonden";
    }

    $conn->close();
    ?>
</body>

</html>