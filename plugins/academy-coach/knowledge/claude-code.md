# Claude Code — Academy Knowledge

*Source: https://academy.claude.com/products/code | Curriculum fetched: 2026-08-21*

> Load this file when: teaching or reviewing Claude Code usage. Read the section you need — Curriculum map for links, Teachable knowledge for lessons, Review rubric for audits.

## Curriculum map

**Claude Code 101** — https://academy.claude.com/courses/claude-code-101 — 1h, 12 lessons + quiz + badge
Scope: the on-ramp — what Claude Code is, the agentic loop, and the core daily workflow.
What is/how Claude Code works → Installing (terminal/VS Code/JetBrains/Desktop/web) → Your first prompt (approval mode, auto-accept, Plan Mode) → explore→plan→code→commit → Context management (`/compact`,`/clear`,`/context`) → Code review → CLAUDE.md → Subagents / Skills / MCP / Hooks (overview each) → Quiz.

**Claude Code in Action** — https://academy.claude.com/courses/claude-code-in-action — 1h, 9 lessons + quiz
Scope: moving from single supervised prompts to long, less-supervised, team-wide workflows.
Steering long sessions (Plan Mode scoping, directed compaction, rewind menu) → A CLAUDE.md that follows → Verification skills → Permission modes → Hooks (enforce rules, gate on test results) → Routines and headless → GitHub Actions and Code Review → Trust it: verifying unsupervised runs → Plugins.

**Introduction to Agent Skills** — https://academy.claude.com/courses/introduction-to-agent-skills — 1h, 6 lessons
Scope: authoring reusable SKILL.md instruction sets instead of repeating guidance.
What are skills? → Creating your first skill (frontmatter, load verification) → Configuration and multi-file skills (`allowed-tools`, progressive disclosure, reference files/scripts) → Skills vs. CLAUDE.md/subagents/hooks/MCP → Sharing skills (repos, plugins, managed settings) → Troubleshooting skills.

**Introduction to Subagents** — https://academy.claude.com/courses/introduction-to-subagents — 45min, 4 lessons
Scope: delegating isolated work to context-isolated subagents.
What are subagents? → Creating a subagent (`/agents`) → Designing effective subagents (output format, error handling) → Using subagents effectively (delegate vs. inline).

**Introduction to Model Context Protocol** — https://academy.claude.com/courses/introduction-to-model-context-protocol — 1h, 10 lessons + quiz (dual-tagged with Claude Platform)
Scope: MCP architecture and connecting external tools/data to Claude Code — servers/clients/hosts, resources/tools/prompts primitives, security considerations. Lesson-level detail not re-fetched this pass.

**Model Context Protocol: Advanced Topics** — https://academy.claude.com/courses/model-context-protocol-advanced-topics — 1.5h, 11 lessons + quiz (dual-tagged)
Scope: building/deploying production MCP servers — advanced server design, auth, remote deployment, debugging. Lesson-level detail not re-fetched this pass.

**Tutorials**: shorter items off the product hub, e.g. "Your first day" (install to first shipped change) and "Giving Claude context" (CLAUDE.md + prompting as setup). Hub advertises 11 tutorials total; the rest sit behind client-side filtering this pass couldn't execute.

## Teachable knowledge

**Unit 1: The core loop (beginner)**
- Claude Code is an agentic coding tool in the terminal/IDE, not a chat assistant — it reads, edits, runs, and reasons across turns via an agentic loop bounded by tool permissions.
- Default rhythm: explore → plan → code → commit — understand the codebase, produce a plan (often Plan Mode), make the change, commit.
- Approval mode, auto-accept, and Plan Mode are different oversight levels; pick deliberately per task instead of leaving the default.
- Installs across terminal, VS Code, JetBrains, Claude Desktop, web — same agent, different surface.
HANDS-ON: Run one small real task three ways — auto-accept, manual approval, Plan Mode — and compare what got reviewed before landing.
Quiz: Q: The four workflow stages? A: explore, plan, code, commit. Q: What does Plan Mode buy over auto-accept? A: A reviewable plan and a chance to course-correct before any file changes.

**Unit 2: Project memory and context (beginner–intermediate)**
- CLAUDE.md is the highest-leverage setup step: repo-root, persistent, project-specific conventions read every session.
- A CLAUDE.md "that follows" is lean and specific — vague/bloated instructions get ignored; repeated procedures belong in a skill, not a growing file.
- Manage context actively: `/context` to inspect allocation, `/clear` between unrelated tasks, `/compact` to shrink a long session instead of letting it balloon.
- Add "don't repeat this mistake" entries when Claude gets something wrong, so the fix persists.
HANDS-ON: Inspect the repo's CLAUDE.md (or note its absence), run `/context` mid-session, propose one addition based on a mistake Claude just made.
Quiz: Q: Command to see context allocation? A: `/context`. Q: Why keep CLAUDE.md lean? A: Bloated/vague instructions are followed less reliably; move repeated procedures into skills.

**Unit 3: Extending Claude Code (intermediate)**
- Skills (SKILL.md) package reusable instructions with frontmatter and optional `allowed-tools` scoping; use progressive disclosure/reference files for larger ones.
- Match the mechanism to the need: CLAUDE.md for always-on context, a skill for a repeatable procedure, a subagent for isolated/parallel delegated work, a hook for a deterministic guarantee, MCP for external tool/data access.
- Subagents (`/agents`) keep the main thread's context clean; design them with structured output and explicit error handling.
- MCP connects external tools/data via servers/clients/hosts; always weigh a server's permission scope before connecting it.
HANDS-ON: Write a minimal SKILL.md for one procedure this project repeats often, then verify it loads and triggers.
Quiz: Q: Subagent vs. skill? A: A subagent has its own isolated context window for delegated/parallel work; a skill is inline reusable instructions. Q: Where do MCP security considerations matter most? A: Granting a server's access scope — review what it can read/write before connecting.

**Unit 4: Guardrails and unsupervised runs (advanced)**
- Hooks are event-driven, deterministic guardrails (pre/post tool-use) enforcing policy or gating turns on real test results — more reliable than prompting alone.
- Steering long sessions means mid-run correction, up-front scoping via Plan Mode, and choosing hands-on vs. autonomous per task rather than one prompt and waiting.
- Verify proportionally to oversight level — diff review, tests, summary reads — especially after any unsupervised or headless run.
- Headless mode and routines run Claude non-interactively for CI-style automation; automation still needs review, not blind trust.
HANDS-ON: Configure one hook (block a command, or run tests post-edit) and show it firing; run one task headless and describe how it was verified.
Quiz: Q: Why a hook over a prompted instruction for a non-negotiable rule? A: Hooks are deterministic and always fire; prompts can be missed or drift. Q: What follows any headless run before trusting output? A: An explicit verification step.

**Unit 5: Team scale — CI and plugins (advanced)**
- Wire Claude Code into GitHub Actions for automated PR review, not just local per-developer runs.
- Package a trusted setup (skills + subagents + hooks + CLAUDE.md conventions) as a plugin so a team installs one thing.
- Weigh model choice and usage/cost limits when scaling into automation.
HANDS-ON: Draft a plugin manifest bundling this project's skills/hooks; outline a GitHub Action PR-review step (trigger, permissions, verification gate).
Quiz: Q: Benefit of a plugin over per-repo CLAUDE.md copies? A: One shared, versioned distribution instead of manual duplication and drift. Q: A cost factor before automating in CI? A: Model selection and usage limits at automation volume.

## Review rubric

**Foundations**
- [ ] **explore→plan→code→commit** — explicit planning/Plan Mode before edits? | Evidence: plan step precedes changes | Academy lesson: claude-code-101 (L5)
- [ ] **Deliberate permission mode** — mode chosen per task risk, not default? | Evidence: mode varies by task | Academy lesson: claude-code-in-action (L4)

**Project memory**
- [ ] **CLAUDE.md used/maintained** — read, referenced, or updated with a new convention? | Evidence: file present and touched in session | Academy lesson: claude-code-101 (L8); claude-code-in-action (L2)
- [ ] **Active context management** — `/context`/`/clear`/`/compact` used at task boundaries? | Evidence: commands appear between unrelated tasks | Academy lesson: claude-code-101 (L6)

**Extension mechanisms**
- [ ] **Skills used appropriately** — SKILL.md invoked/authored instead of re-explaining guidance? | Evidence: SKILL.md exists and triggers | Academy lesson: introduction-to-agent-skills
- [ ] **Subagents for isolated work** — created/invoked via `/agents` with defined output format? | Evidence: subagent definitions or structured delegation | Academy lesson: introduction-to-subagents
- [ ] **Hooks enforce guarantees** — configured for non-negotiable rules, not only prompted? | Evidence: hook config present and fired | Academy lesson: claude-code-in-action (L5)
- [ ] **MCP scoped deliberately** — server permissions considered before connecting? | Evidence: explicit scope in MCP config or discussion | Academy lesson: introduction-to-model-context-protocol

**Autonomy and verification**
- [ ] **Mid-session steering** — user course-corrects long/autonomous runs rather than one prompt + wait? | Evidence: redirections or rewind-menu use | Academy lesson: claude-code-in-action (L1)
- [ ] **Verification before trust** — explicit check (tests/diff/summary) before trusting output, esp. after headless runs? | Evidence: test run or diff review logged | Academy lesson: claude-code-in-action (L8)
- [ ] **Automation reviewed** — headless/routines/Actions reviewed, not left unchecked? | Evidence: review step tied to the pipeline | Academy lesson: claude-code-in-action (L6–7)

**Team scale**
- [ ] **Plugins for shared config** — team config distributed via plugin vs. duplicated per repo? | Evidence: plugin manifest bundling skills/agents/hooks | Academy lesson: claude-code-in-action (L9)
- [ ] **Cost/limit awareness** — model/usage/cost limits considered when scoping runs? | Evidence: explicit model selection tied to cost/limits | Academy lesson: products/code ("Models, usage, and limits")

## Sources
- https://academy.claude.com/products/code
- https://academy.claude.com/courses/claude-code-101
- https://academy.claude.com/courses/claude-code-in-action
- https://academy.claude.com/courses/introduction-to-agent-skills
- https://academy.claude.com/courses/introduction-to-subagents
- https://academy.claude.com/courses/introduction-to-model-context-protocol
- https://academy.claude.com/courses/model-context-protocol-advanced-topics
