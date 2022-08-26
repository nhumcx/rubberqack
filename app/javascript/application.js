// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import { initFlatpickr } from "./plugins/flatpickr";

initFlatpickr();

const audio = new Audio("https://res.cloudinary.com/dbgvo56a1/video/upload/v1661345735/Quack_Sound_Effect_wniepn.mp3");
// const bruhAudio = new Audio("https://res.cloudinary.com/dbgvo56a1/video/upload/v1661505053/bruh_py28qq.mp3");
// const rickAudio = new Audio("https://res.cloudinary.com/dbgvo56a1/video/upload/v1661505067/quack.rick_vauul7.mp3");
const button = document.getElementById("button");
const duckflakes = document.querySelectorAll(".snowflake");
// const bruh = document.getElementById("bruh-button");
// const avatarRick = document.getElementsByClassName("avatar");

  // avatarRick.addEventListener("click", () => {

  //   bruhAudio.play();
  // });


  // bruh.addEventListener("click", () => {
  //   console.log("bruh");
  //   bruhAudio.play();
  // });


  button.addEventListener("click", () => {
    audio.play();
  });



duckflakes.forEach(duck => {
  duck.addEventListener("mouseover", () => {
    console.log('quack')
    audio.play();
  });
});
