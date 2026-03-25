# Negotiation & Game Theory for Engineers

> A practical guide for salary negotiations, employer relationships, and career strategy.
> Based on game theory research: Axelrod (1980), Nash (1950), Spence (1973), Taleb (2012).

---

## The Core Mental Model

Most engineers treat job search as a series of one-on-one conversations. Wrong frame.

**Real structure:**
```
You      — one player
Company A \
Company B  — competing for you (auction dynamics)
Company C /
Market   — information environment, reputation layer
```

You're running an auction, not a negotiation. The difference:
- Negotiation: you vs one buyer, arguing over price
- Auction: multiple buyers competing, price rises naturally

Your job is to **create and maintain competition between companies**, not to argue with each one.

---

## Game Theory Basics (What You Need)

### Types of games

| Type | Definition | Your strategy |
|------|-----------|---------------|
| **One-shot** | Meet once, never again | Protect interests structurally (contracts, escrow) |
| **Repeated** | Will interact again | TfT — reputation compounds |
| **Zero-sum** | My win = your loss | Compete hard |
| **Non-zero-sum** | Both can win | Find Pareto improvements |
| **Incomplete info** | They don't know your BATNA | Strategic disclosure |

**Critical mistake:** playing one-shot strategy in a repeated game. Crypto is a small industry — almost everything is repeated through reputation.

### Nash Equilibrium

A state where no player wants to change strategy, knowing everyone else's strategy.

Key insight: **Nash Equilibrium ≠ optimal outcome.** It's just a stable trap.

Example: everyone works late at the office even though nobody wants to. Each person fears being the first to leave. Nash Trap.

**When to deviate unilaterally:**
```
Cost(staying in trap) > Cost(switching)
→ Leave. Mathematically justified, not just psychologically.
```

### Tit-for-Tat (TfT)

The winning strategy from Axelrod's 1980 tournament (63 strategies, repeated prisoner's dilemma).

**Four rules:**
```
1. NICE        — cooperate first, never attack first
2. RETALIATORY — respond to betrayal immediately, don't absorb it
3. FORGIVING   — after responding, return to cooperation
4. CLEAR       — be predictable, people know how you work
```

TfT wins not by being "good" — it wins by making cooperation the rational choice for everyone around you.

**When TfT doesn't apply:**
- Anonymous one-shot interactions → protect structurally
- Environments with many defectors → Generous TfT or exit
- Salary negotiation opening move → don't open first (see below)

### Shadow of the Future

The mechanism that makes cooperation stable:

```
Temptation to defect today < Value of future cooperation

If δ > 0.5 (you value future at least half as much as present)
→ TfT cooperation is mathematically optimal
```

In career terms: crypto is small enough that δ is always high. Your reputation follows you.

---

## Salary Negotiation: Full Playbook

### Principle 1: Whoever anchors first, wins

```
You name $180k → they hear the ceiling
They offer $150k → you "negotiate" to $170k
You got $10k less than you wanted

Correct approach:
Name $240k → they counter $200k → you settle at $220k
You got $40k more than if you started at $180k
```

**Always name the upper edge of your range, not the middle.**

### Principle 2: Never reveal first

```
They: "What are your salary expectations?"

❌ Weak:   "$180-200k"
❌ Naive:  "flexible, depends on the role"
✅ Strong: "What budget did you have in mind for this role?"
```

90% will name a range. You now know their ceiling without revealing your floor.

**If they insist you go first:**
```
"I'm targeting $240k — that reflects my level
 and what I'm seeing in the market right now."
```

Specific number + brief justification = doesn't sound random.

### Principle 3: Silence is a weapon

```
They name an offer.
You say nothing for 5-7 seconds.

Most people can't hold silence — they fill it with concessions.
Let them fill it.
```

Works especially well on calls.

### Principle 4: Never accept on the call

```
They: "So, do we have a deal?"

✅ "I'm very interested. I always take 24-48 hours
    before major decisions — I'll get back to you tomorrow."

Even if you want to say yes immediately.
```

Two reasons:
1. They don't know if you're excited or hesitating → leverage
2. A better offer sometimes appears in 24 hours

### Principle 5: Decompose the total number

```
$250k TC — what's inside?

Base salary    → paid always
Annual bonus   → depends on performance/company survival
Signing bonus  → one-time, often clawback if you leave early
Equity/RSU     → 4-year vesting, worth $0 if company fails
```

$150k base + $100k unvested equity ≠ $250k today.

Ask: "Can you break down the components?"

### Principle 6: Use offers as leverage

Once you have one offer, it becomes a tool for all others:

```
"I have an offer at $250k TC from another company.
 Your position interests me more for [specific reason].
 Is there flexibility on compensation?"
```

Not a bluff — a real offer. Changes their Nash equilibrium:
improve the offer or lose you.

### Three phrases that work

```
"That's below what I'm looking at — what can you do?"
(statement, not question; no apology)

"I'm ready to move on timeline/conditions
 if we can align on compensation."
(give them a win elsewhere)

"I need a day to think it over."
(never accept on the call)
```

---

## Building the Auction

### Your pipeline is your leverage

```
One active process  → you're asking
Three active processes → you're choosing
```

On every call, mention naturally:

```
"I have a few active processes right now —
 I'm looking to make a decision in the next few weeks."
```

True. Creates competition. Creates deadline. You don't look desperate.

### Timing the auction

```
Week 1-2: Run all first calls in parallel
Week 3-4: Push toward offers simultaneously
Week 5:   Use first offer to accelerate others
Week 6:   Decide
```

Don't let processes drag at different speeds. Synchronize them.

---

## Signaling Theory

Michael Spence (Nobel 2001): **costly signals are credible; cheap signals are not.**

```
Cheap talk: "I'm a strong engineer"
→ Anyone can say this. Ignored.

Costly signal: Production-grade open source project,
               77 tests, real architecture decisions
→ Weak candidates don't build this. Credible.
```

Your signals before the first call set the anchor. A strong GitHub/portfolio means the opening offer is higher before you say a word.

**Signals that cut you:**
- "Open to discussion" on salary → signals willingness to drop
- Responding too fast to offers → desperate signal
- Over-explaining why you left your last job → anxiety signal

**Signals that raise you:**
- Concrete technical depth in the interview → shows skin in the game
- Mentioning other active processes early → creates competition
- Taking 24h before responding → not desperate

---

## Long-Term Employer Relationships

### The repeated game reality

Every company you work at is a repeated game. Every engineer you work with is a node in a network that will resurface.

TfT as the default:
- Open, cooperative, deliver what you promised
- When mistreated: respond clearly, once
- Don't hold grudges beyond the response
- Stay predictable — people should know how you operate

### Early warning signals (one-shot behavior from employer)

Red flags that this is actually a one-shot game dressed as repeated:

```
- PTO < 30 days (they don't invest in you long-term)
- No clear growth path ("we'll figure it out")
- Vague equity terms ("it'll be worth a lot")
- "We're like family" (families don't need to say this)
- Rushed offer with artificial deadline pressure
```

When employers play one-shot, adjust strategy accordingly. Protect yourself structurally.

### Commitment devices work both ways

Good employers use them too:
- Equity vesting = your commitment device (stay 4 years)
- Signing bonus clawback = their retention device
- Probation period = mutual evaluation, not just yours

Read these for what they signal about the relationship the company expects.

### When to leave

Game theory answer: when staying in the Nash Trap costs more than switching.

```
Cost of staying = (below-market salary × months)
                + (opportunity cost of better roles)
                + (psychological cost of bad environment)

Cost of leaving = (job search time)
                + (income gap)
                + (relationship friction)

Leave when: Cost(staying) > Cost(leaving)
```

Don't moralize it. Calculate it.

**Clean exit = long-term asset.** Crypto industry is small. The person you give two weeks notice to is the person who refers you in three years.

---

## The Part-Time / Bridge Job Question

If you're between roles and taking a bridge position while searching:

**Be explicit upfront:**
```
"I'm actively looking for a full-time role in blockchain.
 I'm open to part-time as a bridge while that search continues."
```

They know the terms. No obligation to stay beyond what was implied.

**If they ask if you're looking elsewhere:** yes, be honest. "I'm in active search for a primary role."

Leaving after 2 months when a $240k offer comes isn't betrayal — it's the arrangement you both agreed to. Give proper notice, document your work, leave clean.

Guilt here is misplaced. You're not using people — you're two adults making rational decisions with shared information.

---

## Quick Reference: Decision Framework

```
Before any significant career decision:

1. What type of game? (one-shot / repeated / zero-sum / non-zero-sum)

2. What's the horizon? (days / years / reputation layer)

3. Nash Trap? (everyone doing X, X is suboptimal)
   → Check: Cost(switch) vs Cost(stay)

4. Who anchors first matters?
   → Salary: never anchor first
   → Technical discussion: go deep, it's a costly signal

5. What does this action signal to the market?
   → Costly signal or cheap talk?

6. TfT applies?
   → Cooperate first, retaliate if betrayed, forgive, stay clear
```

---

## Market Benchmarks (Web3/Crypto, Remote, 2026)

| Level | Base range | Notes |
|-------|-----------|-------|
| Senior Engineer (Go/Rust) | $160k–$240k | Core infra, distributed systems |
| Lead / Staff | $200k–$280k | Cross-team, architecture |
| Founding Engineer | $180k–$240k + equity | Startup, high equity component |
| TC with equity (top tier) | $250k–$350k+ | Coinbase, Paxos, top-funded |

**Rule:** name the upper edge, not the middle. If Senpi offered $250k TC, your opening ask is $240k base — not $180k.

---

*Sources: Axelrod R. (1980) The Evolution of Cooperation; Nash J. (1950) Equilibrium Points in N-Person Games; Spence M. (1973) Job Market Signaling; Taleb N.N. (2012) Antifragile; Kahneman D. (2011) Thinking Fast and Slow*
