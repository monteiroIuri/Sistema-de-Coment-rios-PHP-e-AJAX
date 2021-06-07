$('#form1').submit(function(e){
    e.preventDefault();
    
    var u_name = $('#name').val();
    var u_comment = $('#comment').val();
    var u_data = $('#data').val();
    var u_hora = $('#hora').val();
    
    $.ajax({
        url: 'http://localhost/projetoComentarios/inserir.php', 
        method: 'POST',
        data: {name: u_name, comment: u_comment, data: u_data, hora: u_hora},
        dataType: 'json'
    }).done(function(result){
        $('#name').val('');
        $('#comment').val('');
        $('#data').val('');
        $('#hora').val('');
        console.log(result);
        getComments();
    });
});


function getComments(){
    $.ajax({
        url:'http://localhost/projetoComentarios/selecionar.php',
        method: 'GET',
        dataType: 'json'
    }).done(function(result){
        console.log(result);

        //Para não duplicar os comentários --------------------
        var box_comm = document.querySelector('.box_comment');
                while(box_comm.firstChild){
                    box_comm.firstChild.remove();
                }
        //^---------------------------------------------------^

        for(var i = 0; i < result.length; i++){
            $('.box_comment').prepend(
                '<div class="b_comm"><h4>' + result[i].name + '</h4><br><p>"' + result[i].comment + 
                '"</p><br><p class="move_right">' + result[i].data + '</p><p class="move_right">às ' + result[i].hora + '</p></div>'
                );    
        }
    });
}

getComments();