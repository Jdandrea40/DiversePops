// Draws textbox sprite
draw_sprite(spr_textBox, 0, x, y)

// sets font of text box
draw_set_font(fnt_Impact_15)

// Creates box with text wrapping based on given text array
draw_text_ext(x + 5, y, text[page], stringHeight, boxWidth - 20)
