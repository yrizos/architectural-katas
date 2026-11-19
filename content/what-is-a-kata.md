---
title: What Is a Kata?
description: What an architectural kata is, what it asks of you, why the practice matters, where the idea comes from, and what a brief looks like.
---

An architectural kata is a practice exercise in software design. You get a short brief for a system that does not exist yet, and you work out an architecture that could serve it.

Nobody writes code. The design stays on paper or a whiteboard, along with the reasons behind each choice.

## What a Kata Asks of You

A brief says what a system must do, but it never says how to build it. Working that out is up to you, and it means you have to:

- [Decide which requirements matter most](/taking-part-in-a-kata/#understand-and-prioritize), because no design serves all of them equally well.
- [Question what the brief leaves out](/taking-part-in-a-kata/#understand-and-prioritize), and keep your assumptions apart from its facts.
- [Sketch the main components](/taking-part-in-a-kata/#design) and how they fit together.
- [Explain why your design beats the alternatives](/taking-part-in-a-kata/#share) you considered.

None of these has a correct answer, only trade-offs. Every choice makes something easier and something else harder.

Katas usually run in small groups, because a design nobody questions teaches you little. Someone at the table will ask why you made a choice, and the answer has to be a reason the others can follow. Often the question exposes an assumption you did not know you had made.

## What a Brief Looks Like

A brief describes a situation, names its users, and lists numbered requirements. It also leaves things out on purpose, and the questions you ask about those gaps shape the design as much as the stated needs.

{{< brief >}}

Three gaps stand out in this one. None of them looks important until you try to draw the design:

- Early-bird ticket sales have a date, but nothing says whether the platform sells the tickets.
- Attendees can interact with talks, but nothing says what an interaction is.
- There is no mention of a budget, a team, or the systems already in place.

The brief will not settle any of them for you. Whether the platform sells tickets, for instance, decides whether payments are part of your design at all, and whether they have to work within three months.

The requirements it does state still leave you choices, and each one has a cost. Reliability asks the platform to stay useful when the venue's connection is unreliable.

Picture attendees checking the schedule on their phones while the venue Wi-Fi struggles. Keeping a copy of the schedule on each phone means they can still read it, but every room change then has to reach all of those copies.

## Why Practice Matters

Most engineers design a system from scratch only a handful of times in their career. With so few chances, there is little room to build the judgment a new design takes.

A kata lets you practice as often as you like, and none of it touches production. When an idea does not hold up, nobody gets paged and no customer notices. That leaves you free to try the option you would never risk on a real project.

## Where Katas Come From

The word comes from the martial arts, where a kata is a set sequence of movements performed as an exercise. Each sequence simulates defense and counterattack against imaginary opponents.

Ted Neward applied the idea to software architecture. He created architectural katas because software architects need a chance to practice being architects, just as programmers practice programming.

The katas started as a workshop he presented. His site, [architecturalkatas.com](https://www.architecturalkatas.com/), now holds the rules, a large selection of briefs, and guidance on running a kata yourself.

## Trying It Yourself

To try one yourself, work through this same brief with a small team, from the first read to a design you can present to others. Along the way, you'll capture what you decide with decision records, release timelines, and diagrams.

{{< page-link "taking-part-in-a-kata" "Work through the brief" >}}
