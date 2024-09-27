// sidebar controls

let btnMenu = document.getElementById("btnMenu");
let btnExist = document.getElementById("btnExist");
let sidebar = document.getElementById("sidebar");


btnMenu.addEventListener('click', () => {
    sidebar.style.transform = "translateX(0)";
});

btnExist.addEventListener('click', () => {
    sidebar.style.transform = "translateX(-100%)";
});

// fetch links
let links = document.querySelectorAll("#link");
let iconLinks = document.querySelectorAll("#icon-link");
let aLinks = document.querySelectorAll("#a-link");

// fetch div
let dashboard = document.getElementById("dashboard");
let lecons = document.getElementById("lecons");
let accents = document.getElementById("accents");
let exercices = document.getElementById("exercices");
let quizz = document.getElementById("quizz");
let discussions = document.getElementById("discussions");
let apprenants = document.getElementById("apprenants");
let jimmy = document.getElementById("jimmy");

// fetch title id
let title = document.getElementById("title");

let sections = [dashboard, lecons, accents, exercices, quizz, discussions, apprenants, jimmy];
let titles = ["Dashboard", "Leçons", "Accents", "Exercices", "Quizz", "Discussions", "Apprenants", "Espace Jimmy"];

// links controls
//
// link - active-li
// i - active-i
// a - active-a
links.forEach((link, index) => {
    link.addEventListener('click', () => {
        for(let i=0; i<links.length; i++){
            if(i != index){
                if(links[i].classList.contains("active-li")){

                    // remove this class
                    links[i].classList.replace("active-li", "inactive-li");
                    iconLinks[i].classList.replace("active-i", "inactive-i");
                    aLinks[i].classList.replace("active-a", "inactive-a");

                    // remove this class
                    links[index].classList.replace("inactive-li", "active-li");
                    iconLinks[index].classList.replace("inactive-i", "active-i");
                    aLinks[index].classList.replace("inactive-a", "active-a");

                    // display the sections and title
                    sections[index].style.display = "block";
                    sections[i].style.display = "none";

                    // change text
                    title.innerHTML = titles[index];
                }
            }
        }
    });
});


// let toggle lesson
let leconUniques = document.querySelectorAll("#leconUniques");
let controlLecons = document.querySelectorAll("#controlLecons");

controlLecons.forEach((controlLecon, index) => {
    controlLecon.addEventListener('click', () => {
        if(leconUniques[index].offsetHeight == 52){
            leconUniques[index].style.height = "100%";
            controlLecon.style.transform = "rotateX(180deg)"
        }
        else if(leconUniques[index].offsetHeight != 52){
            leconUniques[index].style.height = "52px";
            controlLecon.style.transform = "rotateX(0deg)"
        }
    });
});


// profile

const popProfile = document.getElementById("popProfile");
const imgProfile = document.getElementById("imgProfile");

imgProfile.addEventListener('mouseover', () => {
    popProfile.classList.remove("hidden");
    popProfile.classList.add("block");
});

imgProfile.addEventListener('mouseleave', () => {
    setTimeout(() => {
        popProfile.classList.remove("block");
        popProfile.classList.add("hidden");
    }, 3500);
});

// add list
const displayAddLesson = document.getElementById("displayAddLesson");
const hiddenAddLesson = document.getElementById("hiddenAddLesson");
const addLesson = document.getElementById("addLesson");

displayAddLesson.addEventListener('click', () => {
    addLesson.style.transform = "translateY(0)";
});

hiddenAddLesson.addEventListener('click', (e) => {
    e.preventDefault();
    addLesson.style.transform = "translateY(-100%)";
});
