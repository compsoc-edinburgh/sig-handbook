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
This handbook contains a list of regulations, split into three different
levels, which aims to guide Special Interest Groups (SIGs, a.k.a. 
Sub-committees in EUSA regulation) through daily and yearly operation. The goal 
of this regulation is for SIGs to primarily manage themselves. In almost all 
cases CompSoc should not and should have no reason to be involved in the 
day-to-day running of a SIG. To that end, this document is created.

There are two major changes in this document which should be reviewed first,
the inactivity proceedings which formalise actions CompSoc may take, and the
addition of SIG mandates.

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

= Committee
+ All SIG committee members must uphold the SIGs primary objective 
  to provide benefit to CompSoc members and the world at large.
+ A committee must be made up by at minimum one president and two additional 
  members to act as "watchdogs" so no committee operates without the possiblity 
  of voting against the president.
+ Presidents and all committee must remember that everyone involved in running
  a SIG is a volunteer, and do all possible to reduce stress and friction
  within a SIG.
+ A committee should be made up of an odd amount of members to avoid a voting 
  tie
+ The president is responsible for the management and operations of the SIG,
  and may delegate tasks as seen fit.
+ A committee may defer a decision to CompSoc if they are unable to reach a
  decision, however a limit may be put on this if it is overused.
+ If a disagreement about leadership arises, a SIG may request CompSoc Vice 
  President (who may delegate this task to a chosen representitive also on
  CompSoc committee) to assist in resolving the issue and/or mediate in any
  discussion.

= Activities, Events, and Responsabilities
+ SIGs must run at minimum one activity per month to be considered active, for
  example pub nights, weekly meetings, or talks.
+ SIGs may also run non-regular larger events, for example conferences.
+ SIGs are responsible for making their events and services as accessable as
  possible, and the CompSoc EDI Rep is availiable to provide assistance or
  guidance.
+ SIGs are responsible for renewal, and 

= Finance
+ A SIG must use the CompSoc bank account, however they may apply for an
  exemption in order to hold their own bank account, which will have to be
  approved by a soft majority of CompSoc committee.
+ If this exemption is granted - for the purpose of tranparency and overwatch -
  a SIG must provide bank statements to CompSoc committee if requested, and
  this exemption may be revoked at any time by a hard majority vote of CompSoc
  committee. Tardis receives this automatically upon the first introduction of
  this document.
+ SIGs may seek their own sponsors, and any funds received will be allocated to
  that SIG barring any other extenuating circumstances.
+ Funds raised by SIGs through sponsorships, event ticket sales, or other means
  will be allocated to the SIG and can be spent at the SIG's discretion.
+ SIGs can request additional funding from CompSoc for relevant events and
  activities on top of sponsorship funding that they have secured.
+ A SIG should seek prior approval and make appropriate notification before
  contacting, seeking out, or aquiring a sponsor another SIG or CompSoc is
  already sponsored by. This is to prevent sponsor poaching.
+ A SIG may not charge their members money for access to regular services or
  activities, however major events may be charged for and ticketed, as long as
  attendance isn't required for participation in the SIG.

= Interraction With CompSoc
+ The president should attend CompSoc committee meetings and excercise their
  voice representing their SIG members as they see fit. If a SIG president is
  unable to go to a meeting they may designate another member of the SIG
  committee.
+ SIGs may vote in CompSoc general committee meetings, in which case a SIG
  posesses one vote regardless of the amount of members present. The SIG must
  have a representitive present to vote, although an exception may be made if
  a SIGs representitive has made a sufficient effort to make committee aware 
  they'd like to vote online.
+ SIGs must make their affiliation with CompSoc as a Special Interest Group
  obvious on their website and communication channels.
+ Sigs may use CompSoc channels to promote their events in addition to their
  own channel unless otherwise restricted, and abiding by any rate limits.
+ SIGs may request the CompSoc TechSec bridge the general and announcement
  channels of their SIG discord servers to a dedicated channel in the CompSoc
  discord server.
+ SIGs may request support and guidance from the CompSoc graphic designer in
  relation to branding and promotional material.
+ SIGs may have an event featured on the CompSoc newsletter or announcement
  channel. If they would like this they must make the CompSoc secretary aware 
  at least 72 hours in advance.

= Inactivity
+ Inactivity is a natural state for a SIG which has reached the end of its
  life. If a SIG becomes inactive by abandonment, it should be allowed to die,
  but CompSoc must do its best to preserve documentation in case it is ever to
  be restarted, and for its historical significance. Forms of natural
  inactivity are as follows:
    - Functional Inactivity
      + A SIG has failed its duties to run events as outlined in this document,
        specifically by abandonment. At this point CompSoc committee may by
        hard majority vote choose to place the SIG into inactivity.
      + The inactivity period for this case is 3 months at which point the SIG
        is considered dead.
      + In this case, anyone is free to take control of the SIG by having a
        request approved by CompSoc committee. This can be done during the
        proceedings or after the SIG has died, at which point it is revived.
      + If it is being revived, an EGM must be called if any additional members
        are needed to reach a minimum. The exact revival proceedings are
        decided by CompSoc committee.
    - Failiure to continue government
      + A SIG has failed to elect a new committee or all of committee has quit,
        therefore no one is left to run an EGM. At this point CompSoc committee
        must take over control and run an EGM at earliest convenience, or may
        vote by hard majority to enter the inactivity period.
      + The inactivity period for this case is 3 months at which point the SIG
        is considered dead.
      + As above, anyone may by approved request to CompSoc revivte the SIG,
        and must call an EGM if needed.
+ If a SIG is forcefully placed into inactivity CompSoc must aim to resolve
  any issues as fast as possible and get the SIG back on its feet,
  prioritising the SIGs and CompSocs members' interests. Forms of unnatural
  inactivity are as follows:
    - Administrative Inactivity
      + A SIG has done something bad enough that its freedoms must be
        restricted until the situation is resolved. Possible examples are:
        - A new rule must be added to ban a previously legal action which was
          bad enough for CompSoc to deem a rule must be added against it, at
          which point a SIGs operations may be frozen until the new rule is
          added to prevent further harm.
        - A SIG fails repeatedly to follow rules or the EUSA code of conduct, 
          prioritize the needs of its members, a vote of no confidence is 
          filed agains committee, or the SIG has put someone in danger, at 
          which point CompSoc deems it appropriate to replace the SIGs
          committee, freezing its operations until an EGM is run.
        - A SIG has to be given a time limit to resolve issues, at which point
          the inactivity time limit can be applied to give them a deadline
          before they are forcefully dissolved.
      + This form of inactivity must be activated by a hard majority CompSoc
        committee vote, and further major actions after that must pass a soft
        majority vote.
      + There is no set time limit to this form of inactivity, as it exists for
        emergencies only and may be adapted as the situation sees fit.
      + This system is an aboslute last resort, and should never be used.
+ This is the only mechanism by which CompSoc should forcefully interfere with
  a SIGs operations.
+ Inactivity proceedings allow CompSoc to gain control over the committees bank
  accounts and other assets - which must be provided at request.
