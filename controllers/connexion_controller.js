
// Import the functions you need from the SDKs you need
import { initializeApp } from "https://www.gstatic.com/firebasejs/10.13.2/firebase-app.js";
import { createUserWithEmailAndPassword, getAuth, GoogleAuthProvider, signInWithEmailAndPassword, signInWithPopup } from "https://www.gstatic.com/firebasejs/10.13.2/firebase-auth.js";
import { doc, getDoc, getFirestore, setDoc } from 'https://www.gstatic.com/firebasejs/10.13.2/firebase-firestore.js';

// app's Firebase configuration
const firebaseConfig = {
  apiKey: "AIzaSyB4iMggGqNabVLp242DY5GhX5COpZ3bX_c",
  authDomain: "africtong-85f15.firebaseapp.com",
  projectId: "africtong-85f15",
  storageBucket: "africtong-85f15.appspot.com",
  messagingSenderId: "144007670192",
  appId: "1:144007670192:web:56a71ca4aa090eda490e75"
};

// carcatere
// èéêâàùç

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const db = getFirestore(app);

// fetch the id
var connnexionGoogle = document.getElementById("connnexionGoogle");
var inscriptionEmail = document.getElementById("inscriptionEmail");
var connexionEmail = document.getElementById("connexionEmail");

// fetch error inscription
var erreurEmail = document.getElementById("erreurEmail");
var erreurMdp = document.getElementById("erreurMdp");

// message error
var msgSuccess = document.getElementById("msgSuccess");
var msgError = document.getElementById("msgError");

var divError = document.getElementById("divError");
var divSuccess = document.getElementById("divSuccess");


// sign with email and pwd
connexionEmail.addEventListener('click', (e) => {
    e.preventDefault();

    // fetch the value form
    var email = document.getElementById("email");
    var mdp = document.getElementById("mdp");
    
    var exit = false;
    if(email.value == ""){
        erreurEmail.innerHTML = "Veuillez compléter ce champ !";
        exit = true;
    }
    else{
        erreurEmail.innerHTML = null;
    }

    if(mdp.value == ""){
        erreurMdp.innerHTML = "Veuillez compléter ce champ !";
        exit = true;
    }
    else{
        erreurMdp.innerHTML = null;
    }

    if(!exit){
        const auth = getAuth();
        signInWithEmailAndPassword(auth, email.value, mdp.value)
        .then(async (userCredential) => {
            // Signed in 
            const user = userCredential.user;
            if(user != null){
                divError.style.display = "none";
                divSuccess.style.display = "flex";
                msgSuccess.innerHTML = "Connexion réuissie";

                const uid = user.uid;

                const docRef = doc(db, "utilisateurs", uid);
                const docsInfo = await getDoc(docRef);
                
                if(docsInfo.data().type_compte == "admin"){
                    window.location.assign("http://127.0.0.1:5500/views/gestionnaire.html");
                }
                else{
                    window.location.assign("http://127.0.0.1:5500/index.html");
                }
            }
        })
        .catch((error) => {
            divSuccess.style.display = "none";
            divError.style.display = "flex";
            const errorCode = error.code;
            if(errorCode == "auth/invalid-credential"){
                msgError.innerHTML = "Le compte n'a pas été trouvé";
            }
            else if(errorCode == "auth/network-request-failed"){
                msgError.innerHTML = "Problème de connexion internet";
            }
            else{
                msgError.innerHTML = "Erreur: " +  errorCode;
            }
        });
    }
    else
        return;
        
});

// fetch error inscription

var erreurNameI = document.getElementById("erreurNameI");
var erreurEmailI = document.getElementById("erreurEmailI");
var erreurMdpI = document.getElementById("erreurMdpI");
var erreurLangueI = document.getElementById("erreurLangueI");

// inscription width email and password
inscriptionEmail.addEventListener('click', (event) =>  {
    event.preventDefault();

    var nameI = document.getElementById("nameInscription");
    var emailI = document.getElementById("emailInscription");
    var mdpI = document.getElementById("mdpInscription");
    var langueI = document.getElementById("langue");

    // fields verification
    var exitI = false;
    if(nameI.value == ""){
        erreurNameI.innerHTML = "Veuillez compléter ce champ !";
        exitI = true;
    }
    else{
        erreurNameI.innerHTML = null;
    }
    if(emailI.value == ""){
        erreurEmailI.innerHTML = "Veuillez compléter ce champ !";
        exitI = true;
    }
    else{
        erreurEmailI.innerHTML = null;
    }
    if(mdpI.value == ""){
        erreurMdpI.innerHTML = "Veuillez compléter ce champ !";
        exitI = true;
    }
    if(mdpI.value.length < 6){
        erreurMdpI.innerHTML = "Le mot de passe doit avoir au moins six (06) caractères";
        exitI = true;
    }
    else{
        erreurMdpI.innerHTML = null;
    }
    if(langueI.value == "choix"){
        erreurLangueI.innerHTML = "Veuillez choisir une langue";
        exitI = true;
    }
    else{
        erreurLangueI.innerHTML = null;
    }

    if(!exitI){
        const auth = getAuth();
        createUserWithEmailAndPassword(auth, emailI.value, mdpI.value)
        .then(async (userCredential) => {
            // Signed in 
            var user = userCredential.user;
            
            // add the table
            await setDoc(doc(db, "utilisateurs", user.uid), {
                nom_utilisateur: nameI.value,
                langue: langueI.value,
                type_compte: "apprenant",
                profil: "utilisateurs/defaultProfil.jpg"
            });
            
            divError.style.display = "none";
            divSuccess.style.display = "flex";
            msgSuccess.innerHTML = "Inscription reuissie";

            if(user != null){
                divError.style.display = "none";
                divSuccess.style.display = "flex";
                msgSuccess.innerHTML = "Connexion réuissie";

                const uid = user.uid;

                const docRef = doc(db, "utilisateurs", uid);
                const docsInfo = await getDoc(docRef);
                
                if(docsInfo.data().type_compte == "admin"){
                    window.location.assign("http://127.0.0.1:5500/views/gestionnaire.html");
                }
                else{
                    window.location.assign("http://127.0.0.1:5500/index.html");
                }
            }
        })
        .catch((error) => {
            divSuccess.style.display = "none";
            divError.style.display = "flex";
            var errorCode = error.code;
            if(errorCode == "auth/invalid-value-(email)"){
                msgError.innerHTML = "Adresse mail invalide";
            }
            else if(errorCode == "auth/email-already-in-use"){
                msgError.innerHTML = "Le compte existe déjà";
            }
            else{
                msgError.innerHTML = "Erreur: " +  errorCode;
            }
        });
    }
    else
        return
});

// sign with google provider

connnexionGoogle.addEventListener('click', () => {

    const auth = getAuth();
    const googleProvider = new GoogleAuthProvider();

    signInWithPopup(auth, googleProvider)
    .then(async (result) => {
        const credential = GoogleAuthProvider.credentialFromResult(result);
        const token = credential.accessToken;
        console.log(token);
        
        const user = result.user;

        await setDoc(doc(db, "utilisateurs", user.uid), {
            nom_utilisateur: user.displayName,
            langue: "",
            type_compte: "apprenant",
            profil: "utilisateurs/defaultProfil.jpg"
        });

        divError.style.display = "none";
        divSuccess.style.display = "flex";
        msgSuccess.innerHTML = "Connnexion avec Google reuissie";
        
        // window.location.assign("http://127.0.0.1:5500/index.html");
    }).catch((error) => {
        divSuccess.style.display = "none";
        divError.style.display = "flex";
        const errorCode = error.code;
        msgError.innerHTML = "Erreur: " +  errorCode;
        // ...
    });
});