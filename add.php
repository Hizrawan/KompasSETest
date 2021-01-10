<html>
<head>
    <title>Add Data</title>
</head>
 
<body>
<?php
//including the database connection file
include_once("config.php");
 
if(isset($_POST['Submit'])) {    
    $idPenulis = $_POST['idPenulis'];
    $name = $_POST['name'];
    $sal = $_POST['berita'];
        
    // checking empty fields
    if(empty($idPenulis) || empty($name) || empty($sal)) {                
        if(empty($idPenulis)) {
            echo "<font color='red'>Employee No. field is empty.</font><br/>";
        }
        
        if(empty($name)) {
            echo "<font color='red'>Name field is empty.</font><br/>";
        }
        
        if(empty($sal)) {
            echo "<font color='red'>berita field is empty.</font><br/>";
        }
        
        //link to the previous page
        echo "<br/><a href='javascript:self.history.back();'>Go Back</a>";
    } else { 
        // if all the fields are filled (not empty)             
        //insert data to database
        $result = mysqli_query($mysqli, "INSERT INTO berita (idPenulis,namaPenulis,isiBerita) VALUES('$idPenulis','$name','$sal')");
        
        //display success message
        echo "<font color='green'>Data added successfully.";
        echo "<br/><a href='index.php'>View Result</a>";
    }
}
?>
</body>
</html>
