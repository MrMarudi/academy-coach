# Academy Coach

A Claude Code plugin that turns Anthropic's [Claude Academy](https://academy.claude.com) curriculum into two working skills:

- **`learn`** — teaches any Anthropic product (Claude Code, Claude.ai, Cowork, Tag, Platform/API, AI Fluency) hands-on in your real environment, unit by unit, with quizzes. Not a link recommender: it runs the lessons.
- **`review`** — audits your current Claude Code session and project against the Academy's best-practice rubric (CLAUDE.md quality, plan mode, context hygiene, subagents, permission modes, verification habits) plus the AI Fluency 4D framework, and gives you ranked improvements with the Academy lesson that teaches each one.

## How it differs from Anthropic's official `academy-guide` skill

Anthropic's skill recommends course links after answers. Academy Coach teaches the content and reviews how you actually work. They compose: after a review finds a gap, the matching Academy course link is included.

## Structure

```
academy-coach/
├── .claude-plugin/plugin.json
├── skills/
│   ├── learn/SKILL.md
│   └── review/SKILL.md
└── knowledge/            ← distilled curriculum, one file per track
    ├── claude-code.md
    ├── platform.md
    ├── claude-ai.md
    ├── cowork.md
    ├── tag.md
    └── ai-fluency.md     ← 4D framework, the universal review rubric
```

Knowledge files are distilled paraphrase with citations, sourced from academy.claude.com (fetched 2026-08-21). Live catalog freshness comes from `https://academy.claude.com/assets/data/catalog.json`.

## Install

From Claude Code:

```
/plugin marketplace add MrMarudi/academy-coach
/plugin install academy-coach@academy-coach-marketplace
```

Then say **"teach me Claude Code"** or **"review my session"**.

Local alternative: clone the repo and add it as a local plugin, or copy `skills/` + `knowledge/` into `~/.claude/skills/`.

## License

MIT. Knowledge files are distilled summaries of and link to [Claude Academy](https://academy.claude.com) content (© Anthropic PBC); this project is not affiliated with Anthropic.
