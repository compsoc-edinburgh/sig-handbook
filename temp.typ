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
+ "is" and "must" is a requirement, "should" is an ideal situation that should 
  be aimed for, "may" is a choice a committee has avaliable to them but not a 
  requirement.
+ A "hard majority" is a vote in favour by equal or greater to two thirds of
  total committee, a "soft majority" is greater than half of committee at a
  meeting.

= Modifying this document
+ The process for modifying this document is as follows:
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
    #link(<suggestions>) for suggestions on how to do this. Voting should be
    done in person so the motion submitter can defend their decision or
    concerns can be raised. It may also be a good idea to make a discussion
    thread for a motion before it is voted on, to save time in committee 
    meetings.
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
+ A committee may defer an internal vote to CompSoc if they are unable to reach
  a decision, however a limit may be put on this if it is overused.
+ If a disagreement about leadership arises, a SIG may request CompSoc Vice
  President (who may delegate this task to a chosen representitive also on
  CompSoc committee) to assist in resolving the issue and/or mediate in any
  discussion.

= Activities and Events
+ SIGs must run at minimum one activity or event per month while university is
  in-session to be considered active.
+ Please see #link(<suggeestions>) for ideas on activities and events.

= Suggestions <suggestions>
This segment is for committee's to pass on knowledge about ways of doing things
to future generations and does not require a vote to modify. The only
requirement is CompSoc committee is made aware of a suggestion you'd like to
add. This is so changes can be tracked and to avoid irresponsible additions.
+ Use google forms or something like that for voting and make the CompSoc VP
  make the form so no one else can see responses. I know it sucks but it can't
  be 100% anonymous as someone needs to make sure the right people voted and
  no one is counted twice.
+ Be wary of trying to run elections in a SIG, you all know who's worked the
  hardest this year and would be good to leave in charge, and elections kill
  sigs. like, in under a year. its bad.
+ Activities are eg. pub nights, practice sessions, project sessions, weekly
  meetings, coffee's, etc. but should be somewhat related to the SIGs goals.
+ Events are hackathons, CTFs, conferences etc and not everyone has to run one
  of these ok especially if your sig can't afford it!!
