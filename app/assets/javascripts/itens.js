$(document).ready(function() {

	//$('a').click(function(){
	//	if(xhr && xhr.readystate != 4){
	//		console.log("clicked!");
	//	  xhr.abort();
	//	}
	//});

	$('#usa-wiki').click(function() {
		var cbUsaWiki = $('#usa-wiki').is(':checked');
		$('#descricao').prop('disabled', cbUsaWiki);
	});

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
		$.ajax({
	    url:'/content_recommendation/' + gon.item_id + '.js',
	    type:"get"
	  });
	}

	$('#item-img').click(function() {
		$.ajax({
	    url:'/refresh_item_img/' + gon.item_id + '.js',
	    type:"get"
	  });
	});

	$(function() {
		$('.nav-tabs a:eq('+ gon.position +')').tab('show').addClass('active');
	});

	if ($('#collaborative-recommendation').length) {
		$('.nav-tabs a:eq(0)').tab('show').addClass('active');
	}

  $(".close").click(function(){
    $(".alert").alert();
  });

});