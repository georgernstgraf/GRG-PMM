/* Quiz-Widget für Lektionen (4AHWIT Kohorte x)
   Markup-Vereinbarung:
   <div class="quiz" data-loesung="1">
     <p class="frage">…</p>
     <label><input type="radio" name="q1" value="0"> Antwort A</label>
     <label><input type="radio" name="q1" value="1"> Antwort B</label>
     <p class="feedback" aria-live="polite"></p>
     <p class="erklaerung">…</p>
   </div>
   data-loesung = Index (0-basiert) der richtigen Antwort.
   Sofort-Feedback nach Klick; Umschalten erlaubt, Feedback aktualisiert. */

(function () {
  "use strict";

  var POSITIV = ["Richtig!", "Genau.", "Treffer.", "Stimmt."];
  var NEGATIV = ["Nicht ganz.", "Knapp daneben.", "Noch mal probieren.", "Leider nein."];

  function waehle(liste, seed) {
    return liste[seed % liste.length];
  }

  function initialsieren(quiz, idx) {
    var loesung = parseInt(quiz.getAttribute("data-loesung"), 10);
    var inputs = quiz.querySelectorAll("input[type=radio]");
    var feedback = quiz.querySelector(".feedback");
    var erklaerung = quiz.querySelector(".erklaerung");
    if (!inputs.length || !feedback) { return; }

    function bewerte() {
      var gewaehlt = null;
      for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].checked) { gewaehlt = parseInt(inputs[i].value, 10); }
      }
      if (gewaehlt === null) { return; }
      if (gewaehlt === loesung) {
        feedback.textContent = waehle(POSITIV, idx);
        feedback.className = "feedback richtig";
        erklaerung.style.display = "block";
      } else {
        feedback.textContent = waehle(NEGATIV, idx);
        feedback.className = "feedback falsch";
        erklaerung.style.display = "none";
      }
    }

    for (var i = 0; i < inputs.length; i++) {
      inputs[i].addEventListener("change", bewerte);
    }
  }

  document.addEventListener("DOMContentLoaded", function () {
    var quizzes = document.querySelectorAll(".quiz");
    for (var i = 0; i < quizzes.length; i++) { initialsieren(quizzes[i], i); }
  });
})();
