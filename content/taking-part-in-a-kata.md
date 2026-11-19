---
title: Taking Part in a Kata
description: What you do when you take part in an architectural kata, phase by phase, working through a brief for a conference platform.
---

Picture a table with a few people you may have met minutes ago, a whiteboard, and a brief for a system that doesn't exist yet. Before the kata ends, your team has to agree on what matters, sketch a design, and defend it in front of the room.

The work moves through three phases, and each one starts from what the last one left you with. By the end, your team has a short list of priorities, a diagram with the decisions behind it, and a plan for what ships first.

{{< phases >}}
{{< phase icon="book" name="Understand and Prioritize" >}}
Work out who the platform serves, what matters most, and what has to ship first.
{{< /phase >}}
{{< phase icon="puzzle" name="Design" >}}
Turn those priorities into components, a diagram, and decisions with their trade-offs.
{{< /phase >}}
{{< phase icon="users" name="Share" >}}
Present your design and question how other teams solved the same brief.
{{< /phase >}}
{{< /phases >}}

Three ground rules hold through every phase. They come up again and again, so keep them in view from the start:

{{< callout >}}
{{< callout-item icon="message" >}}
There is no correct answer, only trade-offs.
{{< /callout-item >}}
{{< callout-item icon="code" >}}
Technology choices wait until the design is clear.
{{< /callout-item >}}
{{< callout-item icon="flag" >}}
An unstated assumption is a hidden decision.
{{< /callout-item >}}
{{< /callout >}}

## Before You Start

You don't need to prepare anything or know the brief by heart. Most of what you need is already at the table:

{{< callout >}}
{{< callout-item icon="users" >}}
You work in a team of three to five people, often with people you don't work with every day.
{{< /callout-item >}}
{{< callout-item icon="calendar" >}}
A kata takes an hour or two. At a [tech event](/workshop/#at-tech-events) it gets one hour, so you prioritize faster and leave more questions open.
{{< /callout-item >}}
{{< callout-item icon="lightbulb" >}}
Nobody writes code. The whole time goes into sketching, discussing, and deciding, on paper or a whiteboard.
{{< /callout-item >}}
{{< /callout >}}

Whoever runs the kata plays the conference organizers. Ask them about anything the brief leaves out, and expect some questions to come back without a clear answer, the way they would on a real project.

Keep two lists from the first minute, one for your assumptions and one for your decisions. Every phase adds to both, and by the time you present, they hold the reasons your diagram can't show. If you practice alone, you play the organizers too, so every answer you give yourself goes on the assumptions list.

## Understand and Prioritize

{{< handoff >}}
{{< handoff-item label="You bring" >}}

- The brief, which you've already read once.
- Two empty lists, one for assumptions and one for decisions.
{{< /handoff-item >}}
{{< handoff-item label="You leave with" >}}
- The actors and what each one does.
- Your three top characteristics, ranked.
- A first release that fits the ticket-sales date.
- Your assumptions, with one open question marked.
{{< /handoff-item >}}
{{< /handoff >}}

Start with the brief, which is the [familiar one for a conference platform](/what-is-a-kata/#what-a-brief-looks-like). Read it on your own before anyone at the table speaks, and write down the first questions it raises. If the first voice in the room sets the direction, the team ends up designing one person's idea, an anti-pattern known as [The Loudest Voice](/toolkit/#catas-to-avoid).

{{< brief >}}

Then list the actors and what each of them does. The brief names attendees, speakers, and staff, but look at the archive requirement and you'll find visitors, who aren't on that list at all. An actor nobody listed is a set of needs nobody has thought through yet.

Three [gaps stand out in the brief](/what-is-a-kata/#what-a-brief-looks-like), such as who sells the tickets and what interacting with a talk means. Take them to the organizers, along with questions like these:

{{< questions >}}
{{< question-group label="Requirements" >}}

- Does interacting with a talk mean questions to the speaker, live polls, ratings, or something else?
- Who reads the feedback, the speakers, the organizers, or both?
{{< /question-group >}}
{{< question-group label="Architectural Drivers" >}}
- Which moments create the peak load, such as the early-bird launch, the first morning, or the breaks between talks?
- How much of the program must keep working when the venue's network drops?
{{< /question-group >}}
{{< question-group label="Alternatives" >}}
- Does the archive belong inside the platform, or could each edition be published as a static copy once it ends?
- Does mobile access call for a native app, or is a mobile web app enough?
{{< /question-group >}}
{{< question-group label="Uncertainty" >}}
- Is ticketing part of the platform, or does the sales date only set the deadline for a first release?
- Which assumption would change the design most if it turned out to be wrong?
{{< /question-group >}}
{{< /questions >}}

Some questions won't get an answer, and that's useful too, because each one shows an assumption your design depends on. Write those assumptions down, and keep them apart from what the brief actually says.

{{< callout >}}
{{< callout-item icon="flag" >}}
Mark the one open question that could change your design most. Come back to it when you design, and again when you present.
{{< /callout-item >}}
{{< /callout >}}

Next, agree on the architectural characteristics that matter most. They aren't features, and the brief only hints at them, so they depend on what your team assumes about users and load:

{{< terms >}}

- Availability
- Scalability
- Elasticity
- Performance
- Security
- Maintainability
- Testability
- Deployability
- Interoperability
- Cost
{{< /terms >}}

Pick three and rank them, because these qualities pull against each other and no design serves all ten. The ranking settles arguments later, when two of them collide.

Picture [attendees checking the schedule on their phones](/what-is-a-kata/#what-a-brief-looks-like) while the venue Wi-Fi struggles. They make a strong case for availability. The three months until ticket sales make a different one, for cost and deployability, because a small team has to ship quickly and keep changing what it shipped.

Last, scope a first release. It's the smallest scope that still gives the main actor something of value, and the ticket-sales date limits what fits. Everything else waits for a later release, and every move to a later release [changes other decisions](/toolkit/#release-timeline).

Before tickets go on sale, your main actor may well be someone deciding whether to buy one. If so, the program and the speakers matter long before anything that happens during a talk.

## Design

{{< handoff >}}
{{< handoff-item label="You bring" >}}

- The actors and what each one does.
- Your three top characteristics, ranked.
- A first release.
- Your assumptions, with one open question marked.
{{< /handoff-item >}}
{{< handoff-item label="You leave with" >}}
- Components, each marked as built or bought.
- A diagram with each key decision numbered on it.
- A decision record for each key decision.
- A release timeline.
{{< /handoff-item >}}
{{< /handoff >}}

Now your notes turn into a design. Every choice in this phase should point back to an actor, a characteristic, or an assumption from the first phase, which is what makes it possible to defend.

Start by grouping what your actors do into components. Managing the schedule, publishing the program, and browsing past editions are different jobs for different people, so they're natural places to draw the first lines.

For each component, decide where it comes from. These decisions depend on what your team assumes about budget, skills, and time:

{{< terms >}}

- Build or buy
- Off-the-shelf, open source, or custom
- Managed or self-hosted
- Extend an existing system or replace it
{{< /terms >}}

Interacting with a talk is a good test case. The right answer depends on what you assumed it means:

- If it means questions and polls, an existing audience tool may cover it. You pay with a second product for attendees to open and a dependency you don't control.
- If it means something only this conference needs, you'll probably build it. Then the three-month date and the size of your team decide how much of it you can build.

Then choose a style for the parts you build. The choice depends on what your team assumes about the system's size and how it will change:

{{< terms >}}

- Layered
- Modular monolith
- Service-based
- Microservices
- Event-driven
- Microkernel
{{< /terms >}}

This is where the second ground rule earns its place. Name a style, not a product, because picking a database before you know what the data is skips the problem entirely. Jumping straight to products is the anti-pattern known as [The Solution-First Thinker](/toolkit/#catas-to-avoid).

Now draw it. A context and a container diagram from the [C4 model](/toolkit/#c4-diagrams) are usually enough, and any notation works as long as another team can read it. Whatever you draw, make sure it shows:

- Each technology by its category, such as relational database, not by its vendor.
- Which parts you build and which you buy.
- A number on each key decision, matching its record.
- A title, and a key for its shapes and lines.

Each key decision gets an [architectural decision record](/toolkit/#architectural-decision-records), so the reasoning is written down by the time you present. In a kata, the record carries the decision's number, names two alternatives you considered, and states the trade-off you accept.

[Keeping a copy of the schedule on each phone](/what-is-a-kata/#what-a-brief-looks-like) makes a good first record. The alternatives are a schedule that lives only on the server and a copy kept on every phone. Choosing the copy means attendees can still read the program when the Wi-Fi drops, and the trade-off you accept is that every room change has to reach all of those copies.

If time runs short, stop drawing and finish the records. A half-drawn diagram with clear reasons says more than a full whiteboard nobody can explain, and rushing to fill the board is the anti-pattern known as The Empty Hands Fear.

Finally, turn your first release into a [release timeline](/toolkit/#release-timeline). Now that you know what you build and what you buy, you can see what really fits before ticket sales. A bought audience tool might let interaction ship early, while building your own could push it past this year's conference.

## Share

{{< handoff >}}
{{< handoff-item label="You bring" >}}

- Your three top characteristics, ranked.
- Your diagram, with its numbered decisions.
- Your decision records.
- Your release timeline.
{{< /handoff-item >}}
{{< handoff-item label="You leave with" >}}
- The questions other teams asked about your design.
- The assumptions you didn't know you were making.
{{< /handoff-item >}}
{{< /handoff >}}

Now every team presents to the room. Each one shows the same four things, so the designs are easy to compare:

1. Your three characteristics, in rank order.
2. Your diagram.
3. Your release timeline.
4. One key trade-off, usually the one you argued about longest.

Every team worked from the same brief, so the differences between the designs are the interesting part. They point to assumptions each team didn't know it was making, and that includes yours.

This is where the first ground rule matters most. When another team chose differently, ask what their design gives up and what yours does, instead of deciding who is right.

While the others present, ask each team at least one question about an assumption or a trade-off. Sitting through every presentation in silence is the anti-pattern known as The Silent Audience, and the questions you ask often show you what your own team took for granted.

If you're practicing alone, write the presentation down for someone who wasn't there. Ask them to question it, or set it aside for a day and question it yourself.

## After the Kata

Judgment grows over many katas, so the next one goes better if you look back at this one. Before you leave the table, ask yourselves:

- Did anyone start designing before the team agreed on its priorities?
- Did one voice settle most of the decisions?
- Which assumption mattered most, and did you write it down in time?
- Did you ask every presenting team a question?

Most of these are [anti-patterns](/toolkit/#catas-to-avoid), and they read differently once you've been through a kata. When you want another brief, [Ted Neward's collection](/toolkit/#architectural-katas) has plenty to choose from.
