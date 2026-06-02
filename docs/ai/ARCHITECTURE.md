# Architecture

Living structural map of the system as of 2026-06-02.
Overwritten when structural changes occur during a session.

## Overview

GRG-PMN is a teaching repository for the subject Projektmanagement und Netzwerktechnik at HTL Spengergasse. It holds legal curriculum documents, teaching materials, and class-specific lesson folders following ISO 8601 date conventions.

## Directory Layout

| Path | Purpose |
|------|---------|
| `docs/lehrplan/` | Legal curriculum PDFs from RIS (BGBl. II Nr. 262/2015) and METADATA.md |
| `docs/ai/` | Structured knowledge files for AI agent persistence |
| `Unterlagen/` | Teaching reference materials and scripts |
| `4AHWIT/` | 4th year class — lesson folders (`YYYY-MM-DD_thema`) |
| `5AHWIT/` | 5th year class — lesson folders (`YYYY-MM-DD_thema`) |

## Knowledge Files (`docs/ai/`)

| File | Purpose | Update mode |
|------|---------|------------|
| HANDOFF.md | Open tasks for next session | Overwrite |
| DECISIONS.md | Chronological record of choices | Append |
| ARCHITECTURE.md | Living structural map | Overwrite |
| CONVENTIONS.md | Ongoing rules to follow | Append |
| PITFALLS.md | Hard-won failure knowledge | Append |
| DOMAIN.md | Business/domain rules | Append |
| STATE.md | Current project status | Overwrite |

## Top-Level Files

| File | Purpose |
|------|---------|
| `README.md` | Public project overview, directory table, RIS references |
| `AGENTS.md` | AI agent guidelines, issue workflow, knowledge persistence |
