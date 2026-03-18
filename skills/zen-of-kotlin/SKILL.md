---
name: zen-of-kotlin
description: Write idiomatic, type-safe, immutable Kotlin guided by the Zen of Kotlin — domain-oriented types, composition over cleverness, illegal states unrepresentable.
---

# Zen of Kotlin

Guiding principles for writing clear, correct, and maintainable Kotlin code.

## Make Illegal States Unrepresentable

Model invariants in types so invalid data cannot compile or be constructed.

- When a domain is genuinely closed, use sealed hierarchies (`sealed interface` / `sealed class`) with exhaustive `when` branches.
- Represent optionality explicitly with nullable types (`T?`) and eliminate ambiguity at boundaries.
- Use strongly typed value wrappers (e.g., `@JvmInline value class`) instead of raw primitives.
- Scope resources correctly (`use { ... }`) so leaks are impossible in normal control flow.

## No Mutability by Default

Prefer `val` over `var`, and immutable data structures over mutable ones.

- Write pure functions first; keep side effects at the edge of the system.
- Express state changes as new values (`copy(...)`) instead of in-place mutation.
- Isolate unavoidable effects behind small interfaces so behavior stays testable.

## Make Data Types and Functions Domain-Oriented

Name types and operations in the language of the domain, not infrastructure.

- Replace primitive obsession with domain-specific types (`CustomerId`, `Email`, `Money`, etc.).
- Parse, then model: convert untrusted input at boundaries into validated domain values.
- Keep domain logic in domain types/functions; keep transport and persistence concerns outside.

## Prefer Composition, Expressiveness, and Clarity

Use small, composable functions and extension functions when they improve readability.

- Use null-safe operators and standard library operations to express intent directly.
- Avoid cleverness that hides behavior; optimize for maintainability and correctness.

## Test Pyramids Are Good, Assertion Magic Is Not Required

Favor a layered testing strategy: types and pure functions first, then integrated behavior.

- Keep tests explicit and readable; use straightforward assertions over opaque DSL complexity.
- Test effects through boundaries with fakes first, then real integrations when needed.

## Use Modern Kotlin, Keep It Simple

Target Kotlin `2.3.20` and current standard library APIs.

- Prefer the Kotlin standard library before adding dependencies.
- Choose explicit, maintainable code over incidental abstraction.
