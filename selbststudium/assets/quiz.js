/* =========================================================================
   PMM Selbststudium — Quiz-Widget
   Wiederverwendbar in jeder Lektion. Einbinden mit:
     <script src="../assets/quiz.js" defer></script>

   Markup pro Quiz:
     <div class="quiz">
       <div class="q-label">Verständnisfrage</div>
       <div class="question">…Frage…</div>
       <ul class="options">
         <li data-correct="false">Antwort A</li>
         <li data-correct="true">Antwort B</li>   <!-- genau eine correct="true" -->
         <li data-correct="false">Antwort C</li>
       </ul>
       <div class="feedback" data-for="correct">Erklärung wenn richtig.</div>
       <div class="feedback" data-for="wrong">Hinweis wenn falsch.</div>
     </div>

   Optionale <div class="feedback" data-for="…">: "correct" | "wrong" | "reveal"
   (Default: eine generische Rückmeldung).
   ========================================================================= */
(function () {
  "use strict";

  function feedbackEl(quiz, which) {
    var el = quiz.querySelector('.feedback[data-for="' + which + '"]');
    return el;
  }

  function resetOptions(quiz) {
    quiz.querySelectorAll(".options li").forEach(function (li) {
      li.classList.remove("correct", "wrong");
    });
  }

  function showFeedback(quiz, which, fallback) {
    var fb = feedbackEl(quiz, which);
    if (!fb) fb = feedbackEl(quiz, "reveal");
    if (!fb) {
      fb = document.createElement("div");
      fb.className = "feedback";
      fb.textContent = fallback;
      quiz.appendChild(fb);
    }
    fb.classList.add("show");
  }

  function hideAllFeedback(quiz) {
    quiz.querySelectorAll(".feedback").forEach(function (f) {
      f.classList.remove("show");
    });
  }

  document.addEventListener("DOMContentLoaded", function () {
    document.querySelectorAll(".quiz").forEach(function (quiz) {
      quiz.querySelectorAll(".options li").forEach(function (li) {
        li.setAttribute("role", "button");
        li.setAttribute("tabindex", "0");

        function handle() {
          // alter Versuch zurücksetzen
          resetOptions(quiz);
          hideAllFeedback(quiz);

          if (li.dataset.correct === "true") {
            li.classList.add("correct");
            showFeedback(quiz, "correct", "Richtig.");
          } else {
            li.classList.add("wrong");
            // richtige Lösung gleich mit aufdecken (Lerneffekt)
            quiz.querySelectorAll('.options li[data-correct="true"]')
              .forEach(function (c) { c.classList.add("correct"); });
            showFeedback(quiz, "wrong", "Noch nicht — siehe Markierung.");
          }
        }

        li.addEventListener("click", handle);
        li.addEventListener("keydown", function (e) {
          if (e.key === "Enter" || e.key === " ") {
            e.preventDefault();
            handle();
          }
        });
      });
    });
  });
})();
