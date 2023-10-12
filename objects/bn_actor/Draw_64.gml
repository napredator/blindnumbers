draw_text_transformed(0,0,"level: "+string(number_speed),5,5,0);
var nh=number;
if hide_text=0
{
nh="?????";
}
draw_text_transformed_colour(0,60,nh,5,5,0,c_yellow,c_yellow,c_yellow,c_yellow,1);
draw_text_transformed(0,120,number_type,5,5,0);
draw_text_transformed(0,190,"shortcuts:",3,3,0);
draw_text_transformed(0,240,"f1: close the application",3,3,0);
draw_text_transformed(0,280,"S: disable spoken numbers",3,3,0);
draw_text_transformed(0,320,"backspace: delete typed number",3,3,0);
draw_text_transformed(0,360,"R: listen to the number again",3,3,0);
draw_text_transformed(0,400,"enter: submit typed number",3,3,0);
draw_text_transformed(0,440,"H: reveal number",3,3,0);