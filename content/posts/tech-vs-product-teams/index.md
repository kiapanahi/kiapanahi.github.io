+++
title = "Peers or Laborers? Notes from a Talk on Tech, Product, and What Nobody Said"
date = 2026-06-21
tags = ["product", "engineering", "leadership", "tech-debt", "collaboration", "ai", "career"]
categories = ["Leadership", "Career"]
description = "Notes from a salon on the tech & product divide: why tech debt is a discipline not a permission slip, the contradiction of wanting peer standing with a laborer's posture, project vs. product, roles over positions, and the AI elephant nobody let in the room."

[cover]
  image = "header.png"
  relative = true
+++

A few nights ago I found myself in another one of those rooms.

Same shape as the last one I wrote about: a circle of experienced people, a general topic and coffee and networking breaks. This time the subject was the relationship between tech and product teams; specifically, the friction in how they communicate, and why the two so often end up talking past each other.

It's a good topic. It's also a trap. Everyone in a room like that has a war story, and war stories are easy to tell and very hard to learn from. So we told them. And somewhere between the third and fourth anecdote, I started noticing the things we *weren't* saying - which, as usual, turned out to be the interesting part.

## The tech-debt complaint that argued against itself

The conversation found tech debt almost immediately. They always do.

The shape was familiar, and you already know the line:

> "Product just won't give us the time to fix it."

Heads nodded. Everyone had a version. And for a while it felt like solidarity - the engineers, misunderstood, kept on a treadmill of features while the foundations quietly rot.

But two things never got said, and their absence bothered me more the longer I sat with it.

**First, nobody asked why the debt was there in the first place.** Tech debt rarely arrives as sabotage from the product side. Most of it we *co-signed* - a shortcut we agreed to under a deadline, a "we'll clean it up next sprint" that everyone in the room knew, at the time, was a polite fiction. Some debt really is imposed on engineering. But a lot of it is a loan *we* took out and then resented paying back. If you can't name where the debt came from, "give us time to fix it" is just a feeling, not a case.

**Second, nobody proposed an actual mechanism.** Every framing assumed the fix was a one-off grant: a tech-debt sprint, a hardening week, a holiday from feature work that someone upstairs has to *approve*. Nobody mentioned the **Boy Scout rule** - leave the code a little better than you found it, every single time you touch it. Nobody talked about pricing cleanup into the estimate so it stops being a separate negotiation. Nobody framed debt repayment as a steady background process instead of a quarterly act of charity.

That's the part that gets me:

> **Tech debt you can only repay by asking permission is tech debt you will never repay.**

If the only path to a healthier codebase is a special occasion that product has to bless, you've already lost. The healthier model is boring and continuous - a few basis points of interest paid down inside the normal flow of work, invisible on the roadmap, present in every pull request. You don't ask permission to write a test or rename a confusing variable. You just leave the campsite cleaner. The big rewrites get a lot smaller when the small repayments never stop.

## The expectation of a peer, the posture of a laborer

There was a second pattern in the room, subtler and a little more uncomfortable to name.

Several people wanted to be in *every* conversation - product direction, prioritization, scope, roadmap, the lot - and in nearly the same breath asked for *allowance* to do their own work. Time they had to be *given*. Space they had to be *permitted*.

The phrase that crystallized it for me, and I'll stand by it:

> The expectation of a peer, but the real-world demand of a laborer.

You can't hold both, and here's why. A seat at every table and the right to ask permission for your own judgment are bought with the same currency: **ownership**. Peers don't ask to be allowed - they decide, and then they answer for the decision. Laborers are handed scope and ask for the time to deliver it. Both are honorable. But wanting the *standing* of the first while keeping the *safety* of the second is incoherent, and people can feel the incoherence even when they can't articulate it.

There's a quieter contradiction underneath, too. If you insist on being present in every decision, that presence *is* the tax. The meetings you fought to be invited to are the exact hours you then complain you don't have. You cannot sit in every room and also fence off your calendar. At some point being everywhere becomes its own kind of debt.

The way out isn't to retreat. It's to **choose your mode and pay its price.** If you want to be a peer in the rooms where bets are made, bring a peer's accountability into them: own the trade-off, make the call, and stop framing your own work as something you need a hall pass for. I keep coming back to a line from when I wrote about agentic coding - you can delegate keystrokes, but you can't delegate accountability. The same thing is true here, just pointed at people instead of agents.

## Project and product are not the same word

Somewhere in there I made a point that I think slid past the room, so let me make it properly here: **project management and product management are different crafts.**

Product is *what* and *why*. It is the outcome or the thing we bet on. The decision about which problems are worth solving and which to leave on the floor. Project is *how* and *when*. The coordination, the sequencing, the delivery, the unglamorous work of getting a thing across the line with the people and time you actually have.

We usually stuff both into one human, label them "the PM," and then act surprised when the seams show - when the person who's brilliant at delivery keeps shipping things nobody needed, or the person with razor-sharp product instincts can't get a release out the door. These are two skill sets. Sometimes they live in one person; often they don't. Naming them separately is the first step to staffing them honestly.

## Roles, not positions

Which brings me to the reframe I'd actually defend as the constructive heart of all this.

Most of the friction between tech and product, when you strip the anecdotes away, is a fight over **positions** - seats on the org chart, titles, territory. *Whose call is this. Who owns that. Who's allowed in.* It's a turf argument dressed up as a process argument.

I'd rather talk about **roles**.

A position is something you *occupy*. A role is something you *play*. Think of a theater company: the org chart says who's employed, but the production says who's playing the lead tonight. An actor takes a part for a season and then hands it back; nobody mistakes the role for the person. Software works better when we treat it the same way. An engineer can take on the role of a **product-development specialist** for a quarter - sitting close to users, shaping the *what* - and then return to building. A product person can take the role of delivery lead for a release. Roles are fluid, contextual, and temporary. Positions are rigid and possessive.

> **Stop defending your position. Start noticing which role the work needs from you right now.**

Almost every "that's not my job" dissolves the moment you stop asking which *position* owns a problem and start asking which *role* the moment is calling for - and who in the room is best placed to play it for a while.

## The elephant that never walked in: AI

And here's what struck me hardest on the drive home - not anything that was said, but the thing that wasn't.

We spent over an hour on the boundary between tech and product, and **not one person mentioned AI.**

That's a remarkable omission in this particular year, because AI is doing something specific to this exact boundary: it's compressing the distance from idea to working software, and when implementation gets cheap, the line everyone was arguing over *moves*. The whole tech-vs-product tension assumes a world where building is the slow, expensive, scarce part - where engineering's leverage comes from being the gate. Take a chunk of that scarcity away and the negotiation changes underneath you.

The funny thing is that the room was *circling* the consequence without naming the cause. When building gets cheaper, the scarce resource becomes clarity, judgment, and taste - knowing *which* thing to build and being able to tell good from plausible. That's the same conclusion I landed on writing about spec-driven development: engineering gets more editorial, product gets more experimental, and the specification becomes the handshake between them. The tech-product conversation we should be having isn't "who gets to decide." It's "what does this collaboration even look like when the cost of a wrong build drops by an order of magnitude." Nobody put that on the table. I wish I'd pushed harder to.

## What I'm taking away

It would be easy to end this as a cynical post - *the room didn't get it, the senior crowd is shallow.* These were supposedly capable people describing real pain. However, what they were missing was vocabulary. A shared way to name what's actually going on so the conversation can go one layer deeper than the war stories.

So maybe the honest takeaway is the one I keep relearning at these things: the value isn't in winning the room. It's in leaving with a better question than you walked in with.

The tech-product divide was never a border to defend. It's a seam to keep stitching - and right now, with the tools changing under our hands, the stitching is most of the job.
