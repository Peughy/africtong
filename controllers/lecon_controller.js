import { initializeApp } from "https://www.gstatic.com/firebasejs/10.13.2/firebase-app.js";
import { getAuth, onAuthStateChanged } from "https://www.gstatic.com/firebasejs/10.13.2/firebase-auth.js";
import { doc, getFirestore } from 'https://www.gstatic.com/firebasejs/10.13.2/firebase-firestore.js';

const firebaseConfig = {
    apiKey: "AIzaSyB4iMggGqNabVLp242DY5GhX5COpZ3bX_c",
    authDomain: "africtong-85f15.firebaseapp.com",
    projectId: "africtong-85f15",
    storageBucket: "africtong-85f15.appspot.com",
    messagingSenderId: "144007670192",
    appId: "1:144007670192:web:56a71ca4aa090eda490e75"
  };


const app = initializeApp(firebaseConfig);
const auth = getAuth(app);
const db = getFirestore(app);

onAuthStateChanged(auth, async (user) => {
  if (user) {
    // add lecon parent div
    const addLesson = document.getElementById("addLesson");

    // display error
    var divError = document.getElementById("divError");
    var divSuccess = document.getElementById("divSuccess");

    // message error
    var msgSuccess = document.getElementById("msgSuccess");
    var msgError = document.getElementById("msgError");

    // display error
    const titreErreur = document.getElementById("titreErreur");
    const libelleErreur = document.getElementById("libelleErreur");
    const disciplineErreur = document.getElementById("disciplineErreur");
    const contenuErreur = document.getElementById("contenuErreur");
    const langueErreur = document.getElementById("langueErreur");

    // field
    const validAddLesson = document.getElementById("validAddLesson");


    // submit lesson
    validAddLesson.addEventListener('click', async (e) => {
        e.preventDefault();

        // recuperer lecon
        const titreLecon = document.getElementById("titreLecon");
        const libelleLecon = document.getElementById("libelleLecon");
        const disciplineLecon = document.getElementById("disciplineLecon");
        const contentLecon = document.getElementById("contentLecon");
        const langueLecon = document.getElementById("langueLecon");

        // verification
        var exist = false;
        if(titreLecon.value == ""){
            titreErreur.innerHTML = "Veuillez compléter ce champ !";
            exist = true;
        }
        else{
            titreErreur.innerHTML = null;
        }

        if(libelleLecon.value == ""){
            libelleErreur.innerHTML = "Veuillez compléter ce champ !";
            exist = true;
        }
        else{
            libelleErreur.innerHTML = null;
        }

        if(disciplineLecon.value == "choix"){
            disciplineErreur.innerHTML = "Veuillez choisir une sous discipline !";
            exist = true;
        }
        else{
            disciplineErreur.innerHTML = null;
        }
        if(langueLecon.value == "choix"){
            langueErreur.innerHTML = "Veuillez choisir une sous discipline !";
            exist = true;
        }
        else{
            langueErreur.innerHTML = null;
        }

        if(contentLecon.value == ""){
            contenuErreur.innerHTML = "Veuillez compléter ce champ !";
            exist = true;
        }
        else{
            contenuErreur.innerHTML = null;
        }

        if(!exist){

            try {
                // fetch the document
                // const req = doc(collection(db, "lecons"));
                // const allDocs = await getDocs(req);
                // console.log(allDocs);

                const docRef = doc(db, "lecons", "osjved0Vxmz6UDIXo7rR");
                const docSnap = await getDoc(docRef);

                if (docSnap.exists()) {
                console.log("Document data:", docSnap.data());
                } else {
                // docSnap.data() will be undefined in this case
                console.log("No such document!");
                }
                
                // allDocs.forEach((doc) => {
                //     console.log(doc.id, " => ", doc.data());
                // });

                // Add a new document with a generated id.
                // const docRef = await addDoc(collection(db, "lecons"), {
                //     nom_lecon: libelleLecon.value,
                //     langue_lecon: langueLecon.value,
                //     titre_lecon: titreLecon.value,
                //     sous_discipline: disciplineLecon.value,
                //     contenu_lecon: contentLecon.value
                // });
                
                // addLesson.style.transform = "translateY(-100%)";
                // divSuccess.style.display = "flex";
                // msgSuccess.innerHTML = "Lecon ajoute avec success";
            } catch (error) {
                addLesson.style.transform = "translateY(-100%)";
                divError.style.display = "flex";
                msgError.innerHTML = "Error: " + error;
            }
        }
        else{
            return
        }

    });

    
  } else {
    window.location.assign("http://127.0.0.1:5500/views/connexion.html");
  }
});

// treat error div
var btnError = document.getElementById("btnError")

btnError.addEventListener('click', () =>{
    divError.style.display = "none";
})

// treat error div
var btnSuccess = document.getElementById("btnSuccess")

btnSuccess.addEventListener('click', () => {
    divSuccess.style.display = "none";
})