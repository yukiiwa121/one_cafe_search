// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "./stylesheets/application.scss"


import * as bootstrap from "bootstrap"

window.bootstrap = bootstrap

function removeFlash() {
  document.querySelectorAll(".flash-message").forEach((message) => {
    setTimeout(() => message.remove(), 3000)
  })
}


document.addEventListener("turbo:before-fetch-request", (e) => {
  console.log("before-fetch-request", e.detail);
});

