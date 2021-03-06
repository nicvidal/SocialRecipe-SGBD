$(".date").datepicker({
    todayBtn: "linked",
    clearBtn: true,
    language: "en",
    autoclose: true
});

function search_value(){
    let search_name = $("#search_name").val();

    let found = 0;
    rows.forEach(function(e){
        if(e[name].match(new RegExp(search_name, 'i'))){
            document.querySelector('['+id_field+'="'+e[id]+'"]').style.display = "";
            found ++;
        }else{
            document.querySelector('['+id_field+'="'+e[id]+'"]').style.display = "none";
        }
    });

    if(found > 0)
        document.querySelector("#nothing-found").style.display = "none";
    else
        document.querySelector("#nothing-found").style.display = "";
}

$("#menu_add").click(function(event){
    if(!$("#logged").length){
        event.preventDefault();
        alert("You must be logged in to add a menu !");
    }
});