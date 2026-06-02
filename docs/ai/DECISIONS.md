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

## 2026-06-02: School PDF Restored Alongside RIS PDF
- **Choice**: The school's original PDF (`Lehrplan_TechnischesManagement.pdf`) is kept alongside the RIS-signed PDF in `docs/lehrplan/`
- **Reason**: Both are byte-identical (383.232 bytes, CreationDate 17.09.2015), but provenance matters — the school PDF is the document the school uses, the RIS PDF is the legal reference. Keeping both ensures traceability.

## 2026-06-02: Language Policy
- **Choice**: German for teaching materials and commit messages; English for AGENTS.md and technical docs
- **Reason**: Matches the established conventions in GRG-WMC and GRG-INFI repositories.
