/* Hell/Dunkel-Umschalter für 4AHWIT-Lektionen.
   Default folgt dem Betriebssystem (prefers-color-scheme),
   die Wahl wird in localStorage ("pmm-theme") gemerkt.
   Print bleibt über lesson.css immer hell. Kein CDN. */

(function () {
  "use strict";

  var SPEICHER = "pmm-theme";
  var wurzel = document.documentElement;
  var knopf = document.getElementById("theme-toggle");

  function systemTheme() {
    if (window.matchMedia &&
        window.matchMedia("(prefers-color-scheme: dark)").matches) {
      return "dark";
    }
    return "light";
  }

  function anwenden(theme) {
    wurzel.setAttribute("data-theme", theme);
    if (knopf) {
      knopf.textContent = theme === "dark" ? "Hell" : "Dunkel";
      knopf.setAttribute("aria-pressed",
        theme === "dark" ? "true" : "false");
    }
  }

  var gespeichert = null;
  try { gespeichert = window.localStorage.getItem(SPEICHER); } catch (e) {}
  if (gespeichert === "dark" || gespeichert === "light") {
    anwenden(gespeichert);
  } else {
    anwenden(systemTheme());
  }

  if (knopf) {
    knopf.addEventListener("click", function () {
      var neu = wurzel.getAttribute("data-theme") === "dark"
        ? "light" : "dark";
      anwenden(neu);
      try { window.localStorage.setItem(SPEICHER, neu); } catch (e) {}
    });
  }
})();
