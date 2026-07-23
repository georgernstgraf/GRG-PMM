# Decisions

Architectural and technical decisions made in this project.
Each entry documents WHAT was decided and WHY.

## 2026-06-02: ISO 8601 Prefix for Legal Documents
- **Choice**: Legal PDFs are named `YYYY-MM-DD_BGBl-II-NNN_Anlage-…pdf`
- **Reason**: Enables chronological sorting and immediate identification of publication date; matches the `YYYY-MM-DD_thema/` convention used in class lesson folders.

## 2026-06-02: Separate Legal Framework Folder
- **Choice**: Legal documents live in `docs/lehrplan/`, instructional materials in `Unterlagen/`
- **Reason**: Clear separation between binding legal texts and teacher-created content; follows GRG-WMC/GRG-INFI pattern of `docs/` for central documents.

## 2026-06-02: Download Anlage 1 (Allgemeiner Teil)
- **Choice**: The general part (Anlage 1) was downloaded from RIS alongside Anlage 1.28
- **Reason**: Anlage 1.28 references Anlage 1 repeatedly (general subjects, didactics, school autonomy rules). Both are required for a complete legal basis.

## 2026-06-02: Duplicate PDFs Consolidated
- **Choice**: The byte-identical RIS PDF was removed; only the school-named PDF (`2015-09-17_Lehrplan_TechnischesManagement.pdf`) is kept
- **Reason**: Both PDFs had identical content (383.232 bytes, CreationDate 17.09.2015). Keeping one avoids confusion and unnecessary duplication. The date prefix preserves chronological context.

## 2026-06-02: Date Prefix Consistent for All Legal PDFs
- **Choice**: School PDF uses `2015-09-17_` prefix to match the Anlage 1 PDF naming convention
- **Reason**: Enables chronological sorting and consistent naming across `docs/lehrplan/`.

## 2026-06-02: School Website Stundentafel as Reference
- **Choice**: The Stundentafel published on spengergasse.at is documented in METADATA.md alongside the RIS version
- **Reason**: The school has exercised school-autonomous adaptations (shifted hours from Anlagen-/Prüftechnik to Umwelttechnologie). Both versions must be understood when planning lessons.

## 2026-06-02: Time Model for PMN Planning
- **Choice**: Lesson plans target 15 double-periods (Doppelstunden) per semester
- **Reason**: 18-20 theoretical double-periods minus admin/exam overhead yields ~15 net. All semester plans must accommodate this cadence.

## 2026-06-02: Language Policy
- **Choice**: German for teaching materials and commit messages; English for AGENTS.md and technical docs
- **Reason**: Matches the established conventions in GRG-WMC and GRG-INFI repositories.

## 2026-07: Semester Plans Corrected to 15 Double-Periods

- **Choice**: All four semester plans rewritten from 30→15 Doppelstunden each.
- **Reason**: The 2026-06-02 time-model decision correctly stated 15 DS/semester, but three of four plans erroneously listed 30 DS (4 h/Woche). KM9b was already correct. Corrected to match reality: 1 Doppelstunde/week per class.

## 2026-07: Self-Study Curriculum Compressed to 15 Teaching Units

- **Choice**: KM7 selbststudium lessons consolidated from 30→15 Unterrichtseinheiten (UE), each binding ~2 old topics; depth kept.
- **Reason**: Consistency between self-study learning and actual 15-Doppelstunden teaching budget. Each UE maps 1:1 to one Doppelstunde.

## 2026-07: Three Artifacts Per Teaching Unit

- **Choice**: Each UE produces (1) a Lern-Lektion for Georg (teach skill, Meisterschaft+Didaktik), (2) a Schueler-Praesentation (reveal.js via CDN), and (3) a Hausaufgabe (markdown).
- **Reason**: Georg learns and prepares-to-teach simultaneously. Students clone the repo and get slides+homework in-browser, always online (CDN for reveal.js).

## 2026-07: Prep-Numbered Folder Convention (NN-slug)

- **Choice**: Before teaching dates are fixed, class materials live in `NN-slug/` folders (e.g., `01-r-grundlagen-datenstrukturen/`). Renamed to `YYYY-MM-DD_slug/` when the actual teaching date is known.
- **Reason**: Curriculum preparation happens before semester scheduling. NN-slug preserves ordering and enables date assignment later without folder restructuring. Documented in AGENTS.md and 4AHWIT/README.md.

## 2026-07-13: Statistics Starts in JG3 (KM5), Not JG4

- **Finding**: The PMM curriculum has three distinct phases. JG1+JG2 (KM3+KM4) are purely process/quality management — no statistics, no R. **Statistics begins in JG3 (KM5+KM6)** with "Statistische Methoden" (probability distributions, parameters/estimators, confidence intervals, lifetime distributions). JG4+JG5 continue with tests, sampling, SPC, DoE, reliability.
- **Implication**: When Georg takes over 4AHWIT (JG4, KM7), the students should already have KM5+KM6 statistics from JG3. An entry test at the start of the school year is needed to assess what the previous teacher covered. If JG3 coverage is weak, KM7 must compensate.
- **Action**: PMM curriculum extracted to `docs/lehrplan/pmm-lehrplan-text.md` for reference.

## 2026-07-13: PMM Curriculum Text Extracted to Markdown

- **Choice**: The PMM-relevant section (Abschnitt 5) of the legal curriculum PDF was extracted to `docs/lehrplan/pmm-lehrplan-text.md`.
- **Reason**: The PDF is not machine-searchable in this workflow. A Markdown extract enables quick reference and grep across all 5 Jahrgänge without running pdftotext each time. Only the PMM section was extracted (not the full 33-page document) to keep it focused.

## 2026-07-18: R4DS as Main Material for the R Toolchain (#6)

- **Choice**: "R for Data Science" (2e) becomes the primary teaching material where the curriculum allows — concretely KM7 UE 1–3 (R toolchain) and KM6 "Prüfergebnisse darstellen" (Kap. 11, 28–29). Coverage analysis: `docs/lehrplan/r4ds-abdeckung.md`.
- **Reason**: Georg values the book's tone and didactics; analysis shows R4DS covers ~100 % of the toolchain strand but 0 % of the industrial-statistics core. Gap is closed by Navarro LSR (CC BY-SA, KM5/KM7 tests), ModernDive (CC BY-NC-SA, KM6 inference), NIST e-Handbook (US-gov, KM8/KM9: SPC, capability, MSA, DoE, reliability, acceptance sampling), package vignettes, and own materials for ISO/OENORM specifics.
- **Tradeoff**: R4DS is CC BY-NC-ND 3.0 — own materials must be original German text adopting the didactic pattern only ("link, don't copy"); no translated passages.

## 2026-07-18: UE 1–3 Aligned to Book Order, English Reading Assigned (#6)

- **Choice**: UE 1–3 will be restructured along R4DS "whole game" order (visualization with ggplot2 before formal syntax/data structures). Students read the English original chapters (no German chapter bridges).
- **Reason**: Maximizes coherence with the assigned book; English reading serves the curriculum's Business-English target (B1+ end of JG4, B2 end of JG5).
- **Consequence**: Existing UE 1–2 (slides + homework) get a full retrofit in Phase 3 of issue #6; semester plan rows UE 1–3 will be updated; NN-slug folders may be renamed (no dates fixed yet).

## 2026-07-18: Optional Long-Term German Community Translation (Phase 6, #6)

- **Choice**: Pursue an LLM-assisted German translation of R4DS 2e with Georg as human reviewer, via the official community-translation channel: revive hadley/r4ds#1414 (German request, unanswered since 2023-04), wait for Hadley/O'Reilly permission (precedent: #955 Portuguese, ES/PT/VI listings), then translate chapter-wise in a public fork with automated QA (anchor/code diffs, quarto render) and per-chapter review PRs.
- **Reason**: Solves the ND constraint legitimately instead of circumventing it; machine support makes a solo-plus-reviewer effort feasible (~1 chapter per 1–2 weeks).
- **Tradeoff**: Permission latency/denial risk (Hadley never answered #1414); pre-permission work limited to one private sample chapter (private creation of an adaptation is not distribution). Not needed for Sept 2026 — students read English regardless.

## 2026-07-23: Phase 6 (DE-Community-Übersetzung) Abgebrochen (#6)

- **Auslöser:** Hadley antwortete auf [#1414](https://github.com/hadley/r4ds/issues/1414#issuecomment-5045752767): O'Reilly hat bereits einen Übersetzungsvertrag mit einem deutschen Verlag abgeschlossen → keine Community-Freigabe möglich.
- **Konsequenz:** Phase 6 von Issue #6 ist endgültig gestrichen. Thread am 23.07. freundlich geschlossen (Dank + Hinweis auf englisches Original).
- **Unverändert:** R4DS 2e bleibt Hauptmaterial (online englisch). Eigene deutsche Unterrichtsmaterialien (Originaltext, "link, don't copy") sind weiterhin erlaubt.
- **Zu beobachten:** Offizielle kommerzielle DE-Ausgabe von O'Reillys deutschem Verlag — falls sie erscheint, optionale Print-Ergänzung.
