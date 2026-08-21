# Claude Tag — Academy Knowledge

*Source: https://academy.claude.com/products/tag | Curriculum fetched: 2026-08-21*

> Load this file when: teaching or reviewing Claude Tag usage. Read the section you need — Curriculum map for links, Teachable knowledge for lessons, Review rubric for audits.

## Curriculum map

Claude Tag has no dedicated course (no lessons-with-quiz format). The product track consists of two standalone tutorials plus links to claude.com docs, a use-case library, and a webinar.

**Best practices for using Claude Tag** — https://academy.claude.com/tutorials/best-practices-using-claude-tag (10 min, text tutorial, no quiz)
Audience: team leads, PMs, workspace admins rolling Claude Tag out org-wide. Covers channel setup and access, task phrasing, definitions of done, human-vs-agent decision boundaries, channel vs. workspace memory, proactivity (scheduled/watching), and DM-vs-channel security boundaries.
Lessons: What makes this Claude different · Tips while using Claude Tag in your workspace · Working with Claude Tag on a task · Giving Claude Tag more responsibility over time · What makes this possible · If you already use Claude somewhere else · Learn more

**Tasks to try with Claude Tag in your workspace** — https://academy.claude.com/tutorials/tasks-to-try-with-claude-tag-in-your-workspace (9 min, task catalog, no quiz)
Audience: same as above, plus individual contributors. A catalog of concrete task patterns by category.
Lessons (grouped): No-Setup / Channel-Native tasks (catch up on threads, summarize weekly progress, flag unanswered questions) · Turn Discussion into Work (draft docs from threads, spot numerical trends) · Ongoing Automation (flag urgent items, maintain pinned overviews, scheduled recaps) · Connected-Tool tasks by function — Engineering (debug, open PRs, map architecture), Customer/Feedback (prioritize requests, brief for calls), Data/Metrics (query warehouses, build dashboards), Documentation (cited answers, meeting prep), Project Management (spot blockers, track blocking duration)

## Teachable knowledge

**Unit 1: Framing a delegated task**
- State a concrete, verifiable outcome in the first sentence — name the result, not the activity ("post the status and tag me when it's up," not "look at this").
- Match the end condition to who closes it: an objective check the agent can verify, a prepared result needing one human click, a choice for the human to pick, or — if nothing is verifiable — reframe as a question instead.
- The end condition must be observable by the agent; if proof lives in a disconnected system, close the task yourself.
- Spell out every clause of a fuzzy end condition ("babysit until merged" needs approvals AND resolved comments AND your go-ahead), or it resolves on the easiest reading.

HANDS-ON EXERCISE: Take a recently delegated task with vague phrasing and rewrite it with an explicit, observable definition of done; name which closer-type applies.

Quiz: Why is "look into this" a weak prompt? — No verifiable end state; reframe as a question or add a concrete outcome. What's wrong with "babysit until merged" alone? — Ambiguous sub-conditions; the agent may close it on approvals alone while comments stay open.

**Unit 2: Choosing the right working surface**
- Treat the channel/thread as the real workspace, not a place for a polished final draft — a rough draft posted where others can steer beats a private polished one.
- Route private or sensitive material to a DM instead of a shared channel.
- Start a new thread per new task; don't let one thread accumulate unrelated work.
- Steer an in-progress task with a reply, not by editing or deleting an earlier message — edits aren't reliably picked up.

HANDS-ON EXERCISE: Audit a week of real Claude Tag usage and flag any thread mixing unrelated tasks or sensitive content posted to a shared channel.

Quiz: How do you correct Claude Tag mid-task? — Send a new reply in the thread; don't edit the original message.

**Unit 3: Memory, standing knowledge, and consistent output**
- Memory doesn't persist automatically — explicitly ask Claude Tag to "remember" a convention, then verify later what stuck.
- Layer standing knowledge by scope: channel memory for tone, a repo-root config file for project conventions, workspace instructions for rules that outrank memory, and skills for reusable org-wide tool usage.
- For any recurring output, specify the exact format once up front — length per item, status legend, what to omit.

HANDS-ON EXERCISE: Draft a one-paragraph format spec for a recurring status digest, then check an existing recurring report against it for gaps.

Quiz: Where should a project-wide coding convention live? — A repo-root config file, not channel memory or a one-off instruction.

**Unit 4: Guardrails and autonomy calibration**
- Natural-language instructions steer but don't restrict — hard rules (no-touch modules, who can merge) need real enforced controls (branch protection, permissions, required checks), not polite phrasing.
- State explicitly which decisions the agent makes alone vs. what needs human sign-off first.
- Calibrate autonomy incrementally: review closely in a new channel at first, then widen unreviewed scope as output proves reliable.

HANDS-ON EXERCISE: For a task with a "never touch X" rule, identify the real enforced control that would back it up, not just the instruction's wording.

Quiz: Why isn't "please don't touch the auth module" a safe guardrail alone? — It's just context text the agent can forget or override; it needs a real control like restricted write access.

**Unit 5: Deliverables, proof, and reviewing at scale (advanced)**
- Make persisting the deliverable (pushed branch, posted draft, opened PR) an explicit part of the definition of done — ephemeral working state doesn't survive idle periods.
- Attach proof of completion (diff, test output, source link, chart) rather than a bare "done" claim.
- Manage review load: one project per channel, batch reviews into single sittings, and mark finished threads closed so digests skip them.

HANDS-ON EXERCISE: Review three recently "completed" delegated tasks and flag any missing attached proof of completion.

Quiz: What should back a claim that a task is "done"? — Verifiable proof (diff, CI output, PR link), not just the statement.

## Review rubric

**Task framing**
- [ ] **Verifiable definition of done** — checks the prompt names a concrete, observable outcome, not an open-ended ask. | Evidence: first thread message states a checkable end state. | Academy lesson: Best practices for using Claude Tag — "Working with Claude Tag on a task" (https://academy.claude.com/tutorials/best-practices-using-claude-tag)
- [ ] **Explicit constraints on costly actions** — checks high-risk steps got stated constraints instead of relying on inference. | Evidence: task message lists what not to touch or must remain true. | Academy lesson: same tutorial, "What makes this Claude different"

**Guardrails and autonomy**
- [ ] **Real enforced control behind hard rules** — checks a "don't touch X" instruction is backed by an actual control (branch protection, permission scope, required check), not phrasing alone. | Evidence: repo/workspace settings show the matching restriction. | Academy lesson: "What makes this possible" (best-practices tutorial)
- [ ] **Autonomy boundaries stated** — checks the task specifies which decisions the agent makes alone vs. what needs sign-off. | Evidence: task or channel instructions distinguish autonomous steps from approval-gated ones. | Academy lesson: "Giving Claude Tag more responsibility over time" (best-practices tutorial)
- [ ] **Autonomy expanded on track record** — checks oversight loosened only after demonstrated reliability, not by default. | Evidence: review intensity across the channel's early vs. later tasks. | Academy lesson: "Giving Claude Tag more responsibility over time"

**Consistency and output format**
- [ ] **Recurring output format specified once** — checks digests/status reports reuse one declared format instead of varying each time. | Evidence: repeated posts match a stated template (sections, legend, length caps). | Academy lesson: Tasks to try with Claude Tag — "Ongoing Automation" (https://academy.claude.com/tutorials/tasks-to-try-with-claude-tag-in-your-workspace)

**Persistence and proof**
- [ ] **Deliverables actually persisted** — checks finished work lands in durable form (commit, branch, saved file, PR), not only ephemeral session state. | Evidence: linked commit/PR/file exists outside the chat thread. | Academy lesson: Tasks to try — "Connected Tool Tasks: Engineering"
- [ ] **Completion backed by proof** — checks "done" claims carry evidence (diff, test/CI output, source link, chart). | Evidence: completion message links or embeds verifiable output. | Academy lesson: Tasks to try — "Connected Tool Tasks: Engineering"
- [ ] **Reusable conventions captured persistently** — checks recurring conventions live in a config file or workspace instructions, not re-explained per session. | Evidence: a config file or pinned instruction set is referenced. | Academy lesson: "If you already use Claude somewhere else" (best-practices tutorial)

**Session hygiene and scaling**
- [ ] **Corrections sent as new replies** — checks mid-task steering used new messages, not edited/deleted earlier ones. | Evidence: thread history shows follow-up replies, not edits changing intent. | Academy lesson: "Tips while using Claude Tag in your workspace" (best-practices tutorial)
- [ ] **One task per thread** — checks each thread stayed scoped to one coherent task. | Evidence: thread contents map to a single task's lifecycle. | Academy lesson: "Working with Claude Tag on a task"
- [ ] **Batched review and closure** — checks in-flight threads were reviewed and marked closed in batches, not ad hoc. | Evidence: closed threads are marked; review sessions cover several at once. | Academy lesson: Tasks to try — "Ongoing Automation" (maintain pinned channel overviews)

## Sources

- https://academy.claude.com/products/tag
- https://academy.claude.com/tutorials/best-practices-using-claude-tag
- https://academy.claude.com/tutorials/tasks-to-try-with-claude-tag-in-your-workspace
