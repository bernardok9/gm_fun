/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self();

draw_set_font(fnt_small);

y_offset = - sprite_height / 2 - 10;
text_life = string(monster_hp) + " / " + string(monster_hp_max);


draw_set_color(c_white);
draw_text(x - string_width(text_life) / 2, y + y_offset, text_life);


