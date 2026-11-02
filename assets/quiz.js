// Quiz-Widget — zwei Modi, ein Skript:
//
// 1) Lernquiz (Format 2.0, Checkboxen, Mehrfach-richtig):
//    <div class="quiz" data-stufe="leicht" data-titel="Quiz 1">
//      <div class="frage" data-loesung="0,2">
//        <p class="frage-text">…</p>
//        <div class="optionen">
//          <label><input type="checkbox" name="q1" value="0" data-grund="…"> …</label>
//          …
//        </div>
//        <p class="feedback" aria-live="polite"></p>
//      </div>
//      …
//    </div>
//    data-loesung ist die Lösungsmenge (0-basierte Indizes, 0 bis 4 erlaubt).
//    Das Skript injiziert Badge, „Show"-Button, Infokugeln und den
//    „Überprüfen"-Button; nach dem Prüfen färben sich die Karten, die
//    Infokugeln zeigen Lösungsmenge und Begründungen (Hover, Fokus, Tipp).
//    Danach wird der Button zu „Nochmal versuchen" und setzt alles zurück.
//
// 2) Altmodus (Radio, genau eine Richtige, Sofort-Auswertung) — bleibt für
//    die Lessons aus der Zeit vor Format 2.0 unverändert:
//    <div class="quiz" data-loesung="N"> … <input type="radio" …> … </div>
(function () {
  "use strict";

  var TEXT_PRUEFEN = "Überprüfen";
  var TEXT_NOCHMAL = "Nochmal versuchen";

  function loesungsmenge(frage) {
    var roh = frage.getAttribute("data-loesung") || "";
    var teile = roh.split(",");
    var menge = [];
    for (var i = 0; i < teile.length; i++) {
      var n = parseInt(teile[i].trim(), 10);
      if (!isNaN(n)) { menge.push(n); }
    }
    return menge;
  }

  function optionstext(label) {
    var klon = label.cloneNode(true);
    var input = klon.querySelector("input");
    if (input) { input.remove(); }
    return klon.textContent.trim();
  }

  function gleich(a, b) {
    if (a.length !== b.length) { return false; }
    var x = a.slice().sort();
    var y = b.slice().sort();
    for (var i = 0; i < x.length; i++) {
      if (x[i] !== y[i]) { return false; }
    }
    return true;
  }

  // ---------- Modal (Show) ----------

  function modalSchliessen(quiz) {
    quiz.classList.remove("quiz-modal");
    document.body.classList.remove("quiz-modal-offen");
    var backdrop = document.querySelector(".quiz-backdrop");
    if (backdrop) { backdrop.parentNode.removeChild(backdrop); }
    var schliessen = quiz.querySelector(".quiz-close");
    if (schliessen) { schliessen.hidden = true; }
  }

  function modalOeffnen(quiz) {
    var offen = document.querySelector(".quiz.quiz-modal");
    if (offen && offen !== quiz) { modalSchliessen(offen); }
    quiz.classList.add("quiz-modal");
    document.body.classList.add("quiz-modal-offen");
    var backdrop = document.createElement("div");
    backdrop.className = "quiz-backdrop";
    backdrop.addEventListener("click", function () { modalSchliessen(quiz); });
    document.body.appendChild(backdrop);
    var schliessen = quiz.querySelector(".quiz-close");
    if (schliessen) { schliessen.hidden = false; }
    var erster = quiz.querySelector("input");
    if (erster) { erster.focus(); }
  }

  // ---------- Lernquiz (Format 2.0) ----------

  function lernquiz(quiz) {
    var fragen = quiz.querySelectorAll(".frage");
    if (!fragen.length) { return; }
    quiz.classList.add("quiz--lern");

    // Kopf: Badge + Show
    var kopf = document.createElement("div");
    kopf.className = "quiz-kopf";
    var badge = document.createElement("span");
    badge.className = "quiz-badge";
    var titel = quiz.getAttribute("data-titel") || "Quiz";
    var stufe = quiz.getAttribute("data-stufe");
    badge.textContent = stufe ? titel + " · " + stufe : titel;
    kopf.appendChild(badge);
    var show = document.createElement("button");
    show.type = "button";
    show.className = "quiz-show";
    show.textContent = "Show";
    show.title = "Quiz bildschirmfüllend zeigen";
    show.addEventListener("click", function () { modalOeffnen(quiz); });
    kopf.appendChild(show);
    var schliessen = document.createElement("button");
    schliessen.type = "button";
    schliessen.className = "quiz-close";
    schliessen.textContent = "×";
    schliessen.setAttribute("aria-label", "Quiz schließen");
    schliessen.hidden = true;
    schliessen.addEventListener("click", function () { modalSchliessen(quiz); });
    kopf.appendChild(schliessen);
    quiz.insertBefore(kopf, quiz.firstChild);

    // Fragen vorbereiten: Infokugel + Sprechblase
    for (var f = 0; f < fragen.length; f++) {
      (function (frage) {
        var kugel = document.createElement("button");
        kugel.type = "button";
        kugel.className = "infokugel";
        kugel.textContent = "i";
        kugel.setAttribute("aria-label", "Lösung und Begründung anzeigen");
        kugel.setAttribute("aria-expanded", "false");
        kugel.hidden = true;

        var blase = document.createElement("div");
        blase.className = "infoblase";
        blase.hidden = true;

        var text = frage.querySelector(".frage-text");
        var anker = text || frage.firstChild;
        frage.insertBefore(kugel, anker);
        frage.appendChild(blase);

        function blaseFuellen() {
          var menge = loesungsmenge(frage);
          var labels = frage.querySelectorAll("label");
          var html = document.createElement("div");
          var kopfzeile = document.createElement("p");
          kopfzeile.className = "infoblase-kopf";
          kopfzeile.textContent = menge.length === 0
            ? "Richtig: keine Option ankreuzen"
            : "Richtig: " + menge.length + (menge.length === 1 ? " Option" : " Optionen");
          html.appendChild(kopfzeile);
          var liste = document.createElement("ul");
          for (var i = 0; i < labels.length; i++) {
            var input = labels[i].querySelector("input");
            var wert = input ? parseInt(input.value, 10) : -1;
            var istRichtig = menge.indexOf(wert) !== -1;
            var li = document.createElement("li");
            li.className = istRichtig ? "ist-richtig" : "ist-falsch";
            var marke = document.createElement("strong");
            marke.textContent = (istRichtig ? "✓ " : "✗ ") + optionstext(labels[i]);
            li.appendChild(marke);
            var grund = input ? input.getAttribute("data-grund") : "";
            if (grund) {
              var g = document.createElement("span");
              g.className = "infoblase-grund";
              g.textContent = " — " + grund;
              li.appendChild(g);
            }
            liste.appendChild(li);
          }
          html.appendChild(liste);
          blase.innerHTML = "";
          blase.appendChild(html);
        }

        function blaseZeigen(zeigen) {
          if (zeigen) { blaseFuellen(); }
          blase.hidden = !zeigen;
          kugel.setAttribute("aria-expanded", zeigen ? "true" : "false");
        }

        kugel.addEventListener("mouseenter", function () { blaseZeigen(true); });
        kugel.addEventListener("mouseleave", function () { blaseZeigen(false); });
        kugel.addEventListener("focus", function () { blaseZeigen(true); });
        kugel.addEventListener("blur", function () { blaseZeigen(false); });
        kugel.addEventListener("click", function () {
          blaseZeigen(blase.hidden);
        });

        frage._kugel = kugel;
        frage._blase = blase;
      })(fragen[f]);
    }

    // Prüfen / Nochmal versuchen
    var knopf = document.createElement("button");
    knopf.type = "button";
    knopf.className = "quiz-pruefen";
    knopf.textContent = TEXT_PRUEFEN;
    quiz.appendChild(knopf);

    var geprueft = false;

    function zuruecksetzen() {
      geprueft = false;
      for (var i = 0; i < fragen.length; i++) {
        var frage = fragen[i];
        frage.classList.remove("richtig", "falsch");
        var feedback = frage.querySelector(".feedback");
        if (feedback) {
          feedback.textContent = "";
          feedback.className = "feedback";
        }
        if (frage._kugel) {
          frage._kugel.hidden = true;
          frage._kugel.setAttribute("aria-expanded", "false");
        }
        if (frage._blase) { frage._blase.hidden = true; }
        var inputs = frage.querySelectorAll("input[type=checkbox]");
        for (var k = 0; k < inputs.length; k++) { inputs[k].checked = false; }
      }
      knopf.textContent = TEXT_PRUEFEN;
      knopf.classList.remove("nochmal");
    }

    function pruefen() {
      for (var i = 0; i < fragen.length; i++) {
        var frage = fragen[i];
        var inputs = frage.querySelectorAll("input[type=checkbox]");
        var gewaehlt = [];
        for (var k = 0; k < inputs.length; k++) {
          if (inputs[k].checked) { gewaehlt.push(parseInt(inputs[k].value, 10)); }
        }
        var ok = gleich(gewaehlt, loesungsmenge(frage));
        frage.classList.remove("richtig", "falsch");
        frage.classList.add(ok ? "richtig" : "falsch");
        var feedback = frage.querySelector(".feedback");
        if (feedback) {
          feedback.textContent = ok
            ? "Richtig — die Infokugel zeigt die Begründung."
            : "Falsch — die Infokugel zeigt die Lösung und die Begründung.";
          feedback.className = "feedback " + (ok ? "richtig" : "falsch");
        }
        if (frage._kugel) { frage._kugel.hidden = false; }
      }
      geprueft = true;
      knopf.textContent = TEXT_NOCHMAL;
      knopf.classList.add("nochmal");
    }

    knopf.addEventListener("click", function () {
      if (geprueft) { zuruecksetzen(); } else { pruefen(); }
    });

    document.addEventListener("keydown", function (e) {
      if (e.key === "Escape" && quiz.classList.contains("quiz-modal")) {
        modalSchliessen(quiz);
      }
    });
  }

  // ---------- Altmodus (Radio, sofortige Auswertung) ----------

  function altquiz(quiz) {
    var loesung = parseInt(quiz.getAttribute("data-loesung"), 10);
    var inputs = quiz.querySelectorAll("input[type=radio]");
    var feedback = quiz.querySelector(".feedback");
    if (!inputs.length || !feedback) { return; }

    function bewerte() {
      var gewaehlt = null;
      for (var i = 0; i < inputs.length; i++) {
        if (inputs[i].checked) { gewaehlt = inputs[i]; }
      }
      if (!gewaehlt) { return; }
      var richtig = parseInt(gewaehlt.value, 10) === loesung;
      feedback.textContent = gewaehlt.getAttribute("data-grund") || "";
      feedback.className = "feedback " + (richtig ? "richtig" : "falsch");
    }

    for (var i = 0; i < inputs.length; i++) {
      inputs[i].addEventListener("change", bewerte);
    }
  }

  function initialisieren(quiz) {
    if (quiz.querySelector("input[type=checkbox]")) {
      lernquiz(quiz);
    } else {
      altquiz(quiz);
    }
  }

  function start() {
    var quizzes = document.querySelectorAll(".quiz");
    for (var i = 0; i < quizzes.length; i++) { initialisieren(quizzes[i]); }
  }

  // Wird über assets/loader.js asynchron injiziert — dann ist DOMContentLoaded
  // oft schon vorbei. Deshalb sofort starten, wenn das Dokument nicht mehr lädt.
  if (document.readyState === "loading") {
    document.addEventListener("DOMContentLoaded", start);
  } else {
    start();
  }
})();
