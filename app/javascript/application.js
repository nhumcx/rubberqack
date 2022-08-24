// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"

const audio = new Audio("https://res.cloudinary.com/dbgvo56a1/video/upload/v1661345735/Quack_Sound_Effect_wniepn.mp3");
const button = document.getElementById("button");
const duckflake = document.getElementsByClassName("snowflake");

  button.addEventListener("click", () => {
    audio.play();
  });

  duckflake.addEventListener("mouseover", () => {
    audio.play();
  });
