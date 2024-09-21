// fetch the id
var form = document.getElementById("form-connexion");
var connnexionGoogle = document.getElementById("connnexionGoogle");
var connexionEmail = document.getElementById("connexionEmail");

// fetch the value form
var email = document.getElementById("email");
var mdp = document.getElementById("mdp");

// fetch error 
var erreurEmail = document.getElementById("erreurEmail");
var erreurMdp = document.getElementById("erreurMdp");

form.addEventListener('submit', (e) => {
    e.preventDefault();
    
    var exit = false;
    if(email.value == ""){
        erreurEmail.innerHTML = "Veuillez completer ce champ !";
        exit = true;
    }

    if(mdp.value == ""){
        erreurMdp.innerHTML = "Veuillez completer ce champ !";
        exit = true;
    }

    if(exit){

    }
    else
        return;
        
});