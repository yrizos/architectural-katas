---
title: Toolkit
description: A guide to architectural decision records, release timelines, and C4 diagrams, and how to use each one in an architectural kata.
---

## Architectural Katas

Ted Neward created [architectural katas](/what-is-a-kata/) to give software architects a way to practice their craft, and the canonical place to find them is [architecturalkatas.com](https://www.architecturalkatas.com/). Since that site is the reference for the rules, the problems, and how to run a kata, start there, then come back here for the tools that help once you have begun.

{{< callout >}}
{{< callout-item icon="book" >}}
The rules explain how a kata works.
{{< /callout-item >}}
{{< callout-item icon="archive" >}}
A big selection of katas gives you new problems to practice.
{{< /callout-item >}}
{{< callout-item icon="users" >}}
The guidance shows you how to run a kata yourself.
{{< /callout-item >}}
{{< /callout >}}

Start with the rules if the format is new to you. When you want to run a kata with your own team, pick one from the selection and follow the guidance.

## Architectural Decision Records

An architectural decision record, or ADR, is [a short document that captures and explains a decision](https://martinfowler.com/bliki/ArchitectureDecisionRecord.html). It holds the context, the alternatives, and the consequences. A later reader can then see why a system looks the way it does.

In a kata, the records are the only memory your design has, and you write them as you [design](/taking-part-in-a-kata/#design). Write one for each choice, such as where the data lives or how two parts communicate. Note the alternative you rejected and the cost you accept.

When a requirement changes, reread your records and write a new one to replace any whose context no longer holds. To start capturing decisions, choose from [several formats](https://adr.github.io/), including MADR, Michael Nygard's original, and the one-sentence Y-Statement.

## Release Timeline

A release timeline shows what ships when, with a date attached to each step. A date limits what can be built before it. The timeline forces the team to decide which needs come first and which can wait.

In a kata, a common practice is to split the delivery into phases such as MVP and Phase 1. Each phase gets a due date, such as Week 1, Month 1, or Q1. You scope the first release while you [understand and prioritize](/taking-part-in-a-kata/#understand-and-prioritize), and you lay out the rest once you [design](/taking-part-in-a-kata/#design).

Start with the earliest date and ask what the system must do by then. Everything else moves to a later phase, and each move changes other decisions:

- Whether the system builds a capability itself or relies on another system.
- Which features and data ship first.
- How much of a quality requirement, such as reliability, the first phase covers.
- Whether a capability starts simple or in its final form.
- What the team builds and what it buys or reuses.

A later phase can still shape the first one, so sketch what comes after the MVP before you settle how to build it. Whenever you move a requirement to a different phase, revisit these decisions.

## C4 Diagrams

The [C4 model](https://c4model.com/) is Simon Brown's approach to diagramming software architecture. It describes a system at four levels of detail, from context down to code. Each level answers a different question for a different reader. Most teams only need the first two levels, and [a kata](/taking-part-in-a-kata/#design) is no different.

{{< callout >}}
{{< callout-item icon="globe" >}}
A [system context diagram](https://c4model.com/diagrams/system-context) shows the system among its users and neighboring systems. Draw it first.
{{< /callout-item >}}
{{< callout-item icon="box" >}}
A [container diagram](https://c4model.com/diagrams/container) shows the applications and data stores inside the system. Test your design against it.
{{< /callout-item >}}
{{< callout-item icon="puzzle" >}}
A [component diagram](https://c4model.com/diagrams/component) shows the parts inside one container. Draw one only if it adds value.
{{< /callout-item >}}
{{< callout-item icon="code" >}}
A [code diagram](https://c4model.com/diagrams/code) shows the classes inside one component. It is out of scope for a kata.
{{< /callout-item >}}
{{< /callout >}}

Label every connection on each diagram, and keep the diagrams beside your ADRs. A diagram shows what you decided, and the record explains why.

## Catas to Avoid

[Catas to Avoid](https://architecture-catas.com/) is a tongue-in-cheek collection of anti-patterns for architectural katas.

Some catas belong to the team at the table, and they show how you architect yourself into a corner:

- **The Solution-First Thinker** skips the problem and jumps straight to picking technologies.
- **The Loudest Voice** dictates the design while the rest of the team watches.
- **The Empty Hands Fear** rushes to fill the whiteboard, because presenting nothing feels worse than presenting the wrong thing.
- **The Silent Audience** sits through other teams' presentations without asking a single question.

Others belong to whoever runs the kata. **The Over-Corrector** jumps in at the first sign of trouble. **The Tech-Savvy Stakeholder** plays the business role but hands teams the solution.

It's worth a read before [your next kata](/taking-part-in-a-kata/), and again after it.
