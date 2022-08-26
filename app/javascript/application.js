// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import { initFlatpickr } from "./plugins/flatpickr";

initFlatpickr();

const audio = new Audio("https://res.cloudinary.com/dbgvo56a1/video/upload/v1661345735/Quack_Sound_Effect_wniepn.mp3");
// const bruhAudio = new Audio("https://res.cloudinary.com/dbgvo56a1/video/upload/v1661505053/bruh_py28qq.mp3");
const rickAudio = new Audio("https://res.cloudinary.com/dbgvo56a1/video/upload/v1661505067/quack.rick_vauul7.mp3");
const flutter = new Audio("https://res.cloudinary.com/dbgvo56a1/video/upload/v1661505006/wings_sound_pfuphm.mp3");
const button = document.getElementById("button");
const duckflakes = document.querySelectorAll(".snowflake");
// const bruh = document.getElementById("bruh");
const avatarRick = document.getElementById("quackatar");
// const flutterDuck = document.getElementById("newduck");

  // flutterDuck.addEventListener("click", () => {
  //   console.log("flutter");
  //   flutter.play();
  // });

  if (avatarRick){
    avatarRick.addEventListener("click", () => {
      console.log("rick");
      rickAudio.play();
    });
  };

  // if (bruh){
  //   bruh.addEventListener("click", () => {
  //     console.log("bruh");
  //     bruhAudio.play();
  //   });
  // };

  if(button){
    button.addEventListener("click", () => {
      console.log("click");
      audio.play();
    });
  };


  if(duckflakes){
    duckflakes.forEach(duck => {
      duck.addEventListener("mouseover", () => {
        console.log('quack')
        audio.play();
      });
    });
  }
