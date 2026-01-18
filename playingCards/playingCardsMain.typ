#set page(width: 2.5in, height: 3.5in, margin: 3mm)

#show heading.where(level: 1): set text(size: 15pt)
#show heading: set align(center)
#show heading.where(level: 2): set text(size: 8pt)

#set text(font: "Atkinson Hyperlegible", size: 9pt)

//intial variable setup. these will be for "witch"
#let tColour = rgb("#89e29c")
#let sColour = rgb("#86c093")
#let bgColour = rgb("#e9ffed")
#let pb = pagebreak()
#let ph = "placeholder.png"

#let rm = [#linebreak()*This card is removed from play.*]
#let at = [#linebreak()*This card can be played at any time.*]
#let dc = [#linebreak()*Discard.*]
#let keep = [#linebreak()*This card is retained.*]

#set page(background: box(fill: bgColour, height: 100%, width: 100%))

//the witch cards
#let makeCard(title, subtitle, imageLocation, content) = [
  #block(
    fill: tColour,
    width: 100%,
    inset: 8pt,
    radius: 4pt,
    spacing: 0pt,
    heading(title),
  )
  #align(center)[#block(
    fill: sColour,
    width: auto,
    inset: 4pt,
    radius: 4pt,
    spacing: 0pt,
    heading(level: 2, subtitle),
  )]
  #align(center)[
    #box(
      image(
        imageLocation,
        width: 100%,
      ),
      stroke: sColour,
      clip: true,
      radius: 4pt,
    )
  ]
  #content
]

#makeCard(
  [Witch],
  [Tragic, Burning Death],
  "placeholder.png",
  [Starter Cards:
    - Magic Missile
    - Folk Wisdom
    - Toil & Trouble
    - Devil's Deal
  ],
) #pb

#makeCard(
  [Magic Missile],
  [Powerful Last Resort],
  "placeholder.png",
  [Choose a player to lose all-but-one dice. #rm],
) #pb

#makeCard(
  [Folk wisdom],
  [No-nonsense Pillar of the Community],
  "placeholder.png",
  ["Nope" the last action.#dc],
)

#pb

#makeCard(
  [Toil & Trouble],
  [O, How You Miss their Squabbling],
  "placeholder.png",
  [Create two fake players, each with 1 dice and controlled by you. They can do everything a player can, but they dissapear after they've finished a turn. #rm #at],
)

#pb

#makeCard(
  [Devil's deal],
  [Satan? Like, the food?],
  "placeholder.png",
  [Dicard either:
    - One card to get one dice
    - Three cards for two dice
    - Five cards for three dice
    #dc],
)

//set next colour pallet
#let tColour = rgb("#cae289")
#let sColour = rgb("#b2c086")
#let bgColour = rgb("#faffe9")
#set page(background: box(fill: bgColour, height: 100%, width: 100%))

#pb

#makeCard(
  [Druid],
  [Peaceful, Contented Death],
  ph,
  [Starting dice: 2 #linebreak()
  Cards:
  - Herbal Cleanse
  - Mind-wipe Serum
  - Intervention
  - Therapy Session
  ]
) #pb

#makeCard(
  [Herbal Cleanse],
  [Probably good for you!],
  "placeholder.png",
  [Reset one player's dice count to their starting amount. #dc],
)

#pb

#makeCard(
  [Mind-wipe Serum],
  [Probably bad for you!],
  "placeholder.png",
  [Make a player forget a thing for the rest of the game. If they don't play along at any point, you get one of their dice. #rm #at],
)
#pb

#makeCard(
  [Intervention],
  [Seriously, stop doing that.],
  "placeholder.png",
  [Look at a player's ability cards, and then take one, if you can come up with a reasonable argument for doing so. #dc],
) #pb

#makeCard(
  [Therapy Session],
  [Licence Schmicence],
  ph,
  [Claim a card from the Storyteller's discard pile. #rm],
) #pb

//warrior time!!
#makeCard(
  [Warrior],
  [Violent, War Death],
  ph,
  [Starting dice: 2 #linebreak()
  Cards:
  - War Cry
  - Field Medic
  - Jump the Gun]
) #pb

#makeCard(
  [War Cry],
  [That's like. Really loud.],
  ph,
  [Get an extra dice if you successfully dudo or calza on your first turn in a conflict. #keep]
) #pb

#makeCard(
  [Field Medic],
  [You might want to bite down on something],
  ph,
  [Prevent a player (but not yourself) from losing their final dice. #dc]
) #pb

#makeCard(
  [Jump the Gun],
  [Last one into battle's a rotten egg!],
  ph,
  [Play skips to your turn immediately.#dc]
) #pb

//urchinn, my favourite!

#makeCard(
  [Urchin],
  [Clumsy, Oafful Death],
  ph,
  [Startin' dice: 1 #linebreak()
  Cards:
  - Robbin' good
  - Miscreantry
  - Quick Learner
  - Go Easy on the Kid]
) #pb

#makeCard(
  [Robbin' Good],
  [Steal from the rich],
  ph,
  [Steal a die from someone who has more than their starting dice. #keep]
) #pb

#makeCard(
  [Miscreantry],
  [Ya little scamp],
  ph,
  [Reroll as many dice on the table as you wish, then go back to 1 dice after the count phase. #keep #at]
) #pb

#makeCard(
  [Quick Learner],
  [Kid's a fast 'un],
  ph,
  [Discard two cards in order to dumpster dive for one card. #keep]
) #pb

#makeCard(
  [Go Easy on the Kid],
  [Awww, don't make 'em cry],
  ph,
  [Overrule a "calling bull" card played against you. #dc #at]
) #pb

//Chieftain

#makeCard(
  [Chieftain],
  [Prideful, Honourless Death],
  ph,
  [Starting dice: 2 #linebreak() Cards:
  - Smooth talker
  - Policy U-turn
  - Justice
  - Think tank]
) #pb