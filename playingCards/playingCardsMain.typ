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

#let rm = [#linebreak()*This card is removed from play after use.*]
#let at = [#linebreak()*This card can be played at any time.*]
#let dc = [#linebreak()*Discard.*]
#let keep = [#linebreak()*This card is retained.*]

#set page(background: box(fill: bgColour, height: 100%, width: 100%))

//the witch cards
#let makeCard(tColour, sColour, title, subtitle, imageLocation, content) = [
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
        height: 30%,
      ),
      stroke: sColour,
      clip: true,
      radius: 4pt,
    )
  ]
  #content
]

#makeCard(
    tColour, sColour,
  [Witch],
  [Tragic, Burning Death],
  "cardPictures/witch_icon.png",
  [Starter Cards:
    - Magic Missile
    - Folk Wisdom
    - Toil & Trouble
    - Devil's Deal
  ],
) #pb

#makeCard(
  tColour, sColour,
  [Magic Missile],
  [Powerful Last Resort],
  "placeholder.png",
  [Choose a player to lose all-but-one dice. #rm],
) #pb

#makeCard(
    tColour, sColour,
  [Folk wisdom],
  [No-nonsense Pillar of the Community],
  "placeholder.png",
  ["Nope" the last action.#dc],
)

#pb

#makeCard(
    tColour, sColour,
  [Toil & Trouble],
  [O, How You Miss their Squabbling],
  "placeholder.png",
  [Create two fake players, each with 1 dice and controlled by you. They can do everything a player can (even vote!), but they dissapear after they've finished a turn. #rm #at],
)

#pb

#makeCard(
    tColour, sColour,
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
    tColour, sColour,
  [Druid],
  [Peaceful, Contented Death],
  "cardPictures/druid_icon.png",
  [Starting dice: 2 #linebreak()
  Cards:
  - Herbal Cleanse
  - Mind-wipe Serum
  - Intervention
  - Therapy Session
  ]
) #pb

#makeCard(
    tColour, sColour,
  [Herbal Cleanse],
  [Probably good for you!],
  "placeholder.png",
  [Reset one player's dice count to their starting amount. #dc],
)

#pb

#makeCard(
    tColour, sColour,
  [Mind-wipe Serum],
  [Probably bad for you!],
  "placeholder.png",
  [Make a player forget a thing for the rest of the game. If they don't play along at any point, you get one of their dice. #rm #at],
)
#pb

#makeCard(
    tColour, sColour,
  [Intervention],
  [Seriously, stop doing that.],
  "placeholder.png",
  [Look at a player's ability cards, and then take one, if you can come up with a reasonable argument for doing so. #dc],
) #pb

#makeCard(
    tColour, sColour,
  [Therapy Session],
  [Licence Schmicence],
  ph,
  [Claim a card from the Storyteller's discard pile. #rm],
) #pb

//set next colour pallet
#let tColour = rgb("#d78c8c")
#let sColour = rgb("#ffc2c2")
#let bgColour = rgb("#eab0b0")
#set page(background: box(fill: bgColour, height: 100%, width: 100%))

//warrior time!!
#makeCard(
    tColour, sColour,
  [Warrior],
  [Violent, War Death],
  "cardPictures/warrior_icon.png",
  [Starting dice: 2 #linebreak()
  Cards:
  - War Cry
  - Field Medic
  - Jump the Gun]
) #pb

#makeCard(
    tColour, sColour,
  [War Cry],
  [That's like. Really loud.],
  ph,
  [Get an extra dice if you successfully dudo or calza on your first turn in a conflict. #keep]
) #pb

#makeCard(
    tColour, sColour,
  [Field Medic],
  [You might want to bite down on something],
  ph,
  [Prevent a player (but not yourself) from losing their final dice. #dc]
) #pb

#makeCard(   tColour, sColour,
  [Jump the Gun],
  [Last one into battle's a rotten egg!],
  ph,
  [Play skips to your turn immediately.#dc]
) #pb

//urchinn, my favourite!

#let tColour = rgb("#9feaeb")
#let sColour = rgb("#a6c7d3")
#let bgColour = rgb("#d5ebf4")
#set page(background: box(fill: bgColour, height: 100%, width: 100%))

#makeCard(
    tColour, sColour,
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
    tColour, sColour,
  [Robbin' Good],
  [Steal from the rich],
  ph,
  [Steal a die from someone who has more than their starting dice. #keep]
) #pb

#makeCard(
    tColour, sColour,
  [Miscreantry],
  [Ya little scamp],
  ph,
  [Reroll as many dice on the table as you wish, then go back to 1 dice after the count phase. #keep #at]
) #pb

#makeCard(
    tColour, sColour,
  [Quick Learner],
  [Kid's a fast 'un],
  ph,
  [Discard two cards in order to dumpster dive for one card. #keep]
) #pb

#makeCard(  tColour, sColour,
  [Go Easy on the Kid],
  [Awww, don't make 'em cry],
  ph,
  [Overrule a "calling bull" card played against you. #dc #at]
) #pb

//Chieftain

#let tColour = rgb("#f17fd9")
#let sColour = rgb("#eeb3dd")
#let bgColour = rgb("#fce0fe")
#set page(background: box(fill: bgColour, height: 100%, width: 100%))

#makeCard(  tColour, sColour,
  [Chieftain],
  [Prideful, Honourless Death],
  ph,
  [Starting dice: 2 #linebreak() Cards:
  - Smooth talker
  - Policy U-turn
  - Justice
  - Think tank]
) #pb

#makeCard(  tColour, sColour,
  [Smooth Talker],
  [You go Forwards, we'll go Backwards],
  ph,
  [Discard three cards to unilaterally overrule a party decision. #keep]
) #pb

#makeCard(   tColour, sColour,
  [Policy U-Turn],
  [Strong and Stable],
  ph,
  [Whatever just happened, the opposite actually just happened. #dc #at ]
) #pb 

#makeCard(  tColour, sColour,
  [Justice],
  ['Cuz I Say So],
  ph,
  [Discard 5 cards and redistribute ALL other players dice as you see fit. #keep]
) #pb

#makeCard(  tColour, sColour,
  [Think Tank],
  [You're in the pocket of Big Afterlife!],
  ph,
  [Reshuffle all discarded cards into the draw pile. #at #rm  ]
)

//Sailor

#let tColour = rgb("#8998e2")
#let sColour = rgb("#c6b2f1")
#let bgColour = rgb("#d8d8f7")
#set page(background: box(fill: bgColour, height: 100%, width: 100%))
#pb
#makeCard(  tColour, sColour,
  [Sailor],
  [Not dead, just sailed to sea with a silver branch],
  ph,
  [Starting dice: 2 #linebreak()
  Cards:
  - Gambler's Fallacy
  - Double or Nothing
  - Snake eyes
  - Not Dead]
) #pb

#makeCard(  tColour, sColour,
  [Gambler's Fallacy],
  [This is the one!],
  ph,
  [Change any number of dice numbers to "wild" or "no longer wild" for the rest of the round. #dc ]
) #pb 

#makeCard(  tColour, sColour,
  [Double or Nothing],
  [Safe bet, honestly],
  ph,
  [If you win a _Calza_ challenge, get two dice instead of one. If you lose, you don't lose any dice. #dc ]
) #pb

#makeCard(  tColour, sColour,
  [Snake Eyes],
  [Snake eyeeeeees!!!!!],
  ph,
  [If you roll snake eyes (two ones):
  + show everyone
  + say "snake eyes!"
  + take another dice
  then either:
  - Dive for a discarded card
  - Take two cards
  You may also reroll your dice.]
) #pb

//Hunter
#let tColour = rgb("#e289ca")
#let sColour = rgb("#c086c0")
#let bgColour = rgb("#ffe9f8")
#set page(background: box(fill: bgColour, height: 100%, width: 100%))

#makeCard(  tColour, sColour,
  [Hunter],
  [Peaceful Death],
  ph,
  [Starting dice: 2 #linebreak() Cards:
  - Make your own Luck
  - Precision Shot
  - Trap card
  - Gatherer]
) #pb

#makeCard(  tColour, sColour,
  [Make your own Luck],
  [I don't believe in Luck],
  ph,
  [+ Shuffle the discard pile.
  + Take 5 cards.
  + Place wherever you like in the draw pile. #dc]
) #pagebreak()

#makeCard(  tColour, sColour,
  [Precision Shot],
  [Nice shot!],
  ph,
  [Change ONE dice anywhere on the table to anything you like. #at #dc]
) #pb

#makeCard(  tColour, sColour,
  [Trap card],
  [You've activated my trap card!],
  ph,
  [If you lose a challenge, discard a card to make the challenger also lose a dice. #at #keep]
) #pb

#makeCard(  tColour, sColour,
  [Gatherer],
  [Not just a hunter],
  ph,
  [When a player discards one of your starter cards, you may reclaim it. #at #keep]
) #pb

//Great hero

#let tColour = rgb("#f4e89e")
#let sColour = rgb("#c0b686")
#let bgColour = rgb("#fffce9")
#set page(background: box(fill: bgColour, height: 100%, width: 100%))

#makeCard(  tColour, sColour,
  [Great Hero],
  [Not dead, just found a Special Apple],
  ph,
  [Starting Dice: 3 #linebreak() Dice cap: raised to 6 #linebreak() Starter ability cards:
  - Call to Adventure
  - Revelation
  - Transformation
  - Atonement
  - Not Dead]
) #pb

#makeCard(  tColour, sColour,
  [Call to Adventure],
  [There's a Yearning in your Heart],
  ph,
  [Discard 3 ability cards, gain 1 dice. #keep]
) #pb

#makeCard(  tColour, sColour,
  [Revelation],
  [Did anyone else see this coming?],
  ph,
  [ You have struggled in the Abyss. This is your turning point. You may replenish 
your dice to your starting dice, and reclaim to your hand *all* of your starting cards no matter where they 
may be (excluding this one). #rm]
) #pb

#makeCard(  tColour, sColour,
  [Transformation],
  [Turn and face the strange],
  ph,
  [Discard one other card, shuffle the discard pile, then take the top two cards. #dc]

) #pb


#makeCard(  tColour, sColour,
  [Atonement],
  [You just had to go and be a hero, didn't you?],
  ph,
  [Lose x of your dice in exchange for x dice of enemy/player damage. This 
cannot take their final die. #keep]

)