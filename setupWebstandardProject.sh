#!/bin/sh
PROJECT_NAME=$1
echo "project name: $PROJECT_NAME"
mkdir $PROJECT_NAME
cd $PROJECT_NAME
mkdir src
cd src

cat > index.html <<- "EOF"
<!DOCTYPE html>
<html>

<head>
  	<title> {PROJECT_NAME} </title>
	<link rel="stylesheet" href="style.css">
	<meta name="viewport" content="width=device-width">
</head>

<body>
 	<code>hello</code>
	<script src="app.js"></script>
</body>
</html>
EOF

cat > style.css <<- "EOF"
EOF

cat > app.js <<- "EOF"
console.log("Hello WebStandards");
EOF
cd ..
browser-sync start -s src -f src --cors -b "google chrome" --no-notify





