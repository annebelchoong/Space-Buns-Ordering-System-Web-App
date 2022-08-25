let openPanelButton = document.getElementById("hypCart");
let closePanelButton = document.getElementById("btnCloseCart");
//let cartPanel = document.querySelector(".cart-panel");
let cartPanel = document.getElementById("pnlCart");

openPanelButton.onclick = () => {
    cartPanel.classList.add("open");
    //openPanelButton.classList.add("hide")
}

closePanelButton.onclick = () => {
    cartPanel.classList.remove("open");
    //openPanelButton.classList.remove("hide");
}