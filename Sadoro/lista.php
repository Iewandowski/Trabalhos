<?php 
	$conn = new mysqli('localhost', 'root', '', 'sadoro') or die("Erro na conexão com banco de dados " . mysqli_error($conn));
	session_start();
	
	$checkbox = $_POST['gridCheck'];
	$numbers = $_POST['number'];
	
	date_default_timezone_set('America/Sao_Paulo');
	$data_atual = date('Y-m-d H:i');
	
	
	foreach($numbers as $arquivo){
		if($arquivo > 0)
	$lista[] = $arquivo;
	}
	$_SESSION['qnt'] = $lista;	
	
	$cliente = $_POST['cliente_nome'];
	?>


<!doctype html>
<html lang="pt-br">
  <head>
  <style>
.tabelaum{
	float: left;
	  width: 30%;

}
.tabeladois{
	float: left;
	  width: 10%;

}
.tabelatres{
	float: left;
	  width: 30%;

}

.tabelaquatro{
	float: left;
	  width: 100%;

}
table {
  border: 1px solid #ccc;
}

table caption {
  font-size: 1.5em;
  margin: .5em 0 .75em;
}

table tr {
  border: 1px solid #ddd;
  padding: .35em;
}

table th,
table td {
  padding: .625em;
  text-align: center;
}

table th {
  font-size: .85em;
  letter-spacing: .1em;
  text-transform: uppercase;
}

@media screen and (max-width: 600px) {
  table {
    border: 0;
  }

  table caption {
    font-size: 1.3em;
  }
  
  table thead {
    border: none;
    clip: rect(0 0 0 0);
    height: 1px;
    margin: -1px;
    overflow: hidden;
    padding: 0;
    position: absolute;
    width: 1px;
  }
  
  table tr {
    border-bottom: 3px solid #ddd;
    display: block;
    margin-bottom: .625em;
  }
  
  table td {
    border-bottom: 1px solid #ddd;
    display: block;
    font-size: .8em;
    text-align: right;
  }
  
  table td::before {
    /*
    * aria-label has no advantage, it won't be read inside a table
    content: attr(aria-label);
    */
    content: attr(data-label);
    float: left;
    font-weight: bold;
    text-transform: uppercase;
  }
  
  table td:last-child {
    border-bottom: 0;
  }
}
</style>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
        <a class="nav-link" href="#">Histórico</a>
      </li>  
      <li class="nav-item">
        <a class="nav-link" href="#">Editar Informações</a>
      </li>  
    </ul>
  </div>
  </nav>
  <br><br><br>
  <table class="tabelaquatro table-bordered">
    <thead>	
        <th colspan="4"><b>Cliente: </b> <i><?php echo $cliente ?></i> <b>Data:</b><i><?php echo $data_atual ?></i></th>
  </thead>
  </table>

<table class="tabelaum table-bordered" border="1">
      <th scope="col">Nome</th>
	<?php
  while($element = current($checkbox)) 
  {
	  echo "<tr>";
    $chave1 = key($checkbox)."\n";
    $sql = "SELECT nome FROM produtos WHERE id = {$chave1}";
    $result_sql = mysqli_query($conn,$sql);
    while($row = mysqli_fetch_array($result_sql))
    {
	$insert_parte_1 = "INSERT INTO historico (produto_id, quantidade, data_pedido) VALUES ({$row['nome']}, 0, {$data_atual})";
    ?>
    <td>
    <?php echo $row['nome'];?>
    </td>
    <?php
    }
      next($checkbox);
	  	  echo "</tr>";

}?>


	<table class="tabeladois table-bordered" border="1">
	      <th scope="col">Quantidade</th>

<?php foreach ($numbers as $row)
{
	echo "<tr>";
    if ($row > 0)
	{
     echo "<td>" . $row . "</td>";
    }
	echo "</tr>";

}
?>
	<table class="tabelatres table-bordered" border="1">
	<th scope="col">Preço Unitário</th>	
	<?php 
foreach ($checkbox as $chave => $dados) {
	
	$sql = "SELECT preco FROM produtos WHERE id = {$chave}";
    $result_sql = mysqli_query($conn,$sql);
    while($row = mysqli_fetch_array($result_sql))
    { 
	  echo "<tr>";
	  $precos[] = $row['preco'];
	  echo "<td> R$ " . $row['preco'] . "</td>";
	  echo "</tr>";
}


	$_SESSION['preco'] = $precos;	

} 
?>
	</table>
	
	<table class="tabelatres table-bordered" border="1">
	<th scope="col">Preço Total</th>
		<?php 
for($i = 0; $i < count($_SESSION['qnt']) && $i < count($_SESSION['preco']); $i++) 
{
     $valor_total[] = floatval($_SESSION['preco'][$i]) * floatval($_SESSION['qnt'][$i]);
}
foreach ($valor_total as $total) 
{
	echo "<tr>";
	echo "<td> R$ " . $total . "</td>";
	echo "</tr>";

}

?>
	</table>
	<table class="tabelaquatro table-bordered">
    <thead>	
<?php
 $total = array_sum($valor_total);
?>
        <th colspan="4"><b>TOTAL: </b><i><?php echo "R$ " . $total ?></i></th>
  </thead>
  </table>

	

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>

<script>
function checkArray(myArray) {
	 myArray = [<?php echo $numbers ?>];
    for (i = 0; i < myArray.length; i++) { 
        if(myArray[i] > 0){
          return true;
        }
    }
    return false;
}
</script>