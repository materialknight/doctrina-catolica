"use strict"

const bible_toc = document.getElementById("bible-toc")

bible_toc.addEventListener("toggle", scroll_bible_toc)

function scroll_bible_toc(toggle_ev) {
   if (toggle_ev.newState === "open")
   {
      bible_toc.querySelector(".visible-toc-entry").scrollIntoView({ block: "center" })
   }
}