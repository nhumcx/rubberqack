// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"

const audio = new Audio("https://www.fesliyanstudios.com/play-mp3/387");
const button = document.getElementById("button");


  button.addEventListener("click", () => {
    audio.play();
  });
