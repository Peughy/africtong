
// login
// Import the functions you need from the SDKs you need
import { initializeApp } from "https://www.gstatic.com/firebasejs/10.13.2/firebase-app.js";
import { getAuth, onAuthStateChanged, signOut } from "https://www.gstatic.com/firebasejs/10.13.2/firebase-auth.js";
import { doc, getDoc, getFirestore } from 'https://www.gstatic.com/firebasejs/10.13.2/firebase-firestore.js';
import { getDownloadURL, getStorage, ref } from 'https://www.gstatic.com/firebasejs/10.13.2/firebase-storage.js';

const firebaseConfig = {
  apiKey: "AIzaSyB4iMggGqNabVLp242DY5GhX5COpZ3bX_c",
  authDomain: "africtong-85f15.firebaseapp.com",
  projectId: "africtong-85f15",
  storageBucket: "africtong-85f15.appspot.com",
  messagingSenderId: "144007670192",
  appId: "1:144007670192:web:56a71ca4aa090eda490e75"
};

// display error
var divError = document.getElementById("divError");
var divSuccess = document.getElementById("divSuccess");

// message error
var msgSuccess = document.getElementById("msgSuccess");
var msgError = document.getElementById("msgError");

let imgProfile = document.getElementById("imgProfile");
let imgProfileGrand = document.getElementById("imgProfileGrand");
let nomProfile = document.getElementById("nomProfile");
let mailProfile = document.getElementById("mailProfile");
let deconnexion = document.getElementById("deconnexion");

const app = initializeApp(firebaseConfig);
const auth = getAuth(app);
const db = getFirestore(app);
const storage = getStorage(app);

onAuthStateChanged(auth, async (user) => {
  if (user) {
    const uid = user.uid;
    const email = user.email;

    const docRef = doc(db, "utilisateurs", uid);
    const docsInfo = await getDoc(docRef);
    if (docsInfo.exists()) {

        if(docsInfo.data().type_compte == "admin"){

          nomProfile.innerHTML = docsInfo.data().nom_utilisateur;
        mailProfile.innerHTML = email;

        // fing the profil
        const pathRef = ref(storage, 'utilisateurs/defaultProfil.jpg');
        getDownloadURL(pathRef)
        .then((url) => {
          imgProfile.setAttribute('src', url);
          imgProfileGrand.setAttribute('src', url);
          
        })
        .catch((error) => {
          // A full list of error codes is available at
          // https://firebase.google.com/docs/storage/web/handle-errors
          switch (error.code) {
            case 'storage/object-not-found':
              // File doesn't exist
              break;
            case 'storage/unauthorized':
              // User doesn't have permission to access the object
              break;
            case 'storage/canceled':
              // User canceled the upload
              break;

            // ...

            case 'storage/unknown':
              // Unknown error occurred, inspect the server response
              break;
          }
        });
      }
      else{
      window.location.assign("http://127.0.0.1:5500");

      }
    } 
    
  } else {
    window.location.assign("http://127.0.0.1:5500/views/connexion.html");
  }
});

// logout
deconnexion.addEventListener('click', (event) => {
  event.preventDefault();
  signOut(auth).then(() => {
    divError.style.display = "none";
    divSuccess.style.display = "flex";
    msgSuccess.innerHTML = "Deconnexion réuissie";
  }).catch((error) => {
    console.log(error);
  });
})


const ctx = document.getElementById('myChart');
const ctd = document.getElementById('myChartB');


  new Chart(ctx, {
    type: 'bar',
    data: {
      labels: ['Lecon 1', 'Lecon 2', 'Lecon 3'],
      datasets: [{
        label: 'par lecon',
        data: [12, 19, 18],
        borderWidth: 2,
        backgroundColor: '#FFFF00',
      }]
    },
    options: {
      responsive: true,
      plugins: {
        subtitle: {
            display: true,
            text: 'Repartition d\'apprentissage des leçons'
        }
    }
    }
  });

  const data = {
    labels: [
      'Red',
      'Green',
      'Yellow',
      'Grey',
      'Blue'
    ],
    datasets: [{
      label: 'My First Dataset',
      data: [11, 16, 7, 3, 14],
      backgroundColor: [
        'rgb(255, 99, 132)',
        'rgb(75, 192, 192)',
        'rgb(255, 205, 86)',
        'rgb(201, 203, 207)',
        'rgb(54, 162, 235)'
      ]
    }]
  };

  const config = {
    type: 'polarArea',
    data: data,
    options: {
      responsive: true
    }
  };

  new Chart(ctd, config)