/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Early Morning, 1 Noon, 2 Night

VAR time2 = -1 //  0 Morning, 1 Noon, 2 Night

-> FrontDoor

== FrontDoor ==
You are a dog waiting for your owner to return home. He leaves early in the moring and comes back home at Midnight. You are currently waiting by the door. 
Its currently { advance_time() }
How will you spend your day?

*[Eat food]-> EatFood

*[Nap]-> Nap

*[Look out the Window]-> Window

+[Wait]-> FrontDoor

+ { time == 3 } [Owner should be home by now!]-> OwnerHome

=== EatFood ===

You walk into the kitchen and eat your dog food your owner left for you. It taste the same as it always does.

*[Go back to the door]-> FrontDoor

=== Nap ===

You walk into the living room and jump on the sofa, which your not allowed on. You lay down and take a nap until you wake up. 

*[Go back to the door]-> FrontDoor

=== Window ===

You look out the Window and see a squirrel on a tree.

*[Bark at it]-> Barking

+[Go back to the door]-> FrontDoor

=== Barking ===

You bark at the squirrel

*[Go back to the door]-> FrontDoor

=== OwnerHome ===

You sit by the door and look up waiting for your to walk through the front door, but he never walks through.

Its currently { advance_time2 () } 

+[Wait]-> OwnerHome

*{ time == 2 } [Who's at the door?]-> Ending

=== Ending ===
A woman walks in through the door. Its not your owner, but a human who you know. Your owner's mother, she looks down at you with tears in her eyes. 

->END


== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 3:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Early Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
            
       - time == 3:
            ~ return "Midnight"
    }
            
         
    
    
        
    ~ return time
    
    == function advance_time2 ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Early Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
            
      
    }
            
         
    
    
        
    ~ return time
    
    
