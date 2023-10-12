if keyboard_check_pressed(vk_f1)
{
game_end();
}
/*
if keyboard_check_pressed(vk_f2)
{
game_restart();
}
*/
// hide text
if keyboard_check_pressed(ord("H"))
{
if hide_text=1
{
hide_text=0;
}
else
{
hide_text=1;
}
}
//
// finish
if keyboard_check_pressed(vk_enter)
&& number_length=-1
&& alarm[1]<1
{
if number_type=number
{
audio_stop_sound(correct_snd);
audio_play_sound(correct_snd,0,0);
alarm[0]=60;
alarm[1]=0;
number_length=string_length(number);
number_i=0;
if number_speed>1
{
number_speed-=1;
}
randomize();
number=irandom_range(10000,99999);
number_type="";
}
else
{
audio_stop_sound(incorrect_snd);
audio_play_sound(incorrect_snd,0,0);
}
}
//
// enable/disable spoken numbers
if keyboard_check_pressed(ord("S"))
{
if spoken_number=1
{
spoken_number=0;
}
else
{
spoken_number=1;
}
}
//
// delete
if keyboard_check_pressed(vk_backspace)
&& number_length=-1
&& alarm[1]<1
{
audio_stop_sound(number_announce_sound);
audio_stop_sound(square_snd);
audio_stop_sound(delete_snd);
audio_play_sound(delete_snd,0,0);
number_type="";
}
//
// restart
if keyboard_check_pressed(ord("R"))
{
audio_stop_sound(square_snd);
alarm[0]=30;
alarm[1]=0;
number_length=string_length(number);
number_i=0;
}
//
// player control
if number_length=-1
&& alarm[1]<1
{
for (var i=0;i<10;i+=1)
{
if keyboard_check_pressed(ord(i))
{
number_announce_sound=nas[i];
if i=0
{
sound_pitch=0.5;
}
else
{
sound_pitch=0.5+i/10;
}
if spoken_number=1
{
audio_stop_sound(number_announce_sound);
audio_play_sound(number_announce_sound,0,0);
}
audio_stop_sound(square_snd);
audio_play_sound(square_snd,0,1,1,0,sound_pitch);
number_type+=keyboard_lastchar;
}
else if keyboard_check_released(ord(i))
{
audio_stop_sound(square_snd);
}
}
}
//