#!/bin/bash

mkdir css JavaScript

touch index.html

cd css

touch style.css

# touch bootstrap.css

# Define the file name
css_file="style.css"

# Write the HTML content to the file
cat <<EOF > "$css_file"
@import url("http://use.fontawesome.com/releases/v6.5.1/css/all.css");
@import url('https://fonts.googleapis.com/css2?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap');

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, Helvetica, sans-serif;
    scroll-behavior: smooth;
}

a {
    color: #fff;
    text-decoration: none;
}

ul li {
    list-style: none;
}

html {
    background: #000;
    /* font-size: 67.7% */
    font-size: 62.5%;
    overflow-x: hidden;
    display: grid;
    place-items:center;
    width: 100%;
    height: 100vh;
}

:root {
    --text-color: #f5f5f5;
    --hover-color: #12f7ff;
    --big-color: #250821;
    --secon-bg-color: #292e33;
    --big-font:2.5rem;
    --norma-font : 2rem;
    --neon-box-shadow: 0 0 .5rem #12f7ff;
    --h2-font: 3rem;
    --font-neon-text-shadow: 0 0 10px rgba(18,247,255,0.3),
                             0 0 20px rgba(18,247,255,0.3),
                             0 0 30px rgba(18,247,255,0.3),
                             0 0 40px rgba(18,247,255,0.3),
                             0 0 70px rgba(18,247,255,0.3),
                             0 0 80px rgba(18,247,255,0.3),
                             0 0 100px rgba(18,247,255,0.3),
                             0 0 150px rgba(18,247,255,0.3);
}

EOF

cp /e/Programing/documants/bootstrap.css bootstrap.css

cd ../

cd JavaScript

touch script.js

cp /e/Programing/documants/jquery-3.7.1.js jquery-3.7.1.js

cd ../

#!/bin/bash

# Define the file name
html_file="index.html"

# Write the HTML content to the file
cat <<EOF > "$html_file"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Title</title>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <script src="JavaScript/jquery-3.7.1.js"></script>
    <script src="JavaScript/script.js"></script>
</body>
</html>
EOF
