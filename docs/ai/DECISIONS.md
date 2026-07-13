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
