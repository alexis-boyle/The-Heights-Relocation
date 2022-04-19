/// @param text_id
function scr_game_text(_text_id){
	
	switch(_text_id)
	{		
		
		// conversation with receptionist
		case "social worker":
			scr_text("SCENE 1: HIGH SCHOOL FRONT DESK - RICHMOND HIGH\n\n\n\n\n\n\n\n\n\n\npress space to continue...");
			scr_text("SOCIAL WORKER CHECKS IN\n\n\n\n\n\n\n\n\n\n\ use up & down to navigate options, space to select");
				// option to start a conversation with the receptionist
				scr_option("Hello!", "social worker - hello");
			break;
			// starting conversaion with the receptionist
			case "social worker - hello":
				scr_text("SOCIAL WORKER: Hello I am Ben Blevins, the school social worker. I’m here to begin learning more about a case I’ve been assigned to here.");
				scr_text("RECEPTIONIST: Nice to meet you, Ben. feel free to come in and begin working on your case. let me know if you have any questions that I can help with.")
				scr_text("SOCIAL WORKER: THANK YOU! Can you please tell me who Randy's teacher's are?");
				scr_text("RECEPTIONIST: Sure, You can talk to Ms. Addams and Mrs. Smith, they're both in Mrs. Smith's room right now");
					// option that takes to next room (hallway)
					scr_option("Go to next room", "social worker hallway - next room");
				break;
				// walking through the hallway
				case "social worker hallway - next room":
					room_goto_next();
					break;
		
		// social worker in hallway
		case "social worker hallway":
			scr_text("I should learn more about how Randy behaves in school. I’m sure his teachers could provide valuable insight into Randy’s behavior and academic standing.");
				// option that takes to next room (Mrs. Smith's room)
				scr_option("Go to Mrs Smith's room", "social worker - Smith's room");
			break;
			// go to Smith's room
			case "social worker - Smith's room":
				room_goto_next();
				break;
		
		// social worker in Smith's room
		case "social worker - inside Smith's room":
			// conversation with Mrs. Smith
			scr_text("SOCIAL WORKER: Hello! I am Ben Blemins, the school social worker. I’ve heard that Randy James has been having some difficulties at school and home. As you both have Randy in class, would you be willing to share some insight so I can learn more about his situation??");
			scr_text("Mrs SMITH: Pleasure to meet you Ben. I would be more than happy to help you out. Poor Randy has had a hard time recently and I’m very worried it will cause a permanent negative impact on his future.");
			scr_text("Mrs SMITH: Anything in specific you would like to know?");
			scr_text("SOCIAL WORKER: Thank you som much I would like to know...");
				// option to get info on Randy's grades
				scr_option("Randy’s grades", "social worker - randy's grades1");
				// option to get info on Randy's friends
				scr_option("Randy's friends", "social worker - randy's friends1");
			break;
			// info on Randy's grades
			case "social worker - randy's grades1":
				scr_text("Mrs SMITH: Well Randy’s grades are not good by any means. When he actually attends my class (which is not often) he seems to not try at all on his assignments.");
				scr_text("Mrs SMITH: He also seems to skip and not really care about his grades or going to school anymore.");
					// option to get info on Randy's friends (branching from Randy's grades)
					scr_option("Randy's friends", "social worker - randy's friends2");
				break;
				// info on Randy's friends (branching from Randy's grades)
				case "social worker - randy's friends2":
					scr_text("Mrs SMITH: Well, Randy hangs around a group of older boys who may not be having the best influence on him.");
					scr_text("SOCIAL WORKER: Yeah, those kids were dropouts when they attended highschool and then have (or have had) records with the Juvenile Center.");
					scr_text("SOCIAL WORKER: Either way, they’re not the best influences on Randy and their behavior definitely seems to be influencing his own.");
					scr_text("SOCIAL WORKER: Thank you so much for the information. I guess I need to talk to the Principal.");
						// option that takes to next room (principals room) ((branching from Randy's grades))
						scr_option("Go to Principal's office.", "social worker - Principal's office 1");
					break;
					// go to next room (principals room)
					case "social worker - Principal's office 1":
						room_goto_next();
						break;
				
			// info on Randy's friends						
			case "social worker - randy's friends1":
				scr_text("Mrs SMITH: Well, Randy hangs around a group of older boys who may not be having the best influence on him.");
				scr_text("SOCIAL WORKER: Yeah, those kids were dropouts when they attended highschool and then have (or have had) records with the Juvenile Center.");
				scr_text("SOCIAL WORKER: Either way, they’re not the best influences on Randy and their behavior definitely seems to be influencing his own.");
					// option to get info on Randy's grades (branching from Randy's friends)
					scr_option("Randy’s grades", "social worker - randy's grades2");
				break;
				// info on Randy's grades (branching from Randy's friends)
				case "social worker - randy's grades2":
					scr_text("Mrs SMITH: Well Randy’s grades are not good by any means. When he actually attends my class (which is not often) he seems to not try at all on his assignments.");
					scr_text("Mrs SMITH: He also seems to skip and not really care about his grades or going to school anymore.");
					scr_text("SOCIAL WORKER: Thank you so much for the information. I guess I need to talk to the Principal.");
						// option that takes to next room (principals room) ((branching from Randy's friends))
						scr_option("Go to Principal's office.", "social worker - Principal's office 2");
					break;
					// go to next room (principals room)
					case "social worker - Principal's office 2":
						room_goto_next();
						break;
		
		// social worker in principals room
		case "social worker - inside Principal's office":
			// conversation with principal
			scr_text("SOCIAL WORKER: Hello Principal Rogers. I’m Ben Blemins, the social worker for this school. I’m here to start learning more about Randy James, who has been recommended for me to look into.");
			scr_text("PRINCIPAL ROGERS: It’s nice to meet you Ben. I’d be more than happy to help with your case. Is there anything specific you would like to know?");
			scr_text("SOCIAL WORKER: Actually yes...");
				// option to get info on Randy's schedule
				scr_option("Randy’s schedule", "social worker - schedule 1");
				// option to get info on Randy's academic history
				scr_option("Randy's academic history", "social worker - academic history 1");
			break;
			// info on Randy's schedule
			case "social worker - schedule 1":
				scr_text("PRINCIPAL ROGERS: I was wondering if you could tell me more about Randy’s schedule.");
				scr_text("PRINCIPAL ROGERS: Well it says in the records here that Randy is at risk of dropping out. He’s been coming into the office daily recently, always having caused some kind of trouble.");
				scr_text(" PRINCIPAL ROGERS: He’s in Mrs. Smith and Ms. Addams courses this term. Speaking with them may be a good way to learn more about it than I can tell you since they spend more time with him than I (or at least until recently anyways).");
				scr_text("SOCIAL WORKER: Yeah I have already talked to them, I reall appreciate you helping out with this matter.");
				scr_text("SOCIAL WORKER: Could you tell me more about...");
					// option to get info on Randy's academic history (branching from Randy's schedule)
					scr_option("Randy's Academic History.", "social worker - academic history 2");
				break;
				// info on Randy's academic history (branching from Randy's schedule)
				case "social worker - academic history 2":
					scr_text("SOCIAL WORKER: I was wondering if you could tell me more about Randy's academic history");
					scr_text("PRINCIPAL ROGERS: Ah. Randy used to be in perfectly fine academic standing until about 5 years ago. Randy’s mother passed away 5 years ago you see and since then he has been having difficulties both at school and at home."); 
					scr_text("PRINCIPAL ROGERS: If you want to learn more, it may be a good idea to speak with his grandmother, Mrs. G. She is his primary caregiver.");
						//Potential option to go somewhere else.	
						scr_option("Go to Mrs G's House.", "social worker - mrs g's house1");
					break;
					case "social worker - mrs g's house1":
						room_goto_next();
						break;
						
			// info on Randy's academic history
			case "social worker - academic history 1":
				scr_text("SOCIAL WORKER: I was wondering if you could tell me more about Randy's academic history");
				scr_text("PRINCIPAL ROGERS: Ah. Randy used to be in perfectly fine academic standing until about 5 years ago. Randy’s mother passed away 5 years ago you see and since then he has been having difficulties both at school and at home.");
					// option to get info on Randy's schedule (branching from Randy's academic history)
					scr_option("Randy’s schedule", "social worker - schedule 2");
				break;
				// info on Randy's schedule (branching from Randy's academic history)
				case "social worker - schedule 2":
					scr_text("PRINCIPAL ROGERS: I was wondering if you could tell me more about Randy’s schedule.");
					scr_text("PRINCIPAL ROGERS: Well it says in the records here that Randy is at risk of dropping out. He’s been coming into the office daily recently, always having caused some kind of trouble.");
					scr_text(" PRINCIPAL ROGERS: He’s in Mrs. Smith and Ms. Addams courses this term. Speaking with them may be a good way to learn more about it than I can tell you since they spend more time with him than I (or at least until recently anyways).");
					scr_text("SOCIAL WORKER: Yeah I have already talked to them, I reall appreciate you helping out with this matter.");
					scr_text("PRINCIPAL ROGERS: If you want to learn more, it may be a good idea to speak with his grandmother, Mrs. G. She is his primary caregiver.");
					scr_text("SOCIAL WORKER: Since Mrs. G is infirm and it’s important to meet with her, I should stop by and have a chat with her to see how we can proceed within her comfort zone.");
						//Potential option to go somewhere else.	
						scr_option("Go to Mrs G's House.", "social worker - mrs g's house2");
					break;
					case "social worker - mrs g's house2":
						room_goto_next();
						break;
					
		//Inside Mrs G house
		case "social worker - Mr's G's house":
			scr_text("YOU KNOCK ON DOOR...");	
			scr_text("Mrs G: Who is it?");
			scr_text("SOCIAL WORKER: Hello Mrs. G I am Ben Blemins, the Richmond Hills High School social worker. I was wondering if you would be available to speak with me about Randy.");
			scr_text("Mrs G: Oh of course! He’s not here right now, but I would be more than happy to discuss things. Would you like to come inside?");
			scr_text("SOCIAL WORKER: Asolutely, thank you so much");
			scr_text("Mrs G: Of course dear. Would you like a cold beverage? Perhaps an ice water?");
			scr_text("SOCIAL WORKER: I would love that, thank you so much.");
			scr_text("Mrs G: Is there anything specific you are hoping to learn?");
			scr_game_text("Yes actually, I was wondering if you could tell me a bit more about…");
				//option to ask about randy's behaviour at home
				scr_option("Randy’s behaviour at home." , "social worker - randy's behaviour at home");
				break;
				//info on randy's behaviour at home
				case "social worker - randy's behaviour at home":
					scr_text("Mrs G: Randy was such a bright young boy when he was younger. Ever since his mother died and his father left he’s been suffering greatly. I never really knew how to console him, especially since I was also dealing with the loss of my daughter (his mother).");
					scr_text("Mrs G: He’s been hurting a lot and acting out because of that and I’m not quite sure how to handle the situation. It must be so hard for him to deal with so much, especially adding the fact that his sisters moved away and he is so distanced from them now.");
					scr_text("Mrs G: I try not to punish him for acting out because he is already having to deal with so much.");
					scr_text("SOCIAL WORKER: I can tell you care very deeply for Randy. I’m here to help you both grow through this tough moment in life. Would you be willing to explain further about…");
						//option to ask about correcting randy's behaviour
						scr_option("Any time you have tried to correct his behaviour?" , "social worker - randy behaviour");
					break;
					
					case "social worker - randy behaviour":
						scr_text("Mrs G: I used to try and correct his behaviour when I first took him in. He always just retorts with “It doesn’t matter” and huffs off. I tried becoming more strict thinking that providing some guidelines and structure in his life would be good for him but whenever I did so he would simply disobey and sometime would even disappear for days");
						scr_text("Mrs G: He wouldn’t give any warning or tell me where he was going or where he had been or who he had been with.");
							// option to ask about how randy has acted out in the past
							scr_option("How Randy acts out or has acted out in the past?", "social worker - randy's past");
							break;
					// info on randy's past
					case "social worker - randy's past":
						scr_text("Mrs G: Randy violates every rule I set. Since he suffers with so much he doesn’t really have consequences for breaking the rules.");
						scr_text("Mrs G: He’ll sometimes even just disappear for days at a time! I’ll have no clue where he is, who he’s with, if he’s okay or even if he is alive. Anytime I’ve tried to deal with his behavior it just fails.");
						scr_text("*You look at the family photo*");
						scr_text("SOCIAL WORKER: Could you tell me more about...");
							// option to ask about family situation
							scr_option("Family Situation." , "social worker - go to family situation");
							//option to ask about death of his mother
							scr_option("Death of his mother" , "social worker - mother's death");
							//option to ask about sisters
							scr_option("Randy's Sister" , "social worker - sisters");
							break;
						
					//info about family situation
					case "social worker - go to family situation":
						room_goto(rm_family_situation);
						break;
							
					case "social worker - family situation":
						scr_text("Mrs G: There sure are! Randy is my grandson you see. He has two older sisters and an aunt. His mother sadly passed 5 years ago and that changed the entire world for those poor kids.");
						scr_text("SOCIAL WORKER: I’m so sorry for your loss. Could you tell me a bit more about…");	
							
							//option for mothers death
							scr_option("Death of his mother" , "social worker - mother's death1");
							
							//option for sisters
							scr_option("Randy's Sisters" , "social worker - sisters1");
							break;
							
					//info about mother's death
					case "social worker - mother's death1":
						scr_text("Mrs G: Randy was such a bright young boy when he was younger. Ever since his mother died and his father left he’s been suffering greatly. I never really knew how to console him, especially since I was also dealing with the loss of my daughter (his mother).");
						scr_text("Mrs G: He’s been hurting a lot and acting out because of that and I’m not quite sure how to handle the situation. It must be so hard for him to deal with so much, especially adding the fact that his sisters moved away and he is so distanced from them now.");
						scr_text("Mrs G: I try not to punish him for acting out because he is already having to deal with so much. I can tell he is still hurting about his mother because he still manages her grave and brings flowers regularly.");
						scr_text("SOCIAL WORKER: Could you tell me more about...");
							scr_option("Randy's Sisters" , "social worker - sisters2");
							break;
					
					//info about randy's sisters
					case "social worker - sisters2":
						scr_text("Mrs G: When Randy’s mother died and his father left, my other sister took in Randy’s sisters. They live with her now in the next town over.");
						scr_text("SOCIAL WORKER: It’s good that they have a safe and loving home with family to live.");
						scr_text("Mrs G: Randy’s aunt isn’t his biggest fan. That aside, Randy still tries to be close with his sisters. He makes it a priority to visit them regularly, despite the cost (I’m on a fixed income and unfortunately can’t help much with the bus tickets).");
						scr_text("SOCIAL WORKER: It’s good that he is still keeping his sisters a priority. Family connection can be great support, especially when they are all dealing with similar losses.");
						scr_text("SOCIAL WORKER: Thank you Mrs G for the information ill be leaving now...")	
							//option to leave house
							scr_option("Leave the house" , "social worker - leave house");
							break;
								case "social worker - leave house":
								room_goto_next();
								break;
					
					//info about sisters2
					case "social worker - sisters1":
						scr_text("Mrs G: When Randy’s mother died and his father left, my other sister took in Randy’s sisters. They live with her now in the next town over.");
						scr_text("SOCIAL WORKER: It’s good that they have a safe and loving home with family to live.");
						scr_text("Mrs G: Randy’s aunt isn’t his biggest fan. That aside, Randy still tries to be close with his sisters. He makes it a priority to visit them regularly, despite the cost (I’m on a fixed income and unfortunately can’t help much with the bus tickets).");
						scr_text("SOCIAL WORKER: It’s good that he is still keeping his sisters a priority. Family connection can be great support, especially when they are all dealing with similar losses.");
						scr_text("SOCIAL WORKER: Could you tell me more about...");
							//option for mother's death							
							scr_option("Randy's Mother's death" , "social worker - mother's death2");
							break;
					
					//info about mothers death2
					case "social worker - mother's death2":
						scr_text("Mrs G: Randy was such a bright young boy when he was younger. Ever since his mother died and his father left he’s been suffering greatly. I never really knew how to console him, especially since I was also dealing with the loss of my daughter (his mother).");
						scr_text("Mrs G: He’s been hurting a lot and acting out because of that and I’m not quite sure how to handle the situation. It must be so hard for him to deal with so much, especially adding the fact that his sisters moved away and he is so distanced from them now.");
						scr_text("Mrs G: I try not to punish him for acting out because he is already having to deal with so much. I can tell he is still hurting about his mother because he still manages her grave and brings flowers regularly.");
						scr_text("SOCIAL WORKER: Thank you Mrs G for the information ill be leaving now...")	
							//option to leave house
							scr_option("Leave the house" , "social worker - leave house1");
							break;
								case "social worker - leave house1":
								room_goto_next();
								break;
						
						
						
			
			
			
			//	// OPtion to accept the drink
			//	scr_option("That sounds lovely, thank you.", "social worker - accept drink");
			//	// Option to reject the drink
			//	scr_option("No thank you, but I greatly appreciate the hospitality", "social worker - reject drink");
			//break;
				
			////info after accepting drink
			//case "social worker - accept drink"	:
			//	scr_text("Mrs G: Not a problem at all. Is there anything specific you are hoping to learn?");
			//		scr_option();
			//	break;
			//	case
			////info after rejecting drink
			//case "social worker - reject drink" :
			//	scr_text("Mrs G: Not a problem at all. Is there anything specific you are hoping to learn?")
			//		scr_option();
			//	break;
			//	case
	
	}

}