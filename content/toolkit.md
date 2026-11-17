---
title: Toolkit
description: Three tools for an architectural kata, with guidance on when each helps and how to use it, namely architectural decision records, a release timeline, and C4 diagrams.
---

## Architectural Decision Records

An architectural decision record, or ADR, is a short document that [captures and explains a decision](https://martinfowler.com/bliki/ArchitectureDecisionRecord.html). It holds the context, the alternatives, and the consequences, so a later reader can see why a system looks the way it does.

In a kata, the records are the only memory your design has. Write one for each choice, such as where the data lives or how two parts communicate, and note the alternative you rejected and the cost you accept.

When a requirement changes, reread them and supersede any whose context no longer holds.

If you'd like to start capturing decisions, there are [several formats](https://adr.github.io/) to choose from, including MADR, Michael Nygard's original, and the one-sentence Y-Statement.

## Release Timeline

A release timeline shows what ships when, with a date attached to each step. Because a date limits what can be built before it, the timeline forces the team to decide which needs come first and which can wait.

In a kata, a common practice is to split the delivery into phases such as MVP and Phase 1. Each phase gets a due date, such as Week 1, Month 1, or Q1.

Start with the earliest date and ask what the system must do by then. Everything else moves to a later phase, and each of those moves changes other decisions:

- Whether the system builds a capability itself or relies on another system.
- Which features and data ship first and which come later.
- How much of a quality requirement, such as reliability, the first phase covers.
- Whether a capability starts as a simple version or as its final design.
- What the team builds and what it buys or reuses.

A later phase can still shape the first one, so sketch what comes after the MVP before you settle how to build it.

## C4 Diagrams

The [C4 model](https://c4model.com/) is Simon Brown's approach to diagramming software architecture. It describes a system at four levels of detail, from context down to code, and each level answers a different question for a different reader.

Most teams only need the first two levels, and a kata is no different.

{{< callout >}}
{{< callout-item icon="globe" >}}
A [system context diagram](https://c4model.com/diagrams/system-context) shows the system among its users and neighboring systems. Draw it first, so everyone agrees on who uses the system and what it connects to.
{{< /callout-item >}}
{{< callout-item icon="box" >}}
A [container diagram](https://c4model.com/diagrams/container) shows the applications and data stores inside the system. It is the sketch of your design, so it is the one to test against a change.
{{< /callout-item >}}
{{< callout-item icon="puzzle" >}}
A [component diagram](https://c4model.com/diagrams/component) shows the parts inside one container. Draw one only if it adds value, such as for the container a change affects most.
{{< /callout-item >}}
{{< callout-item icon="code" >}}
A [code diagram](https://c4model.com/diagrams/code) shows the classes inside one component. It is out of scope for a kata, since a kata ends before any code exists.
{{< /callout-item >}}
{{< /callout >}}

Label every connection on each diagram, and keep the diagrams beside your ADRs. A diagram shows what you decided, and the record explains why.
