<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
<style>
  @import url("css/Admin_header.css");
@import url("css/Admin_footer.css");
@import url(https://fonts.googleapis.com/css?family=Raleway);

body{
  background: #f9f9f9;
  font-size: 16px;
  font-family: 'Raleway', sans-serif;
}



.container1{
  padding: 1rem;
  float: left;
  margin-left: 8%;
  margin-top: 2%;
}

.content {
  position: relative;
  width: 90%;
  max-width: 400px;
  margin: auto;
  overflow: hidden;
}

.content .content-overlay {
  background: rgba(00,45,114,0.8);
  position: absolute;
  height: 99%;
  width: 100%;
  left: 0;
  top: 0;
  bottom: 0;
  right: 0;
  opacity: 0;
  -webkit-transition: all 0.4s ease-in-out 0s;
  -moz-transition: all 0.4s ease-in-out 0s;
  transition: all 0.4s ease-in-out 0s;
}

.content:hover .content-overlay{
  opacity: 1;
}

.content-image{
  width: 100%;
}

.content-details {
  position: absolute;
  text-align: center;
  width: 100%;
  top: 50%;
}

.content-details h3{
  color: #fff;
  font-weight: 500;
  letter-spacing: 0.15em;
  margin-bottom: 0.5em;
  text-transform: uppercase;
}

.arrow {
  margin-left: 8px;
}

.content h3 {
  display: inline-block;
  position: relative;
  transition: all 300ms ease-out;
  will-change: transform;
}

.content:hover h3 {
  -webkit-transform: translate3d(-1rem, 0, 0);
          transform: translate3d(-1rem, 0, 0);
}
.content i {
  position: absolute;
  width: 1.1em;
  right: -1.4rem;
  opacity: 1;
  top: 38%;
  -webkit-transform: translateY(-50%);
          transform: translateY(-50%);
  transition: all 300ms ease-out;
  will-change: right, opacity;
}

.content:hover i {
  opacity: 1;
  right: -3rem;
}




</style>

</head>
<body>
  <header>
		<div class="header-row" id="myHeader">
			<div class="col-2 logo-container nav-com">
				<div class="logo">
					<a href="#Home"><img src="logo.png" alt="Girl in a jacket"
						width="120px" height="120px"></a>

				</div>
			</div>
			<div class="col-2 nav nav-com">
				<ul>
					<li class="li-com"><a href="#Home">Home</a></li>
				</ul>
			</div>



			<div class="col-1 nav nav-com" style="margin-left: 30%;margin-top: -8%;">

				<div class="admin-tag" data-toggle="tooltip" data-placement="top"
					title="Admin Online">Admin</div>
				<div class="admin-active" data-toggle="tooltip" data-placement="top"
					title="Admin Online"></div>
			</div>
		</div>
	</header>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<marquee direction="side" id="H1" behavior="alternate" style="position:inherit;width:100%;">ADMIN PANEL !!!</marquee>

  <div style="position: -webkit-sticky;">

  <div class="container1" style="position:relative;">
    <div class="content">
      <a href="https://unsplash.com/photos/HkTMcmlMOUQ" target="_blank">
        <div class="content-overlay"></div>
        <img class="content-image" src="user.jpg">
        <div class="content-details">
        </div>
      </a>
      &nbsp <h3 class="content-title" style="color:rgb(243, 240, 240); font-size: x-large; font-weight: bolder;">User Management<i class="fas fa-arrow-right arrow"></i></h3>

    </div>

    <br><br><br>
    <div class="content">
      <a href="https://unsplash.com/photos/HkTMcmlMOUQ" target="_blank">
        <div class="content-overlay"></div>
        <img class="content-image" src="inventory.jpg">
        <div class="content-details">
        </div>
      </a>
      <h3 class="content-title" style="color:rgb(240, 234, 234); font-size: x-large; font-weight: bolder;">Invenetory Management<i class="fas fa-arrow-right arrow"></i></h3>

    </div>
  </div>

  <div class="container1" style="margin-top:1.5%;">
    <div class="content">
      <a href="https://unsplash.com/photos/HkTMcmlMOUQ" target="_blank">
        <div class="content-overlay"></div>
        <img class="content-image" src="supplier.jpeg">
        <div class="content-details">
        </div>
        <h3 class="content-title"style="color:white; font-size: x-large; font-weight: bolder;">Supplier Management<i class="fas fa-arrow-right arrow"></i></h3>

      </a>
    </div>
    <br><br><br>
    <div class="content">
      <a href="https://unsplash.com/photos/HkTMcmlMOUQ" target="_blank">
        <div class="content-overlay"></div>
        <img class="content-image" src="inquiry.jpg">
        <div class="content-details">
        </div>
        <h3 class="content-title"style="color:white; font-size: x-large; font-weight: bolder;">Inquiry Management<i class="fas fa-arrow-right arrow"></i></h3>

      </a>
    </div>
  </div>

  <div class="container1" style="margin-top:1.5%">
    <div class="content">
      <a href="https://unsplash.com/photos/HkTMcmlMOUQ" target="_blank">
        <div class="content-overlay"></div>
        <img class="content-image" src="driver.jpg">
        <div class="content-details">
        </div>
      </a>
      <h3 class="content-title"style="color:white; font-size: x-large; font-weight: bolder;">Driver Management<i class="fas fa-arrow-right arrow"></i></h3>

    </div>
    <br><br><br>
    <div class="content">
      <a href="https://unsplash.com/photos/HkTMcmlMOUQ" target="_blank">
        <div class="content-overlay"></div>
        <img class="content-image" src="https://images.unsplash.com/photo-1522071820081-009f0129c71c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto">
        <div class="content-details">
        </div>
      </a>
      <h3 class="content-title"style="color:white; font-size: x-large; font-weight: bolder;">Delivery Management<i class="fas fa-arrow-right arrow"></i></h3>

    </div>
  </div>
</div>
  <br>  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>




  <footer class="footer">
    <div class="container">
      <div class="row">
        Copyrights©
        <div id="demo" style="margin: 0px 8px 0px 8px;"></div>
        AUTOMART. All rights reserved
      </div>
    </div>
  </footer>
  
  
  
  
  
  <!----------------------------------------------- SCRIPT -------------------------------------------->
  <script>
    window.addEventListener("scroll", function () {
      var header = document.querySelector("header");
      header.classList.toggle("sticky", window.scrollY > 0);
    })
  </script>

</body>


</html>