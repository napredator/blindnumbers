///@desc number pitch alarm
number_i+=1;
number_length-=1;
if number_i<=string_length(number)
{
sound_pitch=0.5+string_char_at(number,number_i)/10;;
}
audio_stop_sound(square_snd);
if number_length>-1
{
audio_play_sound(square_snd,0,1,1,0,sound_pitch);
alarm[1]=number_speed;
}