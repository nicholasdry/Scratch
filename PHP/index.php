<!DOCTYPE html>
<html>
      <head>
            <meta charset="utf-8">
            <title>Nicholas Dry Practice PHP</title>
      </head>
      <body>
            <form name="form" action="" method="get">
                  <input type="text" name="name" id="name">
            </form>

            <?php
                  $name = $_GET['name'];
                  echo "<h1>Hello " . $name . "</h1>"
            ?>
      </body>
</html>
