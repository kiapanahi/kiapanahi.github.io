---
title: "When Specs Become the Interface: Notes from a Talk on Spec-Driven Development and Agentic Frameworks"
date: 2025-12-23
tags: ["ai", "agents", "github", "spec-kit", "spec-driven-development", "copilot", "software-engineering"]
categories: ["AI", "Software Engineering"]
description: "Lessons from trying GitHub Spec Kit: how spec-driven workflows reshape agentic coding, where Copilot fits, and why verification keeps the loop honest."
cover:
  image: header.png
  relative: true
  caption: "Specs → agents → code (but never without verification)."
  alt: "Spec-driven development meets agentic coding: specs, instructions, and an AI assistant bridging idea to implementation."
---

A couple of nights ago I caught myself doing something that would've sounded ridiculous just a year ago:

I was "working" without writing code.

Not in the *I'm procrastinating* way. In the *I'm building the thing* way.

I had GitHub's **Spec Kit** open in one tab, a chat window in another, and a repo that already felt… oddly more alive than most projects do at day zero. The weird part wasn't that an LLM could generate code. We all saw that movie.

The weird part was that the *specification* had started to feel like the primary artifact - not a README, not a ticket, not a backlog item. A spec that actually *drives* the implementation, rather than being a polite suggestion we abandon the moment we open the IDE. That's pretty much the promise Spec Kit advertises: a structured toolkit for "spec-driven development" where the workflow reorganizes around specifications, plans, and tasks instead of raw code-first thrashing.

And it worked well enough to make me uncomfortable - the good kind of uncomfortable.

## The tiny files that quietly changed how agents feel

Before Spec Kit, the "agentic era" mostly meant prompt rituals.

You'd open a chat and re-explain the same things like you're onboarding a new teammate every morning:

- what this repo is,
- how to build it,
- what style you expect,
- what "done" means,
- and which shortcuts are unacceptable.

Then `AGENTS.md` started showing up.

The pitch is simple: treat it like a **README for agents** - a predictable place where tools can automatically pick up project context and working agreements.

In parallel, GitHub Copilot (and editors like VS Code) normalized another tiny but powerful contract:
`.github/copilot-instructions.md` - a repository instruction file that gets automatically attached to Copilot Chat requests inside your workspace.

These files didn't feel revolutionary at first. They felt… administrative.

And then one day you notice you stopped repeating yourself.

Agents become less like a slot machine and more like a junior engineer who has actually read your onboarding doc.

That's when the "vibe coding" vibe starts to harden into something closer to engineering.

## Spec Kit felt like the missing ritual: "solve it on paper, then code it"

Spec Kit didn't magically make the model smarter.

It made *me* behave better.

It nudged me into the flow I already know is correct but rarely follow under pressure:

1. write the constraints,
2. clarify the edges,
3. decide what "correct" means,
4. then implement.

Spec Kit's worldview is basically: **specs aren't scaffolding** - they're the source of truth, and they should be detailed enough to drive planning and implementation.

If you've ever thought, *"If I could just pour what's in my head onto paper, the code would be obvious"* - this is that, but operationalized.

Which brings us to the spicy part.

## The wrong apocalypse: it's not "engineering jobs disappearing"

There's a popular story people keep telling: *software developers are doomed*.

I agree with a narrower version:

The era of **"translate English specs into CRUD business apps"** is shrinking fast.

If your job is mostly turning tickets into endpoints, the ground is moving under your feet.

But the need for **problem solvers** isn't going anywhere.

Kernel folks, runtime folks, compiler folks - sure, they still sleep fine. But even in "boring" business software, the real value has always been in the parts that don't fit neatly in a ticket:

- carving the right boundaries,
- choosing trade-offs you can live with,
- predicting failure modes,
- designing for observability and change,
- preventing your future self from hating you.

AI doesn't remove those problems.

It removes the comfort of pretending they were optional.

And the truly dramatic shift is this:

The loop from *idea* → *working system* has been cut from weeks to hours (sometimes less).

So if engineering velocity is no longer the bottleneck…

…then who becomes the bottleneck?

## My controversial suspicion: product roles will feel the heat first

I'm not saying product owners or project managers "vanish."
But I *am* saying the job changes shape.

When implementation becomes cheap, the scarce resource becomes:

- clarity,
- taste,
- prioritization,
- and a ruthless ability to test reality.

In the old world, slow execution covered up mediocre ideas. You had time to adjust the story while engineering crawled.

In the new world, fast execution exposes mediocre ideas immediately.

So yes - in a world where agents can turn a halfway-decent spec into a credible implementation quickly, product roles can't survive on process gravity alone. They'll be forced upward: better hypotheses, sharper narratives, more ambitious thinking, more real user insight.

That thought was bouncing in my head when I walked into a tech talk I'd been invited to - the one about agentic frameworks and workflows very similar to Spec Kit.

## The talk: "I haven't used my IDE in two months"

The presenter was talented. Confident. Convincing.

He showed his "agentic framework" - basically a structured approach to get from intent to code. It looked a lot like what Spec Kit formalizes: a sequence of steps that turn messy thoughts into a plan and then into implementation.

Then he casually dropped the line:

> "I haven't used my IDE for the past two months. I only use the LLM chat interface."

That's the moment my brain did the engineering equivalent of a record scratch.
He wasn't joking. He framed it as evolution - like leaving the IDE behind is the adult form of coding. And then came the part that bothered me more:

He said he wouldn't concern himself too much with the code written by the agent.

Not "I review at a higher level."
Not "I rely on tests and CI and guardrails."

More like: *the agent writes it; I ship it.*

I know why that sounds seductive. I felt the seduction too.

But it's still a trap.

## Skipping the IDE isn't rebellion. It's skipping the feedback loop

An IDE isn't just a typing tool.

It's a **real-time truth machine**.

It's where the code stops being a story and becomes a system with consequences:

- types disagree with you,
- references reveal coupling,
- navigation shows you the real architecture (not the intended one),
- warnings surface future bugs,
- tests become a first-class citizen instead of an afterthought.

An LLM chat can generate a lot of plausible text.

But plausibility is not correctness.
And correctness is not safety.
And safety is not maintainability.

The moment you stop caring about what the agent wrote, you've done something subtle:

You've outsourced *ownership*.

And ownership is the job.

If you're building toy projects, maybe that's fine.

If you're building systems that touch money, identity, compliance, or people's time… "don't look too closely" is how incidents are born.

## The healthier bargain: let agents sprint, but force them through reality

Here's the version I *do* believe in:

Use the agent like an accelerant - but keep the verification loop brutally human and brutally automated.

A workflow I keep coming back to looks like this:

- **Spec as contract**: what are we building, what are we not building, what constraints matter.
- **Plan as proof**: show the steps and trade-offs before touching the repo.
- **Code as output**: let the agent produce volume.
- **Reality checks**: run tests, lint, type-check, security scans, and review diffs like you're reviewing a human teammate.

This is where files like `AGENTS.md` and `.github/copilot-instructions.md` stop being "nice to have" and become governance: they encode expectations so the agent doesn't drift, and they reduce prompt entropy across the team.

Spec Kit fits here nicely because it encourages structure and clarification before implementation - the exact phase most teams skip when they're "moving fast."

In other words:

**You can delegate keystrokes.  
You can't delegate accountability.**

## What changes next (and what I'm watching)

I think we're going to see two things happen at the same time:

1. **Engineering becomes more editorial.**  
   Writing specs, shaping constraints, reviewing diffs, curating architecture, and insisting on verification becomes the core craft.

2. **Product becomes more experimental.**  
   Faster implementation forces better idea throughput: sharper hypotheses, faster user learning, and more courage to kill features that don't earn their keep.

And somewhere in the middle, a new shared language emerges:

Specs become the handshake between product intent, engineering discipline, and agent execution.

The teams that win won't be the ones that "never open an IDE again."

They'll be the ones who treat specs as first-class, agents as high-leverage interns, and verification as non-negotiable.

Because in the end, software was never about typing.

It was about *thinking clearly* - and leaving behind a system that still makes sense when you're not in the room.

And if the agent-first era does anything good for us, I hope it makes that truth impossible to ignore.
