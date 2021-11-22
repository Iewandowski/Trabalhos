<?php 
	header("Content-Type: text/html; charset=ISO-8859-1",true);
	$conn = new mysqli('localhost', 'root', '', 'sadoro') or die("Erro na conexão com banco de dados " . mysqli_error($conn));
	session_start();
?>
<!doctype html>
<html lang="pt-br">
  <head>
<form action="lista.php" method="post">  
<style>
  .hidden
  {
  display: none;
  }
  * {
  box-sizing: border-box;
  font-family: Arial;
}

.number-input {  
  width: 80px;
}

.change {
  background-color: #ddd;
  cursor: pointer;
  display: inline-block;
  padding: -3px;
  font-size: 15px;
  text-align: center;
  vertical-align: middle;
  height: 20px;
  width: 20px;
  user-select: none;
}

.input-box {
  border: 1px solid #ddd;
  padding: 3px;
  font-size: 15px;
  text-align: center;
  height: 15px;
  width: 50px;
}
hr {
    color: #F5F5F5;
}
  </style>
    <!-- Required meta tags -->
  <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" charset="text/html; charset=iso-8859-1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Sadoro</title>
  </head>
  <body>
  <center><img src="sadoro.png" alt="some text" width=160 height=140></center>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">Nova Lista <span class="sr-only">(current)</span></a>
      </li>
	  <li class="nav-item">
        <a class="nav-link" href="#">Lista</a>
      </li>  
      <li class="nav-item">
        <a class="nav-link" href="#">Editar Informações</a>
      </li>  
    </ul>
  </div>
  
</nav>
<br><br><br>
 <center><b>INFORMAÇÕES:</b></center><br>
 <b>
  <div class="form-row">
  
    <div class="form-group col-md-6">
	
      <label for="inputEmail4">Cliente</label>
      <input type="text" class="form-control" name="cliente_nome" placeholder="Digite o nome do Cliente">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Contato</label>
      <input type="text" class="form-control" id="contato_nome" placeholder="Digite o Contato">
    </div>
  </div>
  <div class="form-row">
      <div class="form-group col-md-6">
      <label for="inputEmail4">Endereço</label>
      <input type="text" class="form-control" id="endereço_nome" placeholder="Digite o endereço">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Bairro</label>
      <input type="text" class="form-control" id="bairro_nome" placeholder="Digite o bairro">
    </div>
  </div>
<div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">Cidade</label>
      <input type="text" class="form-control" id="cidade_nome" placeholder="Digite a Cidade">
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">CEP</label>
      <input type="text" class="form-control" id="cep_valor" placeholder="Digite o CEP">        
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Fone</label>
      <input type="text" class="form-control" id="fone_numero" placeholder="Digite o número de telefone">
    </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">CNPJ</label>
      <input type="text" class="form-control" id="cnpj_valor" placeholder="Digite o CNPJ">
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">IE</label>
      <input type="text" class="form-control" id="ie" placeholder="Digite a Inscrição Estadual">        
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">E-mail</label>
      <input type="text" class="form-control" id="endereço_email" placeholder="Digite o E-mail">
    </div>
  </div>
</b>
	
	<div class="list-group">  <br>
  	<center><b>PRODUTOS:</b><br><br></center>

		<?php 
		$categoria = "SELECT * FROM categorias";
		$result_categoria = mysqli_query($conn,$categoria);

		while($row = mysqli_fetch_array($result_categoria))
		{
		$lista_categoria_id = $row['id'];		
		$lista_categoria_nome = $row['nome'];
			
		$produto  = "SELECT id,nome FROM produtos WHERE categoria_id = {$row['id']}";
		$result_produto = mysqli_query($conn,$produto);
		
		$count = mysqli_query($conn, "SELECT COUNT(nome) AS total FROM produtos WHERE categoria_id = {$row['id']}");
		$data= mysqli_fetch_assoc($count);
		
		?>
<button type="button" class= "list-group-item list-group-item-action" id="botao<?php echo $row['id']; ?>"><?php echo $row['nome']; ?> <span class="badge badge-warning badge-pill"><?php echo $data['total'] ?></span><b align="right"> &#x25BC; </b></button>	<?php 
	for($j = 1; $j <= 1; $j++)
	{
	?>
	<ul id="form<?php echo $row['id'] ?>"style="display:none">
		<?php 
	while($row = mysqli_fetch_array($result_produto))
	{
	?>
	<div class="col-sm-10" id="div<?php echo $row['id']; ?>">
		<div class="form-check">
		<input class="form-check-input" type="checkbox" id="gridCheck<?php echo $row['id']; ?>" name="gridCheck[<?php echo $row['id']; ?>]">
        <label class="form-check-label" for="gridCheck<?php echo $row['id']; ?>">
		<?php
        echo $row['nome']; ?>
        </label>
		<span class="number-input">
	<input type="number" class="input-box" min ="0" max="100" name="number[<?php echo $row['id']; ?>]">
	</span>	
    </div>
	</div>
	<?php
	}
	echo "</ul>";
	}
	}
	?>
	<br><br>
	<center><input type ="submit" class="btn btn-warning btn-sm"></button></center><br><br>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
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
	var button = "#botao<?php echo $i ?>";

    $(button).click(function()
	{
        $("#form<?php echo $i ?>").toggle();
	});
<?php 
}
?>	

</script>