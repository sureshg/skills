# Skills

Agent skills for Kotlin development, installed globally for [Junie](https://junie.jetbrains.com/)
and [Claude Code](https://docs.anthropic.com/en/docs/claude-code).

## What's Included

| Source                                                                                            | Skills                                                                                                                                       |
|---------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------|
| Local                                                                                             | [`bump-versions`](skills/bump-versions/SKILL.md), [`deslopify`](skills/deslopify/SKILL.md), [`zen-of-kotlin`](skills/zen-of-kotlin/SKILL.md) |
| [alexandru/skills](https://github.com/alexandru/skills)                                           | `jspecify-nullness`, `kotlin-java-library` , `kotlin-context-parameters`                                                                     |
| [chrisbanes/skills](https://github.com/chrisbanes/skills)                                         | Kotlin & Compose                                                                                                                             |
| [mvanhorn/last30days-skill](https://github.com/mvanhorn/last30days-skill)                         | All                                                                                                                                          |
| [Kotlin/kotlin-agent-skills](https://github.com/Kotlin/kotlin-agent-skills)                       | All                                                                                                                                          |
| [ollygarden/opentelemetry-agent-skills](https://github.com/ollygarden/opentelemetry-agent-skills) | All                                                                                                                                          |
| [oracle/skills](https://github.com/oracle/skills/tree/main/graal/native-image)                    | `graal` (GraalVM Native Image)                                                                                                               |

> 💡 Browse the [JetBrains Skills Registry](https://github.com/JetBrains/skills) to discover more community skills.

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
