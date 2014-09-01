$(document).ready(function() {

	var xhr;

	//$('a').click(function(){
	//	if(xhr && xhr.readystate != 4){
	//		console.log("clicked!");
	//	  xhr.abort();
	//	}
	//});

	$('#like').click(function() {
		if (gon.usuario_logado){
		  $('#hidden_tipo').val(true);
		  $('#submit').click();
		}else
			bootbox.alert("Você precisa estar logado para avaliar um item.");
	});

	$('#dislike').click(function() {
		if (gon.usuario_logado){
		  $('#hidden_tipo').val(false);
		  $('#submit').click();
		}else
			bootbox.alert("Você precisa estar logado para avaliar um item.");
	});

	$('.like').click(function() {
		if (gon.usuario_logado){
			var id = $(this).closest("td").find("input#avaliacao_item_id").val();
		  $('#hidden_tipo_' + id).val(true);
		  $('#submit_' + id).click();
		}else
			bootbox.alert("Você precisa estar logado para avaliar um item.");
	});

	$('.dislike').click(function() {
		if (gon.usuario_logado){
			var id = $(this).closest("td").find("input#avaliacao_item_id").val();
		  $('#hidden_tipo_' + id).val(false);
		  $('#submit_' + id).click();
		}else
			bootbox.alert("Você precisa estar logado para avaliar um item.");
	});
	
	if ($('#content-recommendation').length) {
		xhr = $.ajax({
	    url:'/get_recommendations/' + gon.item_id + '.js',
	    type:"get"
	  });
	}

	$('#item-img').click(function() {
		$.ajax({
	    url:'/get_image.js',
	    type:"get"
	  });
	});

	$(function() {
		$('.nav-tabs a:eq('+ gon.position +')').tab('show').addClass('active');
	});

  $(".close").click(function(){
    $(".alert").alert();
  });

});