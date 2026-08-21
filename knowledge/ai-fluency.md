---
# AI Fluency — Academy Knowledge
Source: https://academy.claude.com/collections/ai-fluency | Curriculum fetched: 2026-08-21
---

> Load this file when: teaching or reviewing AI Fluency usage. Read the section you need — Curriculum map for links, Teachable knowledge for lessons, Review rubric for audits.

## Curriculum map

**AI Fluency: Framework & Foundations** — https://academy.claude.com/courses/ai-fluency-framework-foundations — 4 hr, 14 lessons + quiz. The prerequisite course; introduces the 4D Framework end to end. Lessons: Intro → Why AI Fluency? → The 4D Framework → Generative AI fundamentals → Capabilities & limitations → Delegation deep dive → Project planning & Delegation → Description deep dive → Effective prompting → Discernment deep dive → Description-Discernment loop → Diligence deep dive → Conclusion → Additional activities. Co-created with professors Rick Dakan and Joseph Feller, with Claude 3.7 assisting under human review.

**AI Capabilities and Limitations** — https://academy.claude.com/courses/ai-capabilities-and-limitations — 3.5 hr, 13 lessons + quiz. Builds a mental model of LLM behavior via four capability-to-limitation spectrums, each with a "Try It Out" exercise: Next Token Prediction, Knowledge, Working Memory, Steerability, then When Properties Collide.

**AI Fluency for Builders** — https://academy.claude.com/courses/ai-fluency-for-builders — 3 hr, 9 lessons + quiz, co-created with CodePath. The 4D Framework applied to shipping software: 4D Framework → AI Capabilities & Limitations → Delegation & the Builder's Toolkit → Description & Building Great Things → Discernment for Code → Discernment for UX → Stand Behind What You Build → Quiz.

**Teaching AI Fluency** — https://academy.claude.com/courses/teaching-ai-fluency — 4.5 hr, 7 lessons + quiz. For faculty/instructional designers teaching the 4D Framework to others (assessment design, not delegation practice).

**Audience-specific editions** (same 4D skeleton, ~3-4 hr, 9-11 lessons + quiz each; URLs `/courses/ai-fluency-for-<audience>`): Educators, pK-12 Educators (with Teach For America), pK-12 Train the Trainer (AFT, 45 min, no quiz), Nonprofits (GivingTuesday), Small Businesses (PayPal), Students.

**Tutorials** — https://academy.claude.com/tutorials/ — 14 short pieces (4-20 min, no quiz): The 4 Properties of AI; The 4 Ds — Behavioral Indicators; What happens when you talk to AI?; Can you trust what AI tells you?; What does AI know about me?; Why do models hallucinate?; What is sycophancy?; Why does bias exist?; Writing an AI diligence statement; Tokens and embeddings; Context and cost; Getting good at Claude; the AI Fluency Index report and discussion guide.

## Teachable knowledge

### Unit 1: The 4D Framework (core loop)
- Delegation: decide what to hand to AI vs. keep for human judgment, via Problem Awareness (understand the task), Platform Awareness (know this AI's capabilities), Task Delegation (assign the right slice).
- Description: communicate intent via Product (what), Process (how), Performance (success criteria), backed by concrete prompting technique.
- Discernment: critically evaluate output; drive a Description-Discernment loop — critique, refine, re-prompt rather than accept-on-first-pass.
- Diligence: own the result through Creation, Transparency, and Deployment diligence — verify it, disclose AI involvement, take accountability.
- Three engagement modes: Automation (AI executes unreviewed), Augmentation (AI assists, human drives), Agency (AI acts semi-independently within bounds).
- HANDS-ON EXERCISE: For one real task from the user's last Claude Code session, write out the Delegation call made, the Description actually given, and one Discernment check that was (or should have been) performed.
- Quiz: (1) The three sub-components of Delegation? → Problem, Platform, Task Awareness. (2) The three engagement modes? → Automation, Augmentation, Agency.

### Unit 2: How the model actually behaves
- Next-token prediction: strong on well-worn patterns (summarizing, reformatting); unreliable generating truth from a blank slate — can produce text that "sounds true but isn't."
- Knowledge is uneven: reliability tracks how mainstream a topic is in training data; niche/recent facts need external verification; cutoffs cause silent gaps.
- Working memory (context window) is finite and attention within it is non-uniform — mid-document content is more likely to be underweighted.
- Steerability degrades with instruction complexity: short, concrete, verifiable asks are followed reliably; long or abstract compound requests drop instructions.
- The four properties interact — e.g. a long context plus a vague ask compounds fabrication risk.
- HANDS-ON EXERCISE: Pick a case where Claude's output in this project was wrong. Diagnose which property (prediction, knowledge, memory, steerability) caused it, and rewrite the prompt to correct for it.
- Quiz: (1) Why do models fabricate more on niche topics? → Sparse training-data coverage. (2) What is a "property collision"? → Two weak spots compounding into a worse failure than either alone.

### Unit 3: Applying the loop to building software
- Maintain a reusable brief/context document (values, constraints, standards) so delegation starts from shared grounding instead of re-explaining each session — the CLAUDE.md equivalent taught across every audience variant.
- Description Chain: decompose the problem, write acceptance tests before generating code, then translate the need into precise AI instructions — tests before generation, not after.
- Five-lens Discernment rubric: Correctness (works?), Quality (implementation solid?), Fit (matches the requirement?), Experience (feels right to users?), Responsibility (ethical implications?).
- Diligence for builders resolves to ship/fix/stop — explicit ownership, not silent merging.
- HANDS-ON EXERCISE: Inspect the repo's CLAUDE.md (or draft one) against the "reusable brief" standard — check it states role, constraints, success criteria, not just file locations. Propose concrete additions.
- Quiz: (1) In the Description Chain, what follows decomposing the problem? → Writing acceptance tests, before code generation. (2) The five Discernment lenses? → Correctness, Quality, Fit, Experience, Responsibility.

### Unit 4: Diligence, disclosure, and data handling
- Write an explicit AI diligence statement: what was AI-assisted, how it was verified, who is accountable.
- Data hygiene: check what sensitive data (customer, student, financial) enters a delegation before it happens, not after — identical across the nonprofit, small-business, and K-12 tracks.
- Design repeatable AI-augmented workflows with defined human-in-the-loop checkpoints, not one-off ad hoc prompting.
- HANDS-ON EXERCISE: Draft a two-sentence AI diligence statement for the current project: what got AI assistance, how it was checked, who owns the final call.
- Quiz: (1) The three elements of an AI diligence statement? → What was AI-assisted, how verified, who's accountable. (2) Why check data hygiene before, not after, delegation? → Data already sent can't be un-sent.

### Unit 5: Teaching and assessing AI Fluency (train-the-trainer)
- Four teaching approaches to the 4D Framework: linear, non-linear, focused (one D at a time), loop-based (paired Delegation-Diligence / Description-Discernment loops).
- Assessment that survives AI-assisted submissions: outcome-based (judge the artifact), process-based (judge the delegation/discernment trail), reflection-based (judge the learner's account of their own choices).
- HANDS-ON EXERCISE: For a task the user regularly delegates to Claude, design one process-based check that would catch a blind-accept of the first output.
- Quiz: What risk does process-based assessment specifically guard against? → Accepting AI output without a visible critique/refine loop.

## Review rubric

**Delegation & Description**
- [ ] **Deliberate task scoping** — a specific task handed to Claude, not an entire ambiguous problem | Evidence: scoped ask, not one vague prompt needing many clarifying round-trips | Academy lesson: https://academy.claude.com/courses/ai-fluency-framework-foundations
- [ ] **Product/Process/Performance description present** — what, how, and success criteria stated before Claude acted | Evidence: prompt or CLAUDE.md states constraints/success criteria, not just a topic | Academy lesson: https://academy.claude.com/courses/ai-fluency-framework-foundations
- [ ] **Reusable context document maintained** — CLAUDE.md/brief capturing role, constraints, standards instead of re-explaining each session | Evidence: CLAUDE.md or equivalent exists and is current | Academy lesson: https://academy.claude.com/courses/ai-fluency-for-builders

**Discernment**
- [ ] **Description-Discernment loop visible** — critique/refine after the first output, not blind acceptance | Evidence: at least one re-prompt or correction following an initial response | Academy lesson: https://academy.claude.com/courses/ai-fluency-framework-foundations
- [ ] **Output verified before use** — correctness/fit checked (tests run, facts checked, code read) before use | Evidence: test run, diff review, or explicit fact-check in transcript | Academy lesson: https://academy.claude.com/courses/ai-capabilities-and-limitations
- [ ] **Five-lens code/design review** — AI-generated work judged on correctness, quality, fit, experience, responsibility | Evidence: review notes beyond "it runs" | Academy lesson: https://academy.claude.com/courses/ai-fluency-for-builders
- [ ] **Acceptance criteria set before generation** — tests/criteria defined before requesting code, not written after to match output | Evidence: test file or spec predates the implementation commit | Academy lesson: https://academy.claude.com/courses/ai-fluency-for-builders

**Model-limitation awareness**
- [ ] **Hallucination/cutoff catch** — a likely fabrication caught, or a fact outside the training cutoff verified | Evidence: user flags or corrects an unverified claim | Academy lesson: https://academy.claude.com/courses/ai-capabilities-and-limitations
- [ ] **Sycophancy/overconfidence check** — pushback when output seemed overconfident or unduly agreeable | Evidence: a follow-up challenging or re-verifying a confident claim | Academy lesson: https://academy.claude.com/tutorials/
- [ ] **Context-window awareness** — management of what's fed to the model on long threads | Evidence: explicit context-reduction step or subagent delegation on a long session | Academy lesson: https://academy.claude.com/tutorials/parametric-memory-and-context

**Diligence & transparency**
- [ ] **AI-assistance disclosed and owned** — artifact/commit discloses AI involvement with a clear owner of the ship/fix/stop call | Evidence: commit message or PR naming AI assistance and a responsible party | Academy lesson: https://academy.claude.com/courses/ai-fluency-framework-foundations
- [ ] **Sensitive-data hygiene checked** — redaction/hygiene step before sending customer/student/financial data to Claude | Evidence: redaction, anonymization, or explicit confirmation prior to the prompt | Academy lesson: https://academy.claude.com/courses/ai-fluency-for-small-businesses
- [ ] **Repeatable workflow with human checkpoints** — recurring tasks use a defined workflow with review steps, not ad hoc prompting each time | Evidence: documented process, template, or skill with a built-in review step | Academy lesson: https://academy.claude.com/courses/ai-fluency-for-nonprofits

## Sources
- https://academy.claude.com/collections/ai-fluency
- https://academy.claude.com/courses/ai-fluency-framework-foundations
- https://academy.claude.com/courses/ai-capabilities-and-limitations
- https://academy.claude.com/courses/ai-fluency-for-builders
- https://academy.claude.com/courses/ai-fluency-for-educators
- https://academy.claude.com/courses/ai-fluency-for-nonprofits
- https://academy.claude.com/courses/ai-fluency-for-pk-12-train-the-trainer
- https://academy.claude.com/courses/ai-fluency-for-k-12-educators
- https://academy.claude.com/courses/ai-fluency-for-small-businesses
- https://academy.claude.com/courses/ai-fluency-for-students
- https://academy.claude.com/courses/teaching-ai-fluency
- https://academy.claude.com/tutorials/
