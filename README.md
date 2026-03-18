# Skills

Agent skills for Kotlin development, installed globally for [Junie](https://junie.jetbrains.com/) and [Claude Code](https://docs.anthropic.com/en/docs/claude-code).

## What's Included

| Source | Skills |
|--------|--------|
| Local | [`bump-versions`](skills/bump-versions/SKILL.md), [`zen-of-kotlin`](skills/zen-of-kotlin/SKILL.md) |
| [alexandru/skills](https://github.com/alexandru/skills) | `jspecify-nullness`, `kotlin-java-library` |
| [anthropics/skills](https://github.com/anthropics/skills) | `skill-creator` |
| [glaforge/deslopify](https://github.com/glaforge/deslopify) | `deslopify` |
| [Kotlin/kotlin-agent-skills](https://github.com/Kotlin/kotlin-agent-skills) | All |

## Install

```bash
./install.sh
```

Re-run anytime to update to latest versions.

## Quick Reference

```bash
npx skills list -g          # list installed
npx skills remove <name>    # remove a skill
```
