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

= Formalisation of Terms
- "must" is a requirement, "should" is an ideal situation that should be aimed
  for, "may" is a choice a committee has avaliable to them but not a 
  requirement.
- A "hard majority" is a vote in favour by equal or greater to two thirds of
  total committee, a "soft majority" is greater than half of committee at a
  meeting.

= Committee
- A committee must be made up by at minimum one president and two additional 
  members to act as "watchdogs" so no committee operates without the possiblity 
  of voting against the president.
- A committee should be made up of an odd amount of members to avoid a voting 
  tie
- A committee may defer a decision to CompSoc if they are unable to reach a
  decision, however a limit may be put on this if it is overused.

= Finance
- A SIG must use the CompSoc bank account, however they may apply for an
  exemption in order to hold their own bank account, which will have to be
  approved by a soft majority of CompSoc committee. If this exemption is
  granted - for the purpose of tranparency and overwatch - a SIG must provide
  bank statements to CompSoc committee if requested, and this exemption may be
  revoked at any time by a soft majority vote of CompSoc committee.
