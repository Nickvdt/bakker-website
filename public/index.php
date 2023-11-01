<?php
require_once '../src/config.php';

$sql = "SELECT titel, introtekst, foto, slug FROM producten";
$result = $conn->query($sql);

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Producten</title>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <section class="producten">
        <?php
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                echo '<a class="product" href="product.php?slug=' . $row["slug"] . '">';
                echo '<img class="product__img" src="../images/' . $row["foto"] . '">';
                echo '<h2 class="product__h2">' . $row["titel"] . '</h2>';
                echo '<p class="product__p">' . $row["introtekst"] . '</p>' . '</a>';
            }
        } else {
            echo "geen producten gevonden";
        }
        $conn->close();
        ?>
    </section>
</body>

</html>