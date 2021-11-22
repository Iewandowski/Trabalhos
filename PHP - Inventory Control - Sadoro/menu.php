<?php 
session_start();
?>
<!doctype html>
<html lang="pt-br">
  <head>
  <style>
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
  padding: 10px;
  font-size: 15px;
  text-align: center;
  height: 15px;
  width: 50px;
}
	</style>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Sadoro</title>
  </head>
  <body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">Inicio <span class="sr-only">(current)</span></a>
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
<div class="list-group">
	<center>PRODUTOS:<br><br></center>
  <button type="button" name="botao1" class="list-group-item list-group-item-action">Chás e Temperos <span class="badge badge-primary badge-pill">2</span><b align="right"> &#x25BC; </b></button>

<div class="form-group row">
      <div class="col-sm-10">
      <div class="form-check">
	  <div class="col-sm-10" id="botao_div" style="display:none">
      <div class="form-check">
        <input class="form-check-input" type="checkbox" id="gridCheck1" name = "subscribe">
        <label class="form-check-label" for="gridCheck1">
          Orégano
        </label>
		<span class="number-input">
  <span class="change minus">-</span>
  <input type="number" class="input-box" min ="0" max="100" id="number1">
  <span class="change plus">+</span>
</span>	
      </div>
  
	  <div class="form-check">
        <input class="form-check-input" type="checkbox" id="gridCheck2" name = "subscribe">
        <label class="form-check-label" for="gridCheck2">
          Chimarrão
        </label>
<span class="number-input">
  <span class="change minus">-</span>
  <input type="number" class="input-box" min ="0" max="100" id="number2">
  <span class="change plus">+</span>
</span>	
      </div>
    </div>
  </div>
  <button type="button" name="botao2" class="list-group-item list-group-item-action">Naturais <span class="badge badge-primary badge-pill">2</span> <b align='right'> &#x25BC; </b></button>
	 <div class="form-group row">
      <div class="col-sm-10">
      <div class="form-check">
	  <div class="col-sm-10" id="botao_div" style="display:none">
      <div class="form-check">
        <input class="form-check-input" type="checkbox" id="gridCheck3" name = "subscribe">
        <label class="form-check-label" for="gridCheck1">
          Açúcar Mascavo
        </label>
		<span class="number-input">
  <span class="change minus">-</span>
  <input type="number" class="input-box" min ="0" max="100" id="number3">
  <span class="change plus">+</span>
</span>	
      </div>
  
	  <div class="form-check">
        <input class="form-check-input" type="checkbox" id="gridCheck4" name = "subscribe">
        <label class="form-check-label" for="gridCheck2">
          Linhaça Marrom
        </label>
<span class="number-input">
  <span class="change minus">-</span>
  <input type="number" class="input-box" min ="0" max="100" id="number4">
  <span class="change plus">+</span>
</span>	
      </div>
    </div>
  </div>

  <button type="button" name="botao3" class="list-group-item list-group-item-action">Chá em Caixinha <span class="badge badge-primary badge-pill">2</span><b align='right'> &#x25BC; </b></button>  
 	  <div class="form-group row">
      <div class="col-sm-10">
      <div class="form-check">
	  <div class="col-sm-10" id="botao_div" style="display:none">
      <div class="form-check">
        <input class="form-check-input" type="checkbox" id="gridCheck5" name = "subscribe">
        <label class="form-check-label" for="gridCheck1">
          Chá de Camomila
        </label>
		<span class="number-input">
  <span class="change minus">-</span>
  <input type="number" class="input-box" min ="0" max="100" id="number5">
  <span class="change plus">+</span>
</span>	
      </div>
  
	  <div class="form-check">
        <input class="form-check-input" type="checkbox" id="gridCheck6" name = "subscribe">
        <label class="form-check-label" for="gridCheck2">
          Chá de Boldo
        </label>
<span class="number-input">
  <span class="change minus">-</span>
  <input type="number" class="input-box" min ="0" max="100" id="number5">
  <span class="change plus">+</span>
</span>	
      </div>
    </div>
  </div>


</div>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	
  </body>
  </html>
  
  <script>
$('.change').on('click', function(){
    var selfObj = $(this);
    var numberInput = selfObj.closest('.number-input').find('.input-box');
    var currentValue = numberInput.val().length && !(isNaN(numberInput.val())) ? parseInt(numberInput.val()) : 0;
    var minVal = numberInput[0].hasAttribute('min') ? numberInput.attr('min') : false;
    var maxVal = numberInput[0].hasAttribute('max') ? numberInput.attr('max') : false;
    if(selfObj.hasClass('minus')) {
        if(minVal) {
            if(currentValue > parseInt(minVal)) {
                numberInput.val(currentValue - 1);
            }
            else {
                numberInput.val(currentValue);
            }
        }
        else {
            numberInput.val(currentValue - 1);
        }
    }
    else if(selfObj.hasClass('plus')) {
        if(maxVal) {
            if(currentValue < parseInt(maxVal)) {
                numberInput.val(currentValue + 1);
            }
            else {
                numberInput.val(currentValue);
            }
        }
        else {
            numberInput.val(currentValue + 1);
        }
    }
});
$('#botao1').on('click',function(){
	if($(this).parent().find("#botao_div").css('display') == 'none'){
        $(this).parent().find("#botao_div").show();
    }
    else{
        $(this).parent().find("#botao_div").hide();
    }    
	
});
$('#botao2').on('click',function(){
	if($(this).parent().find("#botao_div_2").css('display') == 'none'){
        $(this).parent().find("#botao_div_2").show();
    }
    else{
        $(this).parent().find("#botao_div_2").hide();
    }    
	
});
</script>


