// Entry point for the build script in your package.json
//import "@hotwired/turbo-rails"

import "./controllers"
import * as bootstrap from "bootstrap"

window.bootstrap = bootstrap

import "bootstrap"

function removeFlash() {
  const flashMessages = document.querySelectorAll(".flash-message");

  flashMessages.forEach((message) => {
    setTimeout(() => {
      message.remove();
    }, 3000);
  });
}

document.addEventListener("turbo:load", removeFlash);
document.addEventListener("DOMContentLoaded", removeFlash);