/// Make the textbox for the introductory text to appear in

// draw textbox
draw_sprite(spr_textbox, 0, x,y);


// draw the text
draw_set_font(Fnt_Introductory_text);
text = "Randy James, a Caucasian male 16 years of age, was referred to the school social worker because of his failing grades and unexcused absences. He was deemed by his teachers and other school personnel as being 'at risk' of dropping out of school and possible for involvement with the juvenile justice system.";
stringHeight = string_height(text);
draw_text_ext(x,y, text, stringHeight, boxWidth);