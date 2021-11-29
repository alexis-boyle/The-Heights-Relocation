/// Make the textbox for the introductory text to appear in

// draw textbox
draw_sprite(spr_textbox, 0, 40, 400);


// draw the text
draw_set_font(Fnt_Introductory_text);
text = "This is the home of Randy James. He moved in with his maternal grandmother, Mrs. G, after his mother passed away and his father left him and his siblings.";
stringHeight = string_height(text);
draw_text_ext(40 ,400, text, stringHeight, boxWidth);