<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Search Patrol Car</title>
<link rel="stylesheet" href="css/bootstrap-4.4.1.css">
</head>

<body>
<div class="container" style="width: 900px">
  <?php
		include "header.php";
	?>
  <section class="mt-3">
    <form>
      <div class="form-group row">
        <label for="patrolCar" class="col-sm-3 col-form-label">Patrol Car Number</label>
        <div class="col-sm-3">
          <input type="text" class="form-control" id="patrolCarId" name="patrolCarId">
        </div>
		  <div class="col-sm-6">
			 <button type="submit" class="btn btn-primary" name="submit" id="submit">Search</button>  
		  </div>
      </div> 
		<div class="form-group row">
        <div class="offset-sm-4 col-sm-8">
        </div>
      </div>
    </form>
  </section>
	<?php
		include "footer.php";
	?>
</div>
<script src="js/jquery-3.4.1.min.js"></script> 
<script src="js/popper.min.js"></script> 
<script src="js/bootstrap-4.4.1.js"></script>
</body>
</html>