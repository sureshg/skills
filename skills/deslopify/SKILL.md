---
name: deslopify
description: Make text more genuine, natural, and feel not written by an AI or LLM by removing AI tropes and cliches. Use when asked to deslopify, naturalize, or remove AI tropes from text.
---

# Deslopify

Rewrite or edit text so it reads as genuine and human, free of the repetitive, patronizing, and grandiose patterns
typical of AI-generated writing ("AI slop").

## Workflow

1. Read the text provided by the user (fetch it first if a URL is given).
2. Review the full AI writing tropes catalog in [references/tropes.md](references/tropes.md): it covers word choice,
   sentence structure, paragraph structure, and tone issues.
3. Identify instances of these tropes in the text (e.g., magic adverbs, the "delve" family, negative parallelism, false
   ranges, listicles in a trench coat).
4. Rewrite the text to eliminate these tropes while preserving its original meaning, facts, and intent. Prefer clear,
   direct, varied, human-like prose.
5. Judge most tropes sparingly: a pattern used once is usually fine, and only worth flagging when it repeats or several
   tropes pile up together.
6. Always remove em dashes, no matter how many appear. Replace each with a comma, period, parenthesis, or colon
   depending on context. Em dashes are one of the strongest and most recognizable AI writing tells, so this trope gets
   zero tolerance rather than the sparing judgment applied to the rest.

Always consult [references/tropes.md](references/tropes.md) before rewriting; ground edits in the documented
anti-patterns rather than intuition alone.

## Source

`references/tropes.md` is a local, self-contained copy of the catalog from [tropes.fyi](https://tropes.fyi), vendored
here so the skill stays independent of the upstream file's update cadence.
