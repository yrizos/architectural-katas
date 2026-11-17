# Homepage Narrative

The homepage takes the reader through a guided attempt at a kata, with team practice as its main focus. Solo practice remains an option.

## Keep the Progression Visible

Keep `Practice System Design as a Team` as the page title. Follow it with a short introduction before any section heading. Establish what an architectural kata is and why the reader will work through a fictional request with others. Do not begin with an unexplained sequence of headings.

Use the five stage names below as the main section headings, in this order. They describe the reader's progress through the exercise. The opening introduces the purpose, while each section explains the work at that stage. Avoid defining the exercise again under the first section heading.

Each section's introduction explains what the reader is about to do, why it matters at that point, and how it follows from the work already done. Connect sections through the conference problem and the reader's developing proposal. Do not rely on a heading or a phrase such as "for this kata" to establish context.

Carry the same exercise through the whole page. Do not restart the explanation of a kata, introduce an unrelated example, or repeat the brief's requirements in every section. Questions must help the reader reach a decision or identify consequential uncertainty.

Follow `docs/writing.md`. Give explanations enough context while keeping paragraphs focused and readable. Use lists for questions or independent items and prose to explain their purpose. Do not replace a transition with another checklist.

## Understand the Exercise

Build on the opening by explaining how to take part. Give the group size, time, and materials. Establish that no code is written and that participants must explain their choices so others can question them. Mention how a solo reader can follow the same progression without making solo and team practice competing narratives.

Keep the existing illustration in this section, between the practical setup and the explanation of examining proposals together.

The reader leaves this stage knowing what they will practice and what they need to begin. The next stage supplies the request they will work from.

## Encounter the Problem

Explain the role of a brief as the starting request from people who need a system. Introduce the fictional conference organizers and their situation before presenting their request. The reader must understand why this particular document appears here.

Keep `The Show Must Go On!` inside the beige brief box. Its title, labels, and requirement names are styled paragraphs, not headings in the page outline. Preserve the scenario's facts and deliberate gaps. Do not supply a preferred solution or invent answers on the organizers' behalf.

The reader leaves with the shared problem, its users, and its stated needs. Investigation follows because that request does not yet establish priorities or resolve the uncertainties that affect a design.

## Investigate the Problem

Explain how examining the request produces priorities and working assumptions. Use the conference's ticket-sales date, unreliable connectivity, and ambiguous attendee interactions to make the inquiry concrete.

Distinguish questions from answers. The ticket-sales date does not establish whether the platform must handle ticketing. Ask which needs matter first and what must remain useful during a failure. Do not assume every requirement belongs in the first release.

Ask the reader to distinguish facts from assumptions and identify which unanswered question could change a consequential choice. The reader carries these priorities and assumptions into the proposal, so the next section must use them rather than restart the requirements discussion.

## Develop a Proposal

Explain that the investigation gives the reader a basis for comparing alternatives. Ask them to judge options against their priorities, constraints, and assumptions before settling on an approach.

Use a choice already raised by the conference brief to ground the comparison. Do not imply that a particular style or technology is the right answer. The comparison must acknowledge what each option costs and why the reader prefers one in the circumstances they have stated.

Guide the reader to sketch responsibilities and connections and record the decisions, alternatives, and accepted costs. The result is a proposal with reasoning that can be questioned. The next stage challenges that reasoning against a changed need or an objection.

## Challenge the Reasoning

Explain that an initial proposal is ready to be examined, not proven to work. Introduce a hypothetical change to the same conference scenario and keep it clearly separate from the original brief.

Ask the reader to trace the effect through the proposal and identify which decisions or assumptions are affected. Support both peer questioning and solo review. Questions should examine the reasoning without prescribing a favorite solution.

Finish by asking the reader to retain, revise, or investigate a choice and explain why. A challenge does not require a different design if the existing choice remains justified. A discussion can reveal weaknesses but cannot establish production behavior or measured performance.

End with the reader recording what changed in their reasoning and what remains unresolved. Do not append a generic recap, a motivational slogan, or a new exercise.
