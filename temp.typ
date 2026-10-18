#set document(
    title: "CompSoc SIG Handbook"
)

#show title: set text(size: 20pt)
#show title: set align(center)
#show title: set block(below: 1.2em)

#set page(
    paper: "a4",
    number-align: center,
    numbering: "1",
)

#set heading(
    numbering: "1.1"
)

#set text(
    font: "New Computer Modern",
    size: 11pt,
    lang: "en"
)

#set enum(
    full: true,
    numbering: (..n) => context {
        let headings = query(selector(heading).before(here()))
        let last = headings.at(-1)
        counter(heading).step(level: last.level + n.pos().len())
        context {counter(heading).display()}
    }
)

#show link: set text(weight: 700)
#show link: underline

#let redact(text, fill: black, height: 1em) = {
    box(rect(fill: fill, height: height)[#hide(text)])
}

#[
    #set page(
        margin: (
            bottom: 10%,
        ),
        numbering: none
    )
    #set align(center)

    #[
        #set align(top)
        #v(30%)
        *SIG Handbook*\
        *Edinburgh University CompSoc*\
        c/o Edinburgh University Students Association\
        5/2 Bristo Square Potterrow\
        Edinburgh\
        EH8 9AL
    ]

    #[
        #set align(bottom)
        #text(green)[PUBLIC] \
        #datetime.today().display("[year]-[month]-[day]")\
    ]

    #counter(page).update(0)
]
#outline()

= Foreword
This document outlines the baseline requirement for all SIGs. SIGs 
fundamentally should be free to manage themselves, however it is the beleif of
CompSoc that there are some things which are non-negotiable to keep SIGs
functioning and to keep everyone safe.

This is not a document for SIGs to edit. There are provisions for this to be
modified through a formal process, however as these conditions are fundamental
in maintaining the safety of everyone involved this document is intended to
stay mostly static.

Thank you to all involved in keeping our SIGs best-in-class, you make CompSoc
great.

Thank you to Marton, the author of the SIG handbook before the 2026 rewrite,
who large portions of this document have been mercilessly copied from.

CompSoc \<3 you, from Skye, Emily, and all editors who may
follow (add your names).

== Formalisation of Terms
+ "will" and "must" is a requirement, "should" is an ideal situation to
  be aimed for, "may" is a choice a committee has avaliable to them but not a 
  requirement.
+ A "hard majority" is a vote in favour by equal or greater than two thirds of
  total committee, a "soft majority" is greater than half of committee at a
  meeting. Unless otherwise mentioned, when relating to CompSoc committee
  specifically, a hard majority is committee only, a soft majority is committee
  plus SIG representitive members present at a meeting, one vote per SIG.
+ University in session means any time the uni should typically be running.
+ Out of session is breaks/holidays, and informally also reading weeks and exam
  periods. Unless its an emergency, leniency on how fast things can be done
  will be given during these times. Out-of-session does not include strike days
  or any other day where everyone is in Edinburgh and university would normally
  be teaching classes, unless otherwise stated.

= Modifying this document
The process for modifying this document is as follows:
  + Before a motion is brought forward, adequate steps should be taken to
    discuss the concept of the motion within the committee that is filing it
    (be that SIG committee or CompSoc) as well as with SIGs affected or other
    SIGs in general. This is to avoid re-filing with modifications if the
    motion is struck down.
  + A SIG president or SIG executive or a member of CompSoc committee brings
    forward a motion to modify this document. This motion must contain a
    suggested change as well as a motivation for this change.
  + This motion will be voted on in a CompSoc committee meeting. The following
    requirements are sorted in order of priority, and are mirrored in the
    CompSoc constitution but are here for information. Changes to this section
    specifically must be done through a constitutional amendment at a GM due to
    this, although an emergency modification may be made through the following
    process. The newest modification must be held as priority.
      + All SIGs must be made aware of when and where the meeting to vote will 
        be held, and given a copy of the motion with proposed changes at 
        minimum 72 hours before the meeting. Importantly, the reason for filing
        and the SIG who put the motion forward should not be communicated. This
        is to allow SIGs with legitimate concern about another SIGs actions to
        step forward without SIG committee fearing retribution.
      + This meeting must be held before an upcoming holiday or break unless
        the committee who put forward the motion agrees to have it after.
      + This meeting must be at maximum three meetings after the motion if 
        brought forward.
    SIGs may send either their president or another committee member the
    president designates as a representitive. Multiple members of a SIG may be
    present to discuss but final votes are from the president or their
    representitive.
  + Voting must be done in a way to promote anonimity for the ones voting. See
    the #link(<suggestions>)[suggestion section] for suggestions on how to do 
    this. Voting should be done in person so the motion submitter can defend 
    their decision or concerns can be raised. It may also be a good idea to 
    make a discussion thread for a motion before it is voted on, to save time 
    in committee meetings.
  + If a motion is passed it is integrated into this document.
  + If a motion fails it may be brought back under one of the following
    conditions:
    + A situation has changed significantly enough to warrant reconsideration
    + A modification to address complaints has been made.
    + Someone has come to harm requiring a motion to be reconsidered even if it
      failed before.
    + A motion is over 6 months old, or from a previous committee set and the
      new SIG committees resonably may have a different view on it.
    + Enough SIGs have, in writing, expressed their desire to change their vote
      on a previous failed motion to tip the scales.

= Committee
+ A committee must have at minimum three members, one of which is designated as
  the president.
+ Committee must uphold the goal of the SIG and of CompSoc.
+ Committee must not put anyone in danger, allow harm to come to a member
  while at a committee activity or event, and uphold the rights of every
  member, including keeping event inclsivity in mind and preventing hatespeech,
  antisocial behaviour, and crimes.
+ SIGs may reach out to the CompSoc EDI Representitive for help or guidence on
  keeping events accessable and safe.
+ A committee may defer an internal vote to CompSoc if they are unable to reach
  a decision, however a limit may be put on this if it is overused.
+ If a disagreement about leadership arises, a SIG may request CompSoc Vice
  President (who may delegate this task to a chosen representitive also on
  CompSoc committee) to assist in resolving the issue and/or mediate in any
  discussion.

= CompSoc committee meetings
+ SIGs may attend CompSoc committee meetings and vote in votes.
+ SIGs may vote in CompSoc general committee meetings, in which case a SIG
  posesses one vote regardless of the amount of members present. The SIG must
  have a representitive present to vote, although an exception may be made if
  a SIGs representitive has made a sufficient effort to make committee aware 
  they'd like to vote online.
+ A SIG representitive is either the president or a SIG committee member the
  president has designated as their representitive.

= Activities and Events
+ SIGs must run at minimum one activity or special event per month while 
  university is in session to be considered active. In session time for this
  point specifically does not include strike days. A SIG may choose to be
  involved in a strike.
+ An activity is an often recurring event. These are core to the SIGs running.
+ A special event is one which happens yearly, or is in some way larger or
  requiring more planning than an activity.
+ Please see the #link(<suggestions>)[suggestion section] for ideas on 
  activities and events.

= Finance
+ SIGs must use the CompSoc bank account unless granted an exemption.
+ Exemptions are granted and removed by a soft majority CompSoc committee 
  w/o SIGs vote.
+ Any CompSoc committee member may ask to audit a SIG private bank account,
  at which point the SIG committee must send an electronic bank statement
  dating back 3 months or more to the requester within 72 hours while
  University is in session or 1 week while it is out of session. If the bank
  only provides paper bank statements, an electronic proof of statement request
  must be sent instead and the actual statement must be handed over once it
  arrives.
+ SIGs must NEVER enter into debt. Committees should also not knowingly put a
  SIG into a financial or sponsorship position where the next committee is
  severely disadvantaged.
+ SIGs may request funding from CompSoc.
+ SIGs must not charge members for any activities or services provided by the
  SIG.
+ SIGs must not charge subscriptions of any kind.
+ SIGs may charge for tickets to special events.
== Sponsorship
+ SIGs may seek their own sponsors. Any funds raised belong to that SIG alone.
+ Contracts must not extend over a year to a new committee, but may have a 
  renewal mechanism a following committee may use to get that sponsor for 
  another year.
+ A SIG should seek prior approval and make appropriate notification before
  contacting, seeking out, or aquiring a sponsor another SIG or CompSoc is
  already sponsored by. This is to prevent sponsor poaching.
+ A sponsorship is the only relationship a SIG may have with a company. SIGs
  must never be owned or operate under another company.

= Communication and Branding
+ SIGs must acknowledge their affiliation with CompSoc as a Special Interest 
  Group on their website and communication channels.
+ SIGs may use CompSoc's communication channels to promote their events and 
  activities, subject to restrictions and queuing requirements.
+ SIGs may request to bridge the general and announcement channels of their 
  Discord servers to a dedicated channel in the CompSoc Discord server.
+ SIGs may request branding and promotion help from the CompSoc Graphic 
  Designer.

= Code of Conduct
+ SIG members who violate the EUSA Society Code of Conduct will be subject to 
  disciplinary action. Please see the #link(<diciplinary>)[diciplinary action
  section] for details.

= SIG Renewal
+ SIGs must provide the CompSoc committee with an annual update on their 
  membership, activities, and plans for the upcoming year.

= SIG Mandates
A new addition to this document is SIG Mandates. This is a mechanism for SIGs
to make expansions to the handbook which apply to their own SIG. The following
are points on what must should and may be in a mandate. It is not an exclusive
list. It is recomended to read the #link(<suggestions>)[suggestion section]
when making or modifying a mandate.
== A mandate must include:
+ The mechanism to update the mandate
+ A resonable mechanism for a vote of no confidence to be cast by members
  against committee. This is to prevent a bad committee remaining in power if
  ever one emerge.
== A mandate should include:
+ A mechanism to vote on contraversial sponsors.
== A mandate may include:
+ Defined roles and responsabilities for certain members of SIG committees
  beyond the president.

= Disciplinary Action <diciplinary>
= Against a member
= Against a SIG or its Committee

= Inactivity
Inactivity is a natural state for a SIG which has reached the end of its life. 
If a SIG becomes inactive by abandonment, it should be allowed to die, but 
CompSoc must do its best to preserve documentation in case it is ever to be 
restarted, and for its historical significance. Following are a few
definitions:


= Suggestions <suggestions>
This segment is for committee's to pass on knowledge about ways of doing things
to future generations and does not require a vote to modify. The only
requirement is CompSoc committee is made aware of a suggestion you'd like to
add. This is so changes can be tracked and to avoid irresponsible additions.
- Use google forms or something like that for voting and make the CompSoc VP
  make the form so no one else can see responses. I know it sucks but it can't
  be 100% anonymous as someone needs to make sure the right people voted and
  no one is counted twice.
- Be wary of trying to run elections in a SIG, you all know who's worked the
  hardest this year and would be good to leave in charge, and elections kill
  sigs. like, in under a year. its bad.
- Activities are eg. pub nights, practice sessions, project sessions, weekly
  meetings, coffee's, etc. but should be somewhat related to the SIGs goals.
- Events are hackathons, CTFs, conferences etc and not everyone has to run one
  of these ok especially if your sig can't afford it!!
