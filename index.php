<?php
    session_start();
    if(!isset($_SESSION['username'])){
        header("location:login.php");
    }
    $user = $_SESSION['username'];
    $user_id = $_SESSION['user_id'];
    

include_once("config.php");
 

$result = mysqli_query($mysqli, "SELECT * FROM berita");
?>
 
<html>
<head>    
    <title>Homepage</title>
    <style type="text/css">
        .odd{
            background-color: lightgrey;
        }
        .even{
            background-color: white;
        }
    </style>
</head>
 <p>Welcome <?php echo $user; ?></p>

<body>
    <a href="add.html">Add New Data</a><br/><br/>
    <a href="logout.php">Logout</a><br/><br/>
 
    <table width='80%' border=0>
        <tr bgcolor='lightpink'>
            <td>ID Penulis</td>
            <td>Nama Penulis</td>
            <td>Berita</td>
            <td>Update</td>
        </tr>
        <?php 
            $i = 0;
        while($res = mysqli_fetch_array($result)) {         
            if($i % 2 != 0){
                $classes = "odd";
            }
            else{
                $classes = "even";
            }
            echo "<tr class=".$classes.">";
            echo "<td>".$res['idPenulis']."</td>";
            echo "<td>".$res['namaPenulis']."</td>";
            echo "<td>".$res['isiBerita']."</td>";    
            echo "<td><a href=\"update.php?id=$res[idPenulis]\">Edit</a> | <a href=\"delete.php?id=$res[idPenulis]\" onClick=\"return confirm('Are you sure you want to delete?')\">Delete</a></td>";        
            $i++;
        }
        ?>
    </table>
</body>
</html>
