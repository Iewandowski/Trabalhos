<!doctype html>
<html lang="en">
  <head>
  <style>
html{
  font-family:helvetica, sans-serif;
  max-width:500px;
  margin:auto;
  color:#666666;
}

form{
  padding:10px;
  border:2px solid #3498db;
  background:#F0F8FF;
  border-radius:15px;
  display:none;

}

#formButton{
  border-radius: 28px;
  font-family: Arial;
  color: #ffffff;
  font-size: 20px;
  background: #3498db;
  padding: 10px 20px 10px 20px;
  text-decoration: none;
  margin:20px;
 
}

#formButton:hover{
  background: #3cb0fd;
  text-decoration: none;
}

b{
  color:#3498db;
}
#submit{
  border-radius: 28px;
  font-family: Arial;
  color: #ffffff;
  font-size: 15px;
  background: #3498db;
  padding: 10px 20px 10px 20px;
  text-decoration: none;
}

#submit:hover{
  background: #3cb0fd;
  text-decoration: none;
}
</style>
 </head>
<body>
<?php
for($i = 1; $i <= 3; $i++)
{
?>
<button type="button" id="formButton<?php echo $i ?>"><?php echo $i ?></button>
<?php
for($j = 1; $j <= 3; $j++)
{	
?>
<form id="form<?php echo $j ?>">
<b><?php echo $j ?></b>
</form>
    <?php
}
}
  ?>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>
<script>
	<?php 
for($i = 1; $i <= 10; $i++)
{
	?>
	var button = "#formButton<?php echo $i ?>";

    $(button).click(function()
	{
        $("#form<?php echo $i ?>").toggle();
	});
<?php 
}
?>	

</script>

