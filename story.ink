VAR final_ending_text = ""
VAR has_tail = true

June 20, 2020
On a warm summer day, a fatal car accident occured. Five people died. One life was made.
A purple Lexus hit a grand rock and from the rock, a rat emerged. The five passengers of the vehicle were unable to witness the birth of a rat.
+ [Go on with your life and pretend nothing happened] -> end
+ [Follow rat's story] -> story

=== story ===
... bump ... ba ... dum ba-bump. The rat comes to life with a seizing pain in its head, and is warmly welcomed by the gasoline fire. Sirens wail in the background, though too faint for the rat to care. The rat now has a choice to make:
+ [Walk into the fire] -> walk_into_fire
+ [Put out the flames] -> put_out_flames
+ [Stay put and pray] -> stay_and_pray

=== walk_into_fire ===
The rat walks into the fire and dies a terrible death 🔥💀 -> end

=== put_out_flames ===
There are many possible utensils at the rat's disposal:
+ [Throw straw at the fire] -> straw_at_fire
+ [Throw wet mud at the fire] -> ambulance_rescue

=== stay_and_pray ===
The rat prays to the great rats far down below.
+ [Continue...] -> ambulance_rescue

=== straw_at_fire ===
The fire quickly grows too large and the rat dies 🔥💀 -> end

=== ambulance_rescue ===
The fire is stalled for long enough for the rat to be rescued by an ambulance.
+ [Continue...] -> rustling_noises

=== rustling_noises ===
For some strange reason, the rat hears rustling behind him.
+ [Explore] -> explore
+ [Run] -> run

=== explore ===
You find another rat. 
+ [Attack] -> attack
+ [Socialize 😬] -> socialize

=== run ===
The rat ran away from the rustling onto an open road. Suddenly, the rat hears a screeching noise and sees a large purple Lexus with four passengers in it. The rat gets hit by the purple Lexus. -> end

=== attack ===
It was a rough fight but you won #alpha
+ [Continue] -> outlaw

=== socialize ===
You have a civil conversation with your fellow rat species. Turns out they were also birthed from a rock. 
You follow them and go down a sewer ... you don't question why ... .
All of a sudden ... you hear a swoosh. You turn and see the corpse of your new rat friend. 
+ [Continue...] -> sewers

=== sewers ===
The sewers are too dangerous! The rat gets ambushed!
+ [Fight] -> fight
+ [Flight] -> flight

=== fight ===
You fight back and win like an #alpha. 
The sewers are too dangerous and the rat decides to go back up to the surface.
+ [Continue...] -> outlaw

=== flight ===
The rat swims and gets carried by the stream.
+ [Continue...] -> pre_underground_life

=== outlaw ===
TODO: write this lol

=== pre_underground_life ===
The rat finds an underground city!
+ [Continue...] -> underground_life

=== underground_life ===
The rat hears a voice.
"Seize!"
The rat sees a mouse approaching.
+ [Run] -> run_underground
+ [Stay] -> stay

=== run_underground ===
The rat runs away but the mouse is quicker! The rat gets caught.
+ [Continue] -> underground_mice_union

=== stay ===
The mouse approaches slowly. 
"You are under arrest", the mouse squeaked.
+ [Continue...] -> underground_mice_union

=== underground_mice_union ===
The rat is presented to the Underground Mice Union (UMU)
"Outsiders are not allowed here. Especially after the racket caused by that bothersome Micky Wang. Why are you here?"
~final_ending_text = "The mouse took the rat off for execution. The rat is executed."
+ [Stay silent] -> end
+ ["I'm lost"] -> want_to_stay

=== want_to_stay ===
"Do you want to stay?", squeaked the mouse.
~final_ending_text = "\"Then there is no need for you to be here.\", the mouse chirped."
+ ["No"] -> end
+ ["Yes"] -> do_tests

=== do_tests ===
"We will perform some tests on you", the mouse stated. "The tests will test your capabilities."
+ [Continue...] -> iq_test

=== iq_test ===
"It seems you have a high IQ", the mouse observed. "We have very high hopes for you. From today on, you'll be attending special classes to boost your potential."
~final_ending_text = "\"Then you have no use to us. It is time for your execution\", the mouse said."
+ [Stay silent] -> definitely_agreed
+ ["And what if I don't?"] -> end

=== definitely_agreed ===
"Good", the mouse mused. "I'm glad you agree."
+ [Time skip...] -> burn_out

=== burn_out ===
Day after day, hour after hour of long nights of grinding away at questions and feeling the grip of the suffocating security, the rat is burnt out.
~final_ending_text = "Grinding is actually not good for one's health. The rat died of grinding away too hard. To all those students out there: don't forget to take breaks!"
+ [Escape] -> escape
+ [Continue the grind]-> end

=== escape ===
{
    - has_tail:
        The rat attempts to escape but his tail gets caught in a trap! The rat is now a tailless rat.
        ~has_tail = false
        + [Continue...] -> capture
    - else:
        The rat barely escapes! The trap that caught his tail the last time closed in on empty space in what used to be his tail.
        ~final_ending_text = "The rat was swept away by the strong streams and drowned in the sewers"
        + [Go down the sewer stream] -> end
        + [Go above] -> car_encounter
}

=== capture ===
The rat is once again captured by the UMU.
+ [Plead forgiveness] -> community_service
+ [Stay silent] -> jailed

=== community_service ===
The rat cleaned toilets and eventually discovered an underground pipe!
The pipe leads into the sewers. The rat decided to escape...
+ [Continue...] -> escape

=== jailed ===
The rat spends long long days in jail. The days turn into weeks and the weeks turn into months.
After a long long time, the rat finally is let out.
The rat finds a pipe system and escapes through the pipes.
+ [Continue...] -> escape

=== car_encounter ===
The rat heads above ground.
Whoosh!
A purple Lexus zoomed by the rat, almost running him over!
At this moment, the rat felt an epiphany; the rat wanted to street race.
+ [Continue...] -> find_car

=== find_car ===
The rat finds himself a car and now street racing is an essential part of his life.
+ [Continue...] -> revenge_on_umu

=== revenge_on_umu ===
The rat decides to go back and visit the underground city.
The rat nears the UMU and hears talking.
+ [Eavesdrop] -> hear_name_then_leave
+ [Walk by] -> leave_then_hear_name

=== hear_name_then_leave ===
~final_ending_text = "The rat then hears trash talk about him. <br> He gets angry and decides to run over then with a purple Lexus. <br>Micky Wang runs over the city, ending the UMU, but crashes into the rocks."
The rat hears his name. He then leaves. -> end

=== leave_then_hear_name ===
~final_ending_text = "The rat then hears trash talk about him. <br> He gets angry and decides to run over then with a purple Lexus. <br>Micky Wang runs over the city, ending the UMU, but crashes into the rocks."
The rat leaves. He then hears his name. -> end

=== end ===
{final_ending_text}
And this concludes the tail of Micky Wang. -> DONE