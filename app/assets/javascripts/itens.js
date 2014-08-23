$(document).ready(function() {

	$('#like').click(function() {
		if (gon.usuario_logado){
		  $('#hidden_tipo').val(true);
		  $('#submit').click();
		}else
			bootbox.alert("Você deve estar logado para avaliar um item.");
	});

	$('#dislike').click(function() {
		if (gon.usuario_logado){
		  $('#hidden_tipo').val(false);
		  $('#submit').click();
		}else
		bootbox.alert("Você deve estar logado para avaliar um item.");
	});
	
	if ($('#content-recommendation').length) {
		$.ajax({
	    url:'/get_content_recommendation/' + gon.item_id + '.js',
	    type:"get"
	  });
	}		

	$(function() {
		$('.nav-tabs a:first').tab('show');
	});

  $(".close").click(function(){
        $(".alert").alert();
  });

});