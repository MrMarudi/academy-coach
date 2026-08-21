---
# Claude.ai — Academy Knowledge
Source: https://academy.claude.com/products/claude | Curriculum fetched: 2026-08-21
---

> Load this file when: teaching or reviewing Claude.ai usage. Read the section you need — Curriculum map for links, Teachable knowledge for lessons, Review rubric for audits.

## Curriculum map

**Claude 101** — https://academy.claude.com/courses/claude-101 — 2.5 hr, text/lesson course with 1 quiz — the core onboarding course for any Claude.ai user, from first conversation through org-wide features.
- Meet Claude: what Claude is, your first conversation, getting better results, working with Claude on desktop
- Organizing your work: intro to Projects, creating with Artifacts, working with Skills
- Expanding Claude's reach: connecting tools (Connectors), Enterprise Search, Research for deep dives
- Putting it together: use cases by role, other ways to work with Claude, what's next
- Note: Enterprise Search and some later lessons assume a paid Team/Enterprise plan.

**Getting started with Claude.ai** (tutorial) — https://academy.claude.com/tutorials/getting-started-with-claude-ai — 5 min video — quick onboarding tour: effective prompting, document uploads, search, customization, extended thinking, research mode.

**Intro to Projects** (tutorial) — https://academy.claude.com/tutorials/intro-to-projects — 7 min video — how Projects group related conversations, files, and instructions for a recurring workflow instead of scattered one-off chats.

**Analyze patterns in user feedback** (use case) — https://academy.claude.com/use-cases/analyze-patterns-in-user-feedback — 15 min walkthrough — a full task pattern: brief Claude on the analysis goal and sources, give it context (connectors, uploads, extended thinking), review what it produces, refine with follow-ups, then turn the workflow into a reusable Skill.

**Admin setup for organizational rollout** (reference, not a course) — https://academy.claude.com/products/claude/setup — 4-phase rollout guide: technical setup, launch, enablement, scaling adoption; covers SSO/SCIM, access control, audit logs, usage analytics, and connector/search integration for IT admins driving enterprise deployment.

**Additional tutorials and use cases** — https://academy.claude.com/products/claude/tutorials and /use-cases — roughly 64 tutorials and 70 use cases site-wide (JS-paginated, not fully enumerable). Sampled titles: model-selection guidance (Haiku/Sonnet/Opus/Fable), enterprise admin guide, industry overviews (financial services, nonprofits), role-based use cases (Marketing, Education, Sales, Product).

Note: courses under `/all?kind=course&product=chat` (AI Fluency series, Building with the Claude API) look like the general catalog rather than Claude.ai-exclusive content, so they are excluded above.

## Teachable knowledge

**Unit 1: The core conversation loop**
- A first message is a starting point, not a final answer — iterate rather than accepting the first response.
- "Getting better results" means adding specifics, constraints, and examples, and asking Claude to critique or revise its own output.
- Desktop and web share the same conversational model.
- HANDS-ON EXERCISE: Take a vague one-line request, send it, then refine through two rounds (add context, request a format, ask for self-critique) and compare to the first draft.
- Quiz: Q: Recommended response to a mediocre first answer? A: Iterate with more context/constraints, don't stop there. Q: One thing beyond the text prompt that improves results? A: Uploading a relevant file for context.

**Unit 2: Organizing work — Projects, Artifacts, Skills**
- Projects group related conversations, files, and instructions so a recurring workflow isn't rebuilt each session.
- Artifacts pull substantial outputs (documents, code, visualizations) out of chat text for iteration and reuse.
- Skills package a repeated multi-step workflow into a saved, invocable capability.
- Progression: informal chat -> Project (once it recurs) -> Artifact (once output matters) -> Skill (once the workflow repeats).
- HANDS-ON EXERCISE: Find a task asked of Claude more than twice in raw chat; set it up as a Project with the right files/instructions, then draft a Skill for the reusable version.
- Quiz: Q: When should a chat become a Project? A: When context/files/instructions get reused across sessions. Q: What distinguishes an Artifact from a chat reply? A: It's a standalone, iterable output, not inline text.

**Unit 3: Extending Claude's reach — Connectors, Enterprise Search, Research**
- Connectors let Claude read live org data (e.g., Intercom) instead of manually pasted, stale exports.
- Enterprise Search queries indexed company knowledge directly (Team/Enterprise only), avoiding re-explaining context each time.
- Research/deep-dive mode suits genuinely multi-step, multi-source investigation, not simple lookups.
- Extended Thinking should be on for tasks needing deeper pattern recognition, off for trivial requests.
- HANDS-ON EXERCISE: Pick a real multi-source question; if a connector is available, enable it and compare a connector-backed answer to a manually-pasted-context one.
- Quiz: Q: Connector vs. Enterprise Search? A: A Connector pulls from one external source; Enterprise Search queries indexed org-wide knowledge. Q: When to enable Extended Thinking? A: For tasks needing deeper reasoning, not routine ones.

**Unit 4: The applied use-case pattern**
- Repeatable structure: Describe the Task -> Give Context (connectors/uploads/extended thinking) -> review What Claude Creates -> Follow-up Prompts to refine -> convert into a Skill.
- Match model (Haiku/Sonnet/Opus/Fable) to task complexity, speed, and cost rather than defaulting to the largest model.
- Qualitative synthesis (e.g., feedback themes) needs bias awareness: cross-check against quantitative data and watch for echo-chamber effects.
- HANDS-ON EXERCISE: Run the five-step pattern on a real dataset, naming which model was chosen and why, and cross-checking output against any quantitative signal available.
- Quiz: Q: The five steps of the use-case pattern? A: Describe Task, Give Context, Review Output, Follow-up/Refine, Convert to Skill. Q: Why cross-check qualitative synthesis? A: To catch echo-chamber or sampling bias.

**Unit 5: Organizational rollout and governance (admin track)**
- Enterprise rollout has four phases: technical setup, launch, enablement, scaling adoption.
- Departmental "champions" drive grassroots adoption better than top-down mandates.
- Governance basics before deployment: SSO/SCIM, IP allowlisting, session security, data retention, audit logging.
- Ongoing oversight needs usage analytics and billing visibility, not just initial setup.
- HANDS-ON EXERCISE: Draft a one-page rollout plan mapping the 4 phases to owners plus a governance checklist (SSO, access control, audit logs).
- Quiz: Q: The four rollout phases? A: Technical setup, launch, enablement, scaling adoption. Q: Two governance controls before wide deployment? A: Any two of SSO/SCIM, IP allowlisting, audit logging, data retention.

## Review rubric

**Conversation quality**
- [ ] **Iterative prompting** — Did the session refine a prompt rather than stop at the first response? | Evidence: multiple follow-up messages narrowing or correcting the same task | Academy lesson: https://academy.claude.com/courses/claude-101 (Getting better results)
- [ ] **Appropriate model choice** — Was the model (Haiku/Sonnet/Opus/Fable) matched to task complexity? | Evidence: simple task on a fast/cheap model, complex task on a stronger model | Academy lesson: https://academy.claude.com/products/claude/tutorials (Choosing the right Claude model)
- [ ] **Extended Thinking used when warranted** — Was extended thinking enabled for tasks needing deep reasoning, and left off otherwise? | Evidence: thinking toggle state matches task complexity in session settings | Academy lesson: https://academy.claude.com/courses/claude-101 (Meet Claude)

**Organization**
- [ ] **Projects for recurring work** — Was a Project used to group a multi-session or multi-file workflow? | Evidence: conversation lives inside a named Project with attached files/instructions rather than a standalone chat | Academy lesson: https://academy.claude.com/courses/claude-101 (Intro to projects) / https://academy.claude.com/tutorials/intro-to-projects
- [ ] **Artifacts for substantial output** — Were documents, code, or visualizations produced as Artifacts rather than left inline in chat? | Evidence: presence of Artifact objects for any output meant to be reused or shared | Academy lesson: https://academy.claude.com/courses/claude-101 (Creating with artifacts)
- [ ] **Skills for repeated workflows** — Was a workflow used more than once captured as a saved Skill? | Evidence: a Skill definition exists matching a task repeated across sessions | Academy lesson: https://academy.claude.com/courses/claude-101 (Working with skills)

**Context and data**
- [ ] **Connectors over manual paste** — Were available Connectors (Intercom, other tools) enabled instead of manually pasting stale exports? | Evidence: connector enabled in session vs. large pasted data blocks | Academy lesson: https://academy.claude.com/use-cases/analyze-patterns-in-user-feedback
- [ ] **Enterprise Search when relevant** — Was Enterprise Search used to pull indexed org knowledge instead of re-explaining company context each time? | Evidence: search/citation of indexed org sources in the response | Academy lesson: https://academy.claude.com/courses/claude-101 (Enterprise search)
- [ ] **Research mode for real investigations** — Was Research/deep-dive mode invoked only for genuinely multi-step, multi-source tasks? | Evidence: research mode used on a multi-source question, not a simple lookup | Academy lesson: https://academy.claude.com/courses/claude-101 (Research for deep dives)

**Applied workflow discipline**
- [ ] **Task-context-output-refine loop** — Did the session follow Describe Task -> Give Context -> Review Output -> Follow-up Refine rather than a single unrefined shot? | Evidence: at least one context-setting turn and one refinement turn around the core ask | Academy lesson: https://academy.claude.com/use-cases/analyze-patterns-in-user-feedback
- [ ] **Bias-checking qualitative synthesis** — Was AI-produced qualitative analysis cross-checked against quantitative data or checked for sampling/echo-chamber bias? | Evidence: explicit mention or verification step comparing qualitative themes to quantitative metrics | Academy lesson: https://academy.claude.com/use-cases/analyze-patterns-in-user-feedback (Tips & Troubleshooting)

**Admin/governance (when applicable)**
- [ ] **Phased rollout planning** — For org rollout sessions, was a phased approach (setup, launch, enablement, scaling) followed instead of a single flat rollout? | Evidence: rollout plan or discussion references distinct phases with owners | Academy lesson: https://academy.claude.com/products/claude/setup
- [ ] **Governance considered before deployment** — Were SSO/SCIM, access control, audit logging, or data retention addressed before broad rollout? | Evidence: mention/configuration of at least one governance control prior to org-wide launch | Academy lesson: https://academy.claude.com/products/claude/setup

## Sources
- https://academy.claude.com/products/claude
- https://academy.claude.com/courses/claude-101
- https://academy.claude.com/tutorials/getting-started-with-claude-ai
- https://academy.claude.com/tutorials/intro-to-projects
- https://academy.claude.com/use-cases/analyze-patterns-in-user-feedback
- https://academy.claude.com/products/claude/setup
- https://academy.claude.com/products/claude/tutorials
- https://academy.claude.com/products/claude/use-cases
- https://academy.claude.com/all?kind=course&product=chat
