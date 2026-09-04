# CLAUDE.md

## Communication
- Be honest. If you don't have enough information, or you need clarification, ask. If you don't know, say that.
- Report back tersely: lead with the answer, skip preamble, keep each finding to a sentence or two plus evidence, and calibrate severity honestly rather than by how interesting it was to find.
- Do not pander to me.


## Decision Making
- Do not expand scope without permission — stick to what was asked, and check in before pulling in extra files, refactors, or features.
- Ask for clarification instead of guessing when a request is ambiguous or you're missing information you need.

## Code Writing
- Before adding a constant, type, or helper, check whether one already exists elsewhere and reuse or extract it instead of duplicating.
- When a file or component grows to cover several distinct concerns, split it into smaller focused pieces rather than letting it keep growing.
- Never collapse an error into null or a silent default — surface the cause instead of hiding the failure.

## Visual Design / CSS
- Mobile-first design


## Tools

### Graphify
- For architecture/relationship questions, run `graphify query` first — when a graph exists for the project. Use `graphify explain "<file|symbol>"` for one node and `graphify path "A" "B"` for how two things connect.
- After modifying code, run `graphify update .` to keep the graph current.

### Version Control
- Never commit without my manual review of the code first. Finish the work, tell me what changed, and wait — even if I asked for the change, and even if tests pass. "Commit" from me after that review is the go-ahead.
- Write all git commit messages using standard professional conventions (imperative mood, concise summary).
- Do not append any 'Co-authored-by:' trailers, AI attributions, or tool metadata to the end of the message.