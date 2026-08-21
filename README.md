# Academy Coach — learn Claude Code hands-on and get your setup reviewed

**Academy Coach is a free, open-source Claude Code plugin that teaches you Anthropic products from the official [Claude Academy](https://academy.claude.com) curriculum and reviews how you actually work with Claude Code against Anthropic's best practices.** It adds two skills to Claude Code: `academy-learn`, an interactive tutor that runs Academy lessons inside your real repository, and `academy-review`, a coach that audits your session and setup and tells you what to improve.

MIT licensed. No signup, no telemetry, nothing leaves your machine.

[Install](#install) · [What each skill does](#what-each-skill-does) · [How it works](#how-it-works) · [FAQ](#frequently-asked-questions)

**Use Academy Coach when:**
- You are learning Claude Code (or Claude.ai, Cowork, Tag, the Claude API, or MCP) and want lessons with exercises in your own project instead of reading course pages
- You want to know whether your Claude Code setup — CLAUDE.md, plan mode, hooks, permission modes — actually follows Anthropic's best practices
- You are onboarding a team to Claude Code and need a repeatable curriculum plus a workflow review for each developer
- You finished a Claude.ai or Cowork session and want feedback on how you could have worked better

## What each skill does

### `academy-learn` — an interactive Claude Code tutor

Teaches the Claude Academy curriculum one unit at a time, hands-on:

- Covers all six Academy tracks: **Claude Code, Claude.ai, Claude Cowork, Claude Tag (Slack), the Claude API / Platform / MCP, and AI Fluency**
- Exercises run in **your actual project** — learning CLAUDE.md means improving *your* CLAUDE.md, learning subagents means dispatching one on *your* code
- Conversational quizzes after each unit, wrong answers explained
- Every unit links the real Academy course it came from
- Progress persists between sessions ("continue my academy lesson" resumes where you left off)

### `academy-review` — a Claude Code best-practices coach

Audits how you work with Claude Code and returns ranked, teachable findings:

- Checks **CLAUDE.md quality, plan-mode use, context hygiene, subagent/hook/skill usage, permission modes, and verification habits**
- Scores against Anthropic's **AI Fluency 4D framework** (Delegation, Description, Discernment, Diligence)
- Evidence-based: reports only what it actually observed, never guessed
- Top 3–5 findings ranked by impact, each linked to the Academy lesson that teaches the fix
- Also reviews pasted Claude.ai / Cowork / Tag transcripts against those products' best practices

## Install

```
/plugin marketplace add MrMarudi/academy-coach
/plugin install academy-coach@academy-coach-marketplace
```

Then say **"teach me Claude Code"** or **"review my session"**. If skills don't auto-trigger (see FAQ), invoke explicitly: *"use the academy-learn skill"*.

## How it works

Each skill is a `SKILL.md` instruction set plus distilled knowledge files: per-track curriculum summaries with teachable units, exercises, quizzes, and review rubrics, all sourced from academy.claude.com, plus a **297-item index of every Academy course, tutorial, and use case** generated from Anthropic's live catalog JSON — so links point at real, current courses instead of stale summaries.

The skills were hardened through a self-improvement loop: fresh headless Claude Code sessions ran realistic scenarios, independent judge agents graded the transcripts against strict rubrics, and every failure became a skill fix — 13 versions until the full suite passed. Real defects that loop caught: the tutor lecturing four features in one message, offering to do the exercise itself instead of assigning it, and rating "habits" from config files instead of observed behavior.

## Frequently asked questions

### How is this different from Anthropic's official academy-guide skill?

Anthropic's `academy-guide` skill recommends Academy course links after answering questions, while Academy Coach teaches the content and reviews your workflow. `academy-learn` runs lessons, exercises, and quizzes in your repo; `academy-review` returns ranked findings with evidence. They compose well: academy-guide is the index, Academy Coach is the class plus the report card.

### Does it send my code or data anywhere?

Academy Coach sends nothing anywhere: it is local skill files — markdown instructions that run inside your own Claude Code session. No telemetry, no server, no account.

### What can I learn with it?

The full Claude Academy curriculum: Claude Code workflows (explore→plan→code→commit, CLAUDE.md, subagents, skills, hooks, MCP, headless mode), the Claude API and Platform (tool use, RAG, prompt evaluation, MCP servers), Claude.ai (Projects, Artifacts, Connectors), Claude Cowork, Claude Tag, and the AI Fluency framework.

### Why don't the skills trigger automatically sometimes?

A known Claude Code bug ([#57515](https://github.com/anthropics/claude-code/issues/57515), [#68677](https://github.com/anthropics/claude-code/issues/68677)) intermittently drops plugin skill descriptions from the session context, more likely the more plugins you have. Explicit invocation always works: *"use the academy-learn skill: teach me Claude Code"*.

### Is it affiliated with Anthropic?

Academy Coach is an independent open-source project, not affiliated with Anthropic. Claude, Claude Code, and Claude Academy are Anthropic products; the knowledge files are distilled summaries that link to and cite academy.claude.com rather than copying it.

## Repository structure

```
plugins/academy-coach/
├── skills/
│   ├── academy-learn/SKILL.md    ← the tutor
│   └── academy-review/SKILL.md   ← the coach
└── knowledge/                    ← distilled curriculum, one file per track
    ├── claude-code.md  platform.md  claude-ai.md
    ├── cowork.md  tag.md  ai-fluency.md
    └── catalog-index.md          ← all 297 Academy items with links
```

## License

MIT. See [LICENSE](LICENSE). Curriculum content belongs to Anthropic PBC; this project links and cites, not copies.

Maintained by [Marudi (MrMarudi)](https://github.com/MrMarudi).

---

*Current version: 0.1.13 (August 2026). Curriculum snapshot: 2026-08-21, refreshed from the live Academy catalog at academy.claude.com.*
