*-----------------------------------------------------------
* Title      :Wine or Cheese
* Written by :James O Hara
* Date       :25/03/2019
* Description: 
*-----------------------------------------------------------
    ORG    $1000
START:     
    
    
    BSR WINE_OR_CHEESE

WINE_OR_CHEESE:

       LEA introduction,A1
       MOVE.B #14,D0
       TRAP #15
        
       MOVE.B #4, D0
       TRAP #15
       MOVE.B #1, D0
       
       CMP D1,D0
       BEQ WINE_CHOOSEN
       BNE CHEESE_CHOOSEN

        
WINE_CHOOSEN:

     LEA WineChoosen,A1
     MOVE.B #14,D0
     TRAP #15
       
     MOVE.B #4, D0
     TRAP #15
     Move.b #1, D0
       
     CMP D1,D0
     BEQ DRINK_WINE
     BNE NO_WINE

NO_WINE:       
   
   LEA WineNotDrank,A1
   MOVE.B #14,D0
   TRAP #15
   
    MOVE.B #4, D0
    TRAP #15
    Move.b #1, D0
       
    CMP D1,D0
    BEQ DRINK_WINE
    BNE END_GAME    
    
DRINK_WINE:

    LEA DrinkWine,A1
    MOVE.B #14,D0
    TRAP #15
       
    MOVE.B #4, D0
    TRAP #15
    Move.b #1, D0
       
    CMP D1,D0
    BEQ LEAVE_TAVERN
    BNE STAY_IN_TAVERN
    
STAY_IN_TAVERN:

    LEA StayTavern,A1
    MOVE.B #14,D0
    TRAP #15
       
    MOVE.B #4, D0
    TRAP #15
    Move.b #1, D0
       
    CMP D1,D0
    BEQ LEAVE_TAVERN
    BNE END_GAME
    
LEAVE_TAVERN:

    LEA LeaveTavern,A1
    MOVE.B #14,D0
    TRAP #15
       
    MOVE.B #4, D0
    TRAP #15
    Move.b #1, D0
       
    CMP D1,D0
    BEQ GO_PHARMACY
    BNE HEAD_AWAY

HEAD_AWAY:

    LEA HeadAway,A1
    MOVE.B #14,D0
    TRAP #15
       
    MOVE.B #4, D0
    TRAP #15
    Move.b #1, D0
       
    CMP D1,D0
    BEQ GO_PHARMACY
    BNE END_GAME

GO_PHARMACY:
    
    LEA GoPharmacy ,A1
    MOVE.B #14,D0
    TRAP #15
       
    MOVE.B #4, D0
    TRAP #15
    Move.b #1, D0
       
    CMP D1,D0
    BEQ TALK_TO_CHEMIST
    BNE LEAVE_PHARMACY
    
LEAVE_PHARMACY:

    LEA LeavePharmacy ,A1
    MOVE.B #14,D0
    TRAP #15
       
    MOVE.B #4, D0
    TRAP #15
    Move.b #1, D0
       
    CMP D1,D0
    BEQ TALK_TO_CHEMIST
    BNE END_GAME
    
TALK_TO_CHEMIST:

    LEA ApproachCounter ,A1
    MOVE.B #14,D0
    TRAP #15
       
    MOVE.B #4, D0
    TRAP #15
    Move.b #1, D0
       
    CMP D1,D0
    BEQ HOP_COUNTER
    BNE ATTACK_BEARS
ATTACK_BEARS:
    
HOP_COUNTER:
 
  LEA ApproachCounter ,A1
    MOVE.B #14,D0
    TRAP #15
       
    MOVE.B #4, D0
    TRAP #15
    Move.b #1, D0
       
    CMP D1,D0
    BEQ HOP_COUNTER
    BNE ATTACK_BEARS


CHEESE_CHOOSEN:
    
END_GAME:

    LEA YouDied ,A1
    MOVE.B #14,D0
    TRAP #15
       
   



    SIMHALT             ; halt simulator

Introduction: dc.b 'welcome to wine or cheese a text based game where you are given'
              dc.b $0D,$0A
              dc.b 'two choices you choose wrong you lose 25 health you choose right'
              dc.b $0D,$0A
              dc.b 'you continue on to your next challenge'
              dc.b $0D,$0A
              dc.b 'enter 1 if you love your wines'
              dc.b $0D,$0A
              dc.b 'enter 2 if you love your cheeses'
              dc.b $0D,$0A,0
              
WineChoosen: dc.b 'you find your self sitting in a tavern with a fresh cup of wine in'
              dc.b  $0D,$0A
              dc.b 'front of you now you must decide whether or not you are going to drink it'
              dc.b  $0D,$0A
              dc.b 'press one to drink the wine'
              dc.b  $0D,$0A
              dc.b 'press two to not drink the wine'
              dc.b  $0D,$0A,0
              
DrinkWine: dc.b 'you grap the cup firmly and drink heavily from it only to realize what you'
            dc.b  $0D,$0A   
            dc.b 'are in fact drinking is fox piss'
            dc.b  $0D,$0A
            dc.b 'press one to leave the tavern as you feel sickly'
            dc.b  $0D,$0A
            dc.b 'press two to continue drinking the fox piss'
            dc.b  $0D,$0A,0   
              
              
WineNotDrank: dc.b 'you come to the traven and order a class of wine yet you will not'
                dc.b  $0D,$0A 
                dc.b 'drink it you are a fool and im taking away 25 health from you'
                dc.b $0D,$0A
                dc.b 'now you shall continue on and drink the wine'
                dc.b  $0D,$0A
                dc.b 'press one to continue and drink the wine'
                dc.b  $0D,$0A
                dc.b 'press two to end the game if you are weak'
                dc.b  $0D,$0A,0
           
LeaveTavern: dc.b 'you leave the tavern and find yorself in a courtyard a women comes up to'
             dc.b  $0D,$0A
             dc.b 'and says "you sir look rahter sickly you should head to the local pharmacy"'
             dc.b  $0D,$0A
             dc.b 'the women points up the street'
             dc.b  $0D,$0A
             dc.b 'press one to head up to the local pharmacy'
             dc.b $0D,$0A
             dc.b 'press two to head away from the pharmacy'
             dc.b  $0D,$0A,0
             
StayTavern: dc.b 'you decide to stay and drink the fox piss as you consume more fox piss you'
            dc.b $0D,$0A
            dc.b 'rapidly begin to feel sick and you throw up all over the family next to you'
            dc.b $0D,$0A
            dc.b 'this leads to you begin kicked out onto the street costing you 25 health'
            dc.b $0D,$0A
            dc.b 'press one to talk to the lady on the street'
            dc.b $0D,$0A
            dc.b 'press two to end the game'
            dc.b $0D,$0A,0
         
HeadAway: dc.b 'you head away from the pharmacy stupidly ignoring the womens advice only'
          dc.b $0D,$0A
          dc.b 'to walk for about ten mintues feeling worse and worse until you pass out and wake'
          dc.b $0D,$0A 
          dc.b 'up outside the tavern with the lady from earlier in front off of you shes tell you'
          dc.b $0D,$0A
          dc.b 'to stop being stupid and ti head to the tavern she heads off and you lose 25 health'
          dc.b $0D,$0A
          dc.b 'press one to continue to the pharmacy'
          dc.b $0D,$0A
          dc.b 'press two two end the game'
          dc.b $0D,$0A,0

GoPharmacy: dc.b 'you stroll up the street to the pharmacy and walk through the front door'
            dc.b $0D,$0A
            dc.b 'press one to go to the counter'
            dc.b $0D,$0A
            dc.b 'press two to leave the pharamcy'
            dc.b $0D,$0A,0
            
LeavePharmacy: dc.b 'you walk into the pharmacy and decide you dont need any help and walk back out'
               dc.b $0D,$0A
               dc.b 'only to find 4 bears out side the pharmacy a bear swipes and you dealing 25 damage'
               dc.b $0D,$0A
               dc.b 'press one to walk back into the pharmacy'
               dc.b $0D,$0A
               dc.b 'press two to run at the bears and fight them'
               dc.b $0D,$0A,0
         
ApproachCounter: dc.b 'you walk up to the counter and tell the chemist that you drank fox piss'
                 dc.b $0D,$0A
                 dc.b '"why would you drink fox piss you idiot" c cause i taught it was wine'
                 dc.b $0D,$0A
                 dc.b 'at this moment you hear a roar outside and two bears come crashing through the'
                 dc.b $0D,$0A
                 dc.b 'pharmacy doors'
                 dc.b $0D,$0A
                 dc.b 'press one to hop the counter and run out the back door'
                 dc.b $0D,$0A
                 dc.b 'press two to turn and attack the bears'
                 dc.b $0D,$0A,0

AttackBears:
                    
 
YouDied: dc.b 'you failed try again'
         dc.b $0D,$0A,0
       



              
 
      
* Put variables and constants here

    END    START        ; last line of source




*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
