scenario = "Rating";

active_buttons = 3; 
button_codes = 1,2,3; 
default_picture_duration = next_picture;     
default_font_size = 30;

begin;

# Bilder
array {                         
	bitmap { filename = "sex_001.bmp"; scale_factor = 0.8;} sex001; 
	bitmap { filename = "sex_002.bmp"; scale_factor = 0.8;} sex002; 
	bitmap { filename = "sex_003.bmp"; scale_factor = 0.8;} sex003;
	bitmap { filename = "sex_004.bmp"; scale_factor = 0.8;} sex004; 
} pics;






# SAM-Skala

bitmap{filename = "arousal_sam_1.bmp";} a_sam1;
bitmap{filename = "arousal_sam_2.bmp";} a_sam2;
bitmap{filename = "arousal_sam_3.bmp";} a_sam3;
bitmap{filename = "arousal_sam_4.bmp";} a_sam4;
bitmap{filename = "arousal_sam_5.bmp";} a_sam5;

bitmap{filename = "valence_sam_1.bmp";} v_sam1;
bitmap{filename = "valence_sam_2.bmp";} v_sam2;
bitmap{filename = "valence_sam_3.bmp";} v_sam3;
bitmap{filename = "valence_sam_4.bmp";} v_sam4;
bitmap{filename = "valence_sam_5.bmp";} v_sam5;

bitmap{filename = "sex_arousal_sam_1.bmp";} s_sam1;
bitmap{filename = "sex_arousal_sam_2.bmp";} s_sam2;
bitmap{filename = "sex_arousal_sam_3.bmp";} s_sam3;
bitmap{filename = "sex_arousal_sam_4.bmp";} s_sam4;
bitmap{filename = "sex_arousal_sam_5.bmp";} s_sam5;

# Ankreuzbox

polygon_graphic{
	sides = 4;
	radius = 40;
	line_width = 3;
	rotation = 45;
	line_color = 255, 255, 255;
	fill_color = 0, 0, 0;
	} tick_box;
	
# Ankreuzkreuz
	
line_graphic{
	coordinates = 20, 20, -20, -20;
	coordinates = 20, -20, -20, 20;
	line_width = 3;
	} tick_x;
	

# Itemfragen

text{
	caption = "Wie bewerten Sie\ndieses Bild insgesamt?";
	font_size = 40;
} valence;

text{
	caption = "Wie aufregend ist\ndieses Bild insgesamt?";
	font_size = 40;
} arousal;


# Skalenbeschriftung

text{
	caption = "Sexuelle\nErregung";
	font_size = 36;
} sex_arousal;

text{
	caption = "Sehr\nstark";
	font_size = 36;
} sex_arousal_r;

text{
	caption = "Nicht\nvorhanden";
	font_size = 36;
} sex_arousal_l;


text{
	caption = "Gefuehl";
	font_size = 36;
} emotion;

text{
	caption = "Sehr\nunangenehm";
	font_size = 36;
} valence_l;

text{
	caption = "Sehr\nangenehm";
	font_size = 36;
} valence_r;


text{
	caption = "Ruhig und\nentspannt";
	font_size = 36;
} arousal_l;

text{
	caption = "Sehr\naufregend";
	font_size = 36;
} arousal_r;


# Pfeile for Skala

arrow_graphic{
	coordinates = 100, 0, -75, 0;
	line_width = 3;
	head_width = 40;
	head_length = 30;
	color = 255, 255, 255;
	head_type = head_swift;
} arrow_left;

arrow_graphic{
	coordinates = -100, 0, 75, 0;
	line_width = 3;
	head_width = 40;
	head_length = 30;
	color = 255, 255, 255;
	head_type = head_swift;
} arrow_right;

arrow_graphic{
	coordinates = 50, 0, -50, 0;
	line_width = 3;
	head_width = 40;
	head_length = 30;
	color = 255, 255, 255;
	head_type = head_swift;
} aware_arrow_left;

arrow_graphic{
	coordinates = -50, 0, 50, 0;
	line_width = 3;
	head_width = 40;
	head_length = 30;
	color = 255, 255, 255;
	head_type = head_swift;
} aware_arrow_right;

# Valenz-Skala

picture{
	bitmap sex001; x = 500; y = 250;
	text valence; x = -250; y = 250;
	
	line_graphic tick_x; x = 0; y = -200; on_top = true;
	
	bitmap v_sam1; x = -440; y = -50;
	bitmap v_sam2; x = -220; y = -50;
	bitmap v_sam3; x =  0; y = -50;
	bitmap v_sam4; x = 220; y = -50;
	bitmap v_sam5; x = 440; y = -50;
	
	polygon_graphic tick_box; x = -480; y = -200;
	polygon_graphic tick_box; x = -360; y = -200;
	polygon_graphic tick_box; x = -240; y = -200;
	polygon_graphic tick_box; x = -120; y = -200;
	polygon_graphic tick_box; x = 0; y = -200;
	polygon_graphic tick_box; x = 120; y = -200;
	polygon_graphic tick_box; x = 240; y = -200;
	polygon_graphic tick_box; x = 360; y = -200;
	polygon_graphic tick_box; x = 480; y = -200;
	
	text valence_l; x = -500; y = -330; 
	arrow_graphic arrow_left; x = -250; y = -330;
	text emotion; x = 0; y = -330;
	arrow_graphic arrow_right; x = 250; y = -330;
	text valence_r; x = 500; y = -330;
} scale_valence;


# Arousal-Skala

picture{
	bitmap sex001; x = 500; y = 250;
	text arousal; x = -250; y = 250;
	
	line_graphic tick_x; x = 0; y = -200; on_top = true;
	
	bitmap a_sam1; x = -440; y = -50;
	bitmap a_sam2; x = -220; y = -50;
	bitmap a_sam3; x =  0; y = -50;
	bitmap a_sam4; x = 220; y = -50;
	bitmap a_sam5; x = 440; y = -50;
	
	polygon_graphic tick_box; x = -480; y = -200;
	polygon_graphic tick_box; x = -360; y = -200;
	polygon_graphic tick_box; x = -240; y = -200;
	polygon_graphic tick_box; x = -120; y = -200;
	polygon_graphic tick_box; x = 0; y = -200;
	polygon_graphic tick_box; x = 120; y = -200;
	polygon_graphic tick_box; x = 240; y = -200;
	polygon_graphic tick_box; x = 360; y = -200;
	polygon_graphic tick_box; x = 480; y = -200;
	
	text arousal_l; x = -500; y = -330;
	arrow_graphic arrow_left; x = -250; y = -330;
	text emotion; x = 0; y = -330;
	arrow_graphic arrow_right; x = 250; y = -330;
	text arousal_r; x = 500; y = -330;
} scale_arousal;


# Sex.-Arousalskala

picture{
	bitmap sex001; x = 500; y = 250; #Item-Platzhalter
	text valence; x = -250; y = 250; #Frage
	
	line_graphic tick_x; x = 0; y = -200; on_top = true; #Ankreuzer
	
	bitmap s_sam1; x = -440; y = -50;
	bitmap s_sam2; x = -220; y = -50;
	bitmap s_sam3; x =  0; y = -50;
	bitmap s_sam4; x = 220; y = -50;
	bitmap s_sam5; x = 440; y = -50;
	
	polygon_graphic tick_box; x = -480; y = -200;
	polygon_graphic tick_box; x = -360; y = -200;
	polygon_graphic tick_box; x = -240; y = -200;
	polygon_graphic tick_box; x = -120; y = -200;
	polygon_graphic tick_box; x = 0; y = -200;
	polygon_graphic tick_box; x = 120; y = -200;
	polygon_graphic tick_box; x = 240; y = -200;
	polygon_graphic tick_box; x = 360; y = -200;
	polygon_graphic tick_box; x = 480; y = -200;
	
	text sex_arousal_l; x = -500; y = -330;
	arrow_graphic arrow_left; x = -250; y = -330;
	text sex_arousal; x = 0; y = -330;
	arrow_graphic arrow_right; x = 250; y = -330;
	text sex_arousal_r; x = 500; y = -330;
} scale_sex_arousal;


array{
	picture scale_valence;	
	picture scale_arousal;
	picture scale_sex_arousal;
} scales;


# Darbietungstrial

trial{
	stimulus_event{
		picture scale_valence;
		duration = next_picture;
	} scale;
}its;

######################################################################################################################################################

# PCL-Teil
begin_pcl;
include "rating_subroutines.pcl";
string results_path = "Y:\\Klein\\Affect_CueReactivity\\Presentation\\Logfiles";
string results_filename = "sexstudie_"+logfile.subject()+"rating_pic.txt";
string suffix = "rating1"; #+ string(parameter_manager.get_int("rating_nr"));
int length_suffix = suffix.count();
# string name_controlfile = "\steuerfiles\\0205ok_" + logfile.subject() + "_tag1_acq.ste";
int input_keys = 2; # 1 = port-input, 2 = Tastatur

# Infos zu Stimuli
int n_all_pictures = 60;

string sex1 = "sex001"; 
string sex2 = "sex002"; 
string sex3 = "sex003"; 
string sex4 = "sex004"; 

#array<string> stim_categorya[n_all_pictures];
array<string> names_stimuli[n_all_pictures];

names_stimuli[1] = sex1;
names_stimuli[2] = sex2;
names_stimuli[3] = sex3;
names_stimuli[4] = sex4;


# Infos zu Ratings und Ergebnissen

int n_control_columns = 7;
int n_results_columns = 6;
int n_scales = 3;
int n_ratings = n_all_pictures * n_scales;
#int n_ratings = n_scales * events;
#int time_out = 4000; # for fmri
int time_out = 999999;
array<int> start_value_scale[n_scales] = {5, 5, 5};
array<int> max_value_scale[n_scales] = {9, 9, 9};
array<int> tick_distance_scale[n_scales] = {120, 120, 120};
array<int> tick_x_pos[n_scales] = {0, 0, 0};
array<int> index_tick_part[n_scales] = {1, 1, 1};
array<string> names_scales[n_scales] = {"Valenz", "Arousal", "Sexuelle Erregung"};
array<bitmap> empty[0];
int all_n_ratings = 0;
#int timeout = 999999;



##################################################################################
# Subroutines

sub string change_filename_if_existent(string filename)
begin
	if file_exists(results_path + filename) then
	int counter = 1;
	bool file_existence = true;
		loop
		until file_existence == false
		begin
			int index_end_name = filename.find(suffix) + length_suffix;
			filename = filename.substring(1,index_end_name) + "-" + string(counter) + ".txt";
			if file_exists(results_path + filename) == false then
				file_existence = false
			else
				counter = counter + 1;
			end;
		end;
	end;
	return filename;
end;

##################################################################################
# Main Loop

#read_controlfile();

results_filename = change_filename_if_existent(results_filename);

array<int> rating_steuerung [n_control_columns][n_ratings] = init_rating_control(names_scales, names_stimuli, start_value_scale, max_value_scale, tick_x_pos, tick_distance_scale, index_tick_part);

array<string> rating_ergebnisse [n_results_columns][n_ratings] = init_results_store(names_scales, names_stimuli);


loop int rat = 1
until rat > n_ratings
begin
	#present picture until button press occurs
	#then go to rating scale
	
	handle_its(scales, pics, its, rat, time_out, input_keys, rating_steuerung, rating_ergebnisse);
	rat = rat + 1;
end;



write_table(results_filename, rating_ergebnisse, n_ratings, n_results_columns);
#write_table(results_filename, ucsp_rating_ergebnisse, ucsp_n_ratings, n_results_columns);