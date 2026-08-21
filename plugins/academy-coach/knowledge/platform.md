---
# Claude Platform — Academy Knowledge
Source: https://academy.claude.com/products/platform | Curriculum fetched: 2026-08-21
---

> Load this file when: teaching or reviewing Claude Platform usage. Read the section you need — Curriculum map for links, Teachable knowledge for lessons, Review rubric for audits.

## Curriculum map

**Claude Platform 101** — https://academy.claude.com/courses/claude-platform-101 — 1.5 hr, 13 lessons, 1 quiz
Ground-up onboarding for devs who've only used Claude in chat. Requires coding + CLI basics, Console API key.
- M1 What is the Platform: overview, first API call, choosing a model (Fable/Opus/Sonnet/Haiku)
- M2 Teaching Your Agent: agent loop, tool use, extended thinking
- M3 Extending Your Agent: built-in tools (web search/code exec/fetch), Skills, MCP, context management
- M4 Managed Agents: overview, building your first one (event streams)
- M5: building with Claude Code itself

**Building with the Claude API** — https://academy.claude.com/courses/building-with-the-claude-api — 9 hr, 67 lessons, 8 quizzes
Deep production course for engineers shipping Claude in real apps. Requires Python + JSON.
- M1 Accessing the API (9): auth, requests, multi-turn, system prompts, temperature, streaming, structured output
- M2 Prompt Evaluation (7): eval workflow, test datasets, model- vs code-based grading
- M3 Prompt Engineering (6): clear/direct, specificity, XML tags, examples
- M4 Tool Use (13): schemas, message blocks, tool results, multi-tool/turn, fine-grained calling, text-edit/web-search tools
- M5 RAG and Agentic Search (7): chunking, embeddings, full RAG flow, BM25, multi-index
- M6 Features (9): extended thinking, image/PDF, citations, prompt caching, code execution, Files API
- M7 MCP (11): intro, clients, tools/resources/prompts, server inspector
- M8 Anthropic Apps (4): Claude Code setup/use, MCP-server enhancements
- M9 Agents and Workflows (8): parallelization, chaining, routing, agents+tools, workflows vs agents
- M10 Final Assessment

**Introduction to Model Context Protocol** — https://academy.claude.com/courses/introduction-to-model-context-protocol — 1 hr, 10 lessons, 1 quiz
Build MCP servers/clients from scratch in Python. Requires Python + async/await.
Intro to MCP → clients → defining tools (SDK decorators) → server inspector → implementing a client → defining/accessing resources (MIME types) → defining/using prompts → final quiz + review.

**MCP: Advanced Topics** — https://academy.claude.com/courses/model-context-protocol-advanced-topics — 1.5 hr, 11 lessons, 1 quiz
Production MCP for those past the basics. Sampling → progress/log notifications → roots → JSON message types → STDIO vs StreamableHTTP transports (in depth, with state) → quiz.

**Claude with Amazon Bedrock** — https://academy.claude.com/courses/claude-with-amazon-bedrock — 8 hr, 65 lessons, 8 quizzes
Same core curriculum as Building with the Claude API (auth, prompting, tool use, RAG, MCP, agents), ported to AWS Bedrock deployment/auth.

**Claude with Google Cloud's Vertex AI** — https://academy.claude.com/courses/claude-with-google-cloud-s-vertex-ai — 8.5 hr, 66 lessons, 9 quizzes
Same core curriculum ported to GCP Vertex AI, plus contextual retrieval and provider-specific auth.

**Tutorial**: "What is Claude Managed Agents?" — https://academy.claude.com/tutorials/what-is-claude-managed-agents — 4 min. Managed Agents API suite: define tools/environments/success criteria, autonomous run-to-completion, multi-agent orchestration, persistent memory (beta), human-in-the-loop approvals, MCP tunnels/"dreaming" (research preview).

## Teachable knowledge

**Unit 1: The core loop**
- An API call = auth + system prompt + messages array; multi-turn state is just resending prior messages.
- Streaming and temperature control response shape/randomness, not correctness — set deliberately.
- Structured (JSON) output must be requested explicitly.
- Model choice (Fable/Opus/Sonnet/Haiku) is a per-task cost-latency-capability tradeoff, not a fixed default.
- EXERCISE: make a first API call in the user's environment, then re-run the same prompt on two model tiers and compare cost/latency/quality.
- Quiz: Why Haiku over Opus? → lower cost/latency when extra reasoning isn't needed. System prompt vs user message? → system sets persistent behavior; user messages are per-turn input.

**Unit 2: Prompting and evaluation**
- Prompt engineering: be clear/direct, be specific, use XML tags to structure input/output, give few-shot examples.
- Evaluate prompts against a test dataset before trusting them — model-based grading (LLM judges) or code-based grading (deterministic checks).
- Eval workflow is iterative: generate cases → run → grade → refine → re-run.
- EXERCISE: write 5-10 test cases for an existing prompt in the user's project and run a grading pass.
- Quiz: Model-based vs code-based grading? → subjective LLM judgment vs deterministic rule checks. Why evaluate before shipping? → a single manual check misses edge cases; evals catch regressions.

**Unit 3: Tool use and the agent loop**
- Agent loop: request → tool call → tool result → next request, until the model stops calling tools.
- Tool schemas need clear names, descriptions, typed parameters — vague schemas cause misuse.
- Multi-tool/multi-turn use requires matching tool_result blocks to tool_use IDs correctly.
- Built-in tools (web search, code execution, fetch) cover common needs without custom builds.
- Extended thinking is a deliberate switch for harder reasoning tasks, not always-on.
- EXERCISE: define one custom tool with a well-specified schema for the user's project and wire the full loop end to end.
- Quiz: What does the client send back after a tool call? → a tool_result block matched to the tool_use ID. When enable extended thinking? → for multi-step reasoning tasks, not simple lookups.

**Unit 4: Retrieval and context management**
- RAG needs deliberate choices: chunking strategy, embedding model, hybrid search (vector + BM25), reranking or multi-index as needed.
- Prompt caching cuts cost/latency on repeated large context (system prompts, long docs) — apply to stable, reused content.
- Long-running agents need active context trimming/summarization, not unbounded growth.
- Citations can be generated directly from source documents for attribution.
- EXERCISE: apply prompt caching to a repeated large context block in the user's project and measure the difference.
- Quiz: Why combine BM25 with vector search? → lexical search catches exact-term matches embeddings miss. Benefit of prompt caching? → lower token cost/latency for content resent across calls.

**Unit 5: MCP**
- Three primitives: tools (actions), resources (read-only data), prompts (reusable templates) — keep them separate.
- Python SDK uses decorators instead of hand-written JSON schemas.
- The server inspector is the standard way to test an MCP server before wiring a client.
- Transport choice: STDIO for local single-client, StreamableHTTP for scalable/stateless remote multi-client.
- Advanced: sampling shifts inference cost to the client; progress/log notifications support long operations; roots scope filesystem access securely.
- EXERCISE: build a minimal MCP server with one tool and one resource, test with the inspector, connect a client.
- Quiz: The three MCP primitives? → tools, resources, prompts. When StreamableHTTP over STDIO? → remote, scalable, multi-client deployments.

**Unit 6: Agents, workflows, and production**
- Workflows (parallelization, chaining, routing) are fixed orchestration — use for predictable processes instead of full agentic overhead.
- Full agents suit open-ended tasks; still need defined success criteria and stopping conditions.
- Claude Managed Agents: sandboxed execution, event streams, multi-agent orchestration, persistent memory (beta), human-in-the-loop approval gates.
- Claude deploys via direct API, Amazon Bedrock, or Google Vertex AI — same patterns, different auth/config.
- Claude Code is both build tool and review tool: use it to check AI-generated code, don't accept output uncritically.
- EXERCISE: for a multi-step task in the user's project, decide fixed workflow vs full agent and justify against task predictability.
- Quiz: When prefer a fixed workflow over an agent? → predictable process structure, avoids agentic overhead. What does human-in-the-loop protect against? → irreversible/high-stakes actions taken without review.

## Review rubric

**Model and reasoning**
- [ ] **Deliberate model selection** — cheaper/faster model for simple tasks, Opus reserved for complex reasoning? | Evidence: model choice varies by task in code/session | Academy lesson: claude-platform-101
- [ ] **Extended thinking matched to difficulty** — enabled/withheld per task difficulty, not always-on/never-used? | Evidence: thinking config toggled by task type | Academy lesson: building-with-the-claude-api (M6)

**Tool use and agents**
- [ ] **Well-specified tool schemas** — clear names, descriptions, typed params? | Evidence: explicit types/descriptions in tool defs | Academy lesson: building-with-the-claude-api (M4)
- [ ] **Bounded agent loops** — defined success criteria and stopping conditions, not unbounded? | Evidence: explicit loop termination logic | Academy lesson: claude-platform-101
- [ ] **Workflow vs agent judged correctly** — fixed workflow used for predictable multi-step tasks instead of unnecessary agent autonomy? | Evidence: pipeline structure matches task predictability | Academy lesson: building-with-the-claude-api (M9)
- [ ] **Human-in-the-loop for high-stakes actions** — approval checkpoints before irreversible actions? | Evidence: explicit confirmation step before risky action | Academy lesson: tutorials/what-is-claude-managed-agents

**MCP**
- [ ] **MCP used where reusability mattered** — chosen over one-off glue for reusable integrations? | Evidence: built as MCP server/client vs ad hoc calls | Academy lesson: introduction-to-model-context-protocol
- [ ] **Correct primitive separation** — tools/resources/prompts kept distinct? | Evidence: separate handlers in server code | Academy lesson: introduction-to-model-context-protocol
- [ ] **Transport chosen with rationale** — STDIO vs StreamableHTTP justified? | Evidence: documented transport choice | Academy lesson: model-context-protocol-advanced-topics

**Retrieval and context**
- [ ] **Reasoned retrieval strategy** — chunking/embedding/hybrid search deliberate, not raw dumps? | Evidence: chunk size, embedding model, search method specified | Academy lesson: building-with-the-claude-api (M5)
- [ ] **Prompt caching applied** — used for repeated large context across calls? | Evidence: cache markers on stable content | Academy lesson: building-with-the-claude-api (M6)

**Quality and safety**
- [ ] **Prompts evaluated before shipping** — tested against cases, not a single manual check? | Evidence: test dataset or eval script present | Academy lesson: building-with-the-claude-api (M2)
- [ ] **AI-generated code reviewed** — Claude Code or equivalent review before accepting changes? | Evidence: review/diff step precedes merge | Academy lesson: claude-platform-101
- [ ] **Credentials handled safely** — API keys not hardcoded or logged? | Evidence: keys from env/secrets store, absent from logs | Academy lesson: building-with-the-claude-api (M1)

## Sources
- https://academy.claude.com/products/platform
- https://academy.claude.com/courses/claude-platform-101
- https://academy.claude.com/courses/building-with-the-claude-api
- https://academy.claude.com/courses/introduction-to-model-context-protocol
- https://academy.claude.com/courses/model-context-protocol-advanced-topics
- https://academy.claude.com/courses/claude-with-amazon-bedrock
- https://academy.claude.com/courses/claude-with-google-cloud-s-vertex-ai
- https://academy.claude.com/tutorials/what-is-claude-managed-agents
