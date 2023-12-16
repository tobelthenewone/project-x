<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="../image/AMBO.png" type="image/png" >
    
  <link rel="stylesheet" href="../css/bootstrap.min.css">

  
  <link rel="stylesheet" href="../css/all.min.css">

  
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">

  
  <link rel="stylesheet" href="../css/design1.css">
    <title>Profile</title>
    <style>
     .active {
         color: #3a3a5c;
         background-color:rgba(0, 0, 0, 0.6); ;
     }
    
    </style>

</head>
<body style="background-image: url('../image/c.png');">
  <nav class="navbar navbar-expand-md sticky-top " style="background-color: rgba(0, 0, 0, 0.6);" >
        <a href="#" class="navbar-brand" style="color: white; font-weight: bold; font-size: 25px;">AU ONLINE EXAMINATION SYSTEM</a>
        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse" style="background-color: #F1F0FF; border-radius: 10px; height: 30px;"><br><br>
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarCollapse">
          <a href="" class="closebtn" onclick="closeNav" style="color:rgba(0, 0, 0, 0);">X</a>
            <div class="navbar-nav">
                <a href="../index.php" class="nav-item nav-link "  style="color: white;">Home</a>
                
            </div>
        </div>
    </nav>
    <script>
    function toggleMenu() {
      var menuBox = document.getElementById('menu');    
      if(menuBox.style.display == "block") { // if is menuBox displayed, hide it
        menuBox.style.display = "none";
      }
      else { // if is menuBox hidden, display it
        menuBox.style.display = "block";
      }
    }
    </script>
    
    
<!--start side-bar-->
    <div class="container-fluid " style="margin-top: 40px; ">
        <button class="btn mb-2" id="menubutton" onclick="toggleMenu()">Menu</button>
        <div class="row">
            <nav class="col-sm-3 col-md-2 menu " id="menu" style="color: white; display: block">
                <div class="left-sidebar">
                    <ul class="nav flex-column" >
                        <li class="nav-item" style="margin-top: 40px; "> 
                            <a style="color: white" class="nav-link <?php if (page=='showquiz') { echo 'active';} ?>" href="showquiz.php"><i class="fas fa-home mr-2"></i>Home</a></li>
                        <li class="nav-item"> 
                           
                        <li class="nav-item"> 
                            <a style="color: white" class="nav-link <?php if(page == 'profile.php') { echo 'active'; } ?>" href="profile.php"><i class="fas fa-user mr-2"></i>profile</a></li>
                        <li class="nav-item"> 
                            <a style="color: white" class="nav-link <?php if(page == 'history.php') { echo 'active'; } ?>" href="history.php"><i class="fas fa-history mr-2"></i>History</a></li>    
                        <li class="nav-item"> <a style="color: white" class="nav-link" href="../logout.php"><i class="fas fa-sign-out-alt mr-2"></i>Logout</a></li>
                    </ul>
                </div>
            </nav>
<!--        </div>
    </div>     -->        
<!--end side-bar-->
