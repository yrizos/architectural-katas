---
title: Toolkit
description: Three tools for an architectural kata, with guidance on when each helps and how to use it, namely architectural decision records, a release timeline, and C4 diagrams.
---

## Architectural Decision Records

An architectural decision record, or ADR, is a short document that [captures and explains a decision](https://martinfowler.com/bliki/ArchitectureDecisionRecord.html). It holds the context, the alternatives, and the consequences, so a later reader can see why a system looks the way it does.

Accepted records aren't edited. A changed decision gets a new record that supersedes the old one, so the history stays intact.

In a kata, the records are the only memory your design has. Write one for each choice, such as where the data lives or how two parts communicate, and note the alternative you rejected and the cost you accept.

When a requirement changes, reread them and supersede any whose context no longer holds.

Pick a template from [the common formats](https://adr.github.io/), such as MADR, Michael Nygard's original, or the one-sentence Y-Statement. The minimal MADR form is enough, since a record that gets written beats a thorough template that gets skipped.

## Release Timeline

A release timeline lays out what ships when. A date limits what can be built before it, so the timeline forces the team to say which needs come first and what can wait.

Start with the date the team has to hit. Place it on the timeline and decide which requirements must exist by then. That decision shapes others:

- Whether the system does something itself or relies on another system.
- Which features and data the first release includes and which wait.
- How much of each quality requirement, such as reliability, the first release covers.
- Whether a capability starts as a simple version or the full design.
- What the team builds and what it buys or reuses.

Record each of these in an ADR that names the timeline as a reason.

## C4 Diagrams

The [C4 model](https://c4model.com/) is Simon Brown's approach to diagramming software architecture in four levels, which are context, containers, components, and code. Each level answers a different question, so readers can stop at the depth they need.

Most teams only need the first two levels, and a kata is no different:

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

Label every connection, and keep the diagrams beside your ADRs. The diagram shows what you decided, and the record explains why.
