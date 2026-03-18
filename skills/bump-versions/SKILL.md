---
name: bump-versions
description: Bump dependency versions in Gradle version catalogs, Amper catalogs, and Maven POMs using caupain or the Maven Versions Plugin.
---

# Bump Versions

Update project dependency versions to their latest stable releases using the right tool for each build system.

## Detect the Build System

Before updating anything, identify which build system the project uses:

- `gradle/libs.versions.toml` → **Gradle** version catalog ([docs](https://docs.gradle.org/current/userguide/version_catalogs.html))
- `libs.versions.toml` at the project root alongside `module.yaml` → **Amper** version catalog ([docs](https://amper.org/dev/))
- `pom.xml` → **Maven** project ([docs](https://maven.apache.org/))

If multiple build systems coexist, update each one independently.

## Gradle Version Catalog

Use [caupain](https://github.com/deezer/caupain) to discover available updates, then apply them to the catalog. On macOS, install via `brew install deezer/repo/caupain`.

1. Run `caupain --no-cache` in the project root.
2. Update only version values in the `[versions]` section of `gradle/libs.versions.toml`.
3. Preserve exact formatting — quotes, spacing, alignment, line order.
4. Never modify `.gradle.kts` or `.gradle` build files.
5. Never run Gradle builds for validation.

```toml
# Before
kotlin = "2.3.20"

# After
kotlin = "2.3.21"
```

## Amper Version Catalog

Use caupain with the root-level catalog, then update both the catalog and `module.yaml`.

1. Run `caupain --no-cache -i libs.versions.toml` in the project root.
2. Update version values in `libs.versions.toml` (at the project root, not under `gradle/`).
3. Update `module.yaml` if it has inline versions (e.g., Kotlin, JUnit, JVM release).
4. Preserve exact formatting — quotes, spacing, alignment, line order.
5. Never modify Amper build config beyond version bumps.

```toml
# Before
kotlinx-io = "0.8.2"

# After
kotlinx-io = "0.9.0"
```

## Maven POM

Use the Maven Versions Plugin to discover available updates, then apply them to `pom.xml`.

1. Run `./mvnw clean versions:display-dependency-updates versions:display-plugin-updates versions:display-property-updates` in the project root.
2. Update only `<properties>` values in `pom.xml` with the reported latest versions.
3. Preserve exact formatting — indentation, tag style, line order.
4. Never run any other Maven commands for validation.

```xml
<!-- Before -->
<kotlin.version>2.3.20</kotlin.version>

<!-- After -->
<kotlin.version>2.3.21</kotlin.version>
```

## Rules

- Always use the appropriate tool (`caupain` or `mvnw versions:`) to discover latest versions — never manually check Maven Central or GitHub. These tools handle transitive compatibility and release metadata far more reliably than manual lookups.
- Only change version values. Never alter keys, property names, dependency coordinates, or structural formatting.
- Prefer stable releases over pre-release/beta unless the project already uses a pre-release version for that dependency.
- Make no other changes to the codebase beyond version bumps.
