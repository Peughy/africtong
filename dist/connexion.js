let connexions = document.querySelectorAll("#connexion")
let inscriptions = document.querySelectorAll("#inscription")

let form_connexion = document.getElementById("form-connexion")
let form_inscription = document.getElementById("form-inscription")
let type = document.getElementById("type")

inscriptions.forEach((inscription, index) => {
    inscription.addEventListener('click', () => {
        form_connexion.style.transform = "translateX(-350px)"
        form_inscription.style.transform = "translateX(-350px)"
        connexions[index].classList.remove("connexion")
        connexions[index].classList.add("inscription")
        inscription.classList.remove("inscription")
        inscription.classList.add("connexion")
        type.innerHTML = "Inscription"
        menuDiv.style.transform = "scale(0)"
    })
})

connexions.forEach((connexion, index) => {
    connexion.addEventListener('click', () => {
        form_connexion.style.transform = "translateX(0)"
        form_inscription.style.transform = "translateX(0)"
        connexion.classList.remove("inscription")
        connexion.classList.add("connexion")
        inscriptions[index].classList.remove("connexion")
        inscriptions[index].classList.add("inscription")
        type.innerHTML = "Connexion"
        menuDiv.style.transform = "scale(0)"
    })
})


let open_menu = document.getElementById("open_menu")
let close_menu = document.getElementById("close_menu")
let menuDiv = document.getElementById("menuDiv")

open_menu.addEventListener('click', () => {
    menuDiv.style.transform = "scale(1)"
})

close_menu.addEventListener('click', () => {
    menuDiv.style.transform = "scale(0)"
})
menuDiv.addEventListener('click', () =>{
    menuDiv.style.transform = "scale(0)"
})