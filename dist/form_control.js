
// Import the functions you need from the SDKs you need
import { initializeApp } from "https://www.gstatic.com/firebasejs/10.13.2/firebase-app.js";
import { getAuth, signInWithEmailAndPassword } from "https://www.gstatic.com/firebasejs/10.13.2/firebase-auth.js";

// app's Firebase configuration
const firebaseConfig = {
  apiKey: "AIzaSyB4iMggGqNabVLp242DY5GhX5COpZ3bX_c",
  authDomain: "africtong-85f15.firebaseapp.com",
  projectId: "africtong-85f15",
  storageBucket: "africtong-85f15.appspot.com",
  messagingSenderId: "144007670192",
  appId: "1:144007670192:web:56a71ca4aa090eda490e75"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);

// fetch the id
var connnexionGoogle = document.getElementById("connnexionGoogle");
var connexionEmail = document.getElementById("connexionEmail");



// fetch error 
var erreurEmail = document.getElementById("erreurEmail");
var erreurMdp = document.getElementById("erreurMdp");

connexionEmail.addEventListener('click', (e) => {
    e.preventDefault();

    // fetch the value form
    var email = document.getElementById("email");
    var mdp = document.getElementById("mdp");
    
    var exit = false;
    if(email.value == ""){
        erreurEmail.innerHTML = "Veuillez completer ce champ !";
        exit = true;
    }
    else{
        erreurEmail.innerHTML = null;
    }

    if(mdp.value == ""){
        erreurMdp.innerHTML = "Veuillez completer ce champ !";
        exit = true;
    }
    else{
        erreurMdp.innerHTML = null;
    }

    if(!exit){
        const auth = getAuth();
        signInWithEmailAndPassword(auth, email.value, mdp.value)
        .then((userCredential) => {
            // Signed in 
            const user = userCredential.user;
            if(user != null){
                alert("goode");
            }
            else{
                alert("bad");
            }
        })
        .catch((error) => {
            const errorCode = error.code;
            alert(errorCode);
            const errorMessage = error.message;
            alert(errorMessage);
        });
    }
    else
        return;
        
});