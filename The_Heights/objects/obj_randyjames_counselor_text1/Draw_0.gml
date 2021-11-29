/// Make the textbox for the introductory text to appear in

// draw textbox
draw_sprite(spr_textbox, 0, x,y);


// draw the text
draw_set_font(Fnt_Introductory_text);
text = "Randy has been observed hanging out with a group of older boys who had dropped out of school and were believed to be engaged in illicit sale of drugs. Many of their cohorts are currently, or have been, at the Juvenile Detention Center.";
stringHeight = string_height(text);
draw_text_ext(x,y, text, stringHeight, boxWidth);