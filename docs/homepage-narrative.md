# Homepage Narrative

The homepage takes the reader through a guided attempt at a kata, with team practice as its main focus. Solo practice remains an option.

## Keep the Progression Visible

Keep `Practice System Design as a Team` as the page title. Follow it with an introduction before any section heading. Open with a scene of a design project before anything is decided, where a few people at a whiteboard each have reasons the others haven't heard. Place the whiteboard illustration after that opening paragraph. Then establish what an architectural kata is and why the reader will work through it with others. Preview the arc in prose and say what the reader finishes with, including that no single answer is expected. Do not begin with an unexplained sequence of headings.

The page reads as a guided walkthrough in the second person. Warmth comes from concrete scenes from the brief and from honest reassurance that there is no single answer. The page never refers to a session, event, delivery format, or facilitator.

Use the five section names below as the main section headings, in this order. They describe the reader's progress through the exercise. The opening introduces the purpose, while each section explains the work at that stage. Avoid defining the exercise again under the first section heading.

Each section's introduction explains what the reader is about to do, why it matters at that point, and how it follows from the work already done. Connect sections through the conference problem and the reader's developing proposal. Do not rely on a heading or a phrase such as "for this kata" to establish context.

Carry the same exercise through the whole page. Do not restart the explanation of a kata, introduce an unrelated example, or repeat the brief's requirements in every section. Questions must help the reader reach a decision or identify consequential uncertainty.

Sections contain no subheadings. A section uses a list only for questions the reader works through, and the paragraph before the list says why those questions matter.

A callout is a beige box with a line icon that holds one instruction the reader must not miss. Use one for the rule that every choice comes with a reason, for the open question to mark, and for the what-if. A callout is not a subheading and does not replace the paragraph around it.

Follow `docs/writing.md`. Give explanations enough context while keeping paragraphs focused and readable. Use lists for questions or independent items and prose to explain their purpose. Do not replace a transition with another checklist.

## Carry Work Forward

Each stage opens from what it received and hands something specific to the next. The reader keeps a page for notes from the start.

- Getting Started sets up the notes and the rule that every choice comes with a reason.
- Finding the Gaps produces priorities, assumptions kept apart from the brief's facts, and one marked open question.
- Sketching a Design uses those items to produce decisions with their alternatives and accepted costs.
- Challenging the Design tests those decisions, returns to the marked question, and records what changed and what remains unresolved.

A talk moving to another room is the running example. It appears when the reader investigates, when the reader traces the sketch, and when the reader tests the proposal.

## Getting Started

Build on the opening by explaining how to take part. Give the group size, time, and materials. Establish that no code is written. State the rule that every choice comes with a reason in a callout, and explain that the group asks what makes an approach suitable and what it makes harder. Introduce the habit of keeping notes, because each stage hands something to the next. Mention in one clause that a solo reader follows the same progression, without previewing how solo review works and without making solo and team practice competing narratives.

The whiteboard illustration belongs to the introduction, not to this section.

The reader leaves this stage knowing what they will practice and what they need to begin. The next stage supplies the request they will work from.

## Reading the Brief

Introduce the fictional conference organizers and their situation before presenting their request, and say the brief is shown below. Tell the reader to read the brief as written and then again for what it leaves out, because those gaps shape the design as much as the stated needs.

Keep `The Show Must Go On!` inside the beige brief box. Its title, labels, and requirement names are styled paragraphs, not headings in the page outline. Preserve the scenario's facts and deliberate gaps. Do not supply a preferred solution or invent answers on the organizers' behalf.

The reader leaves with the shared problem, its users, and its stated needs. Investigation follows because that request does not yet establish priorities or resolve the uncertainties that affect a design.

## Finding the Gaps

Explain how examining the request produces priorities and working assumptions. Use the conference's ticket-sales date, unreliable connectivity, and ambiguous attendee interactions to make the inquiry concrete. Picture an attendee heading to a room just as a talk moves, then give the questions that lead to priorities.

Distinguish questions from answers. The ticket-sales date does not establish whether the platform must handle ticketing. Ask which needs matter first and what must remain useful during a failure. Do not assume every requirement belongs in the first release.

Ask the reader to distinguish facts from assumptions. Close the section with a callout that asks the reader to mark the one open question that could change the design the most. The reader carries these priorities and assumptions into the proposal, so the next section must use them rather than restart the requirements discussion.

## Sketching a Design

Explain that the investigation gives the reader a basis for comparing alternatives. Ask them to judge options against their priorities, constraints, and assumptions before settling on an approach.

Use a choice already raised by the conference brief to ground the comparison. Do not imply that a particular style or technology is the right answer. The comparison must acknowledge what each option costs and why the reader prefers one in the circumstances they have stated.

Guide the reader to sketch responsibilities and connections and record the decisions, alternatives, and accepted costs. The result is a proposal with reasoning that can be questioned. The next stage challenges that reasoning against a changed need or an objection.

## Challenging the Design

Explain that an initial proposal is ready to be examined, not proven to work. Present a hypothetical change to the same conference scenario in a callout and keep it clearly separate from the original brief. The change must be a need the brief does not already state, such as a second venue with its own schedule, and the reader returns to the marked question when tracing its effect.

Ask the reader to trace the effect through the proposal and identify which decisions or assumptions are affected. Support both peer questioning and solo review. Questions should examine the reasoning without prescribing a favorite solution.

Finish by asking the reader to retain, revise, or investigate a choice and explain why. A challenge does not require a different design if the existing choice remains justified. A discussion can reveal weaknesses but cannot establish production behavior or measured performance.

End with the reader recording what changed in their reasoning and what remains unresolved. Do not append a generic recap, a motivational slogan, or a new exercise.
