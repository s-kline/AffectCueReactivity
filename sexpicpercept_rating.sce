scenario = "Rating";

active_buttons = 3; 
button_codes = 1,2,3; 
default_picture_duration = next_picture;     
default_font_size = 30;

begin;

################################################################################

# Default-Picture
picture {text { caption = "+"; font_size = 48; font_color = 200,200,200;};
      x=0;
      y=0;} default;

bitmap {filename = "blackbox.bmp"; scale_factor = 0.7;} boxpic;

	

# pictures for viewing time trials
array {                         
	picture { bitmap { filename = "sex_001.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_002.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_003.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_004.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_005.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_006.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_007.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_008.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_009.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_010.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_011.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_012.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_013.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_014.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_015.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_016.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_017.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_018.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_019.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_020.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_021.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_022.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_023.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_024.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_025.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_026.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_027.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_028.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_029.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "sex_030.bmp";}; x=0; y=0;};
	
} sex;

array {                         
	picture { bitmap { filename = "neu_001.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_002.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_003.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_004.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_005.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_006.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_007.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_008.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_009.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_010.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_011.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_012.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_013.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_014.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_015.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_016.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_017.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_018.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_019.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_020.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_021.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_022.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_023.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_024.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_025.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_026.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_027.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_028.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_029.bmp";}; x=0; y=0;};
	picture { bitmap { filename = "neu_030.bmp";}; x=0; y=0;};
	
} neu;


# scaled bitmaps for ratings
array{
	bitmap {filename = "sex_001.bmp"; scale_factor = 0.7;} sex001; 
	bitmap {filename = "sex_002.bmp"; scale_factor = 0.7;} sex002; 
	bitmap {filename = "sex_003.bmp"; scale_factor = 0.7;} sex003;
	bitmap {filename = "sex_004.bmp"; scale_factor = 0.7;} sex004;
	bitmap {filename = "sex_005.bmp"; scale_factor = 0.7;} sex005; 
	bitmap {filename = "sex_006.bmp"; scale_factor = 0.7;} sex006; 
	bitmap {filename = "sex_007.bmp"; scale_factor = 0.7;} sex007;
	bitmap {filename = "sex_008.bmp"; scale_factor = 0.7;} sex008;
	bitmap {filename = "sex_009.bmp"; scale_factor = 0.7;} sex009; 
	bitmap {filename = "sex_010.bmp"; scale_factor = 0.7;} sex010; 
	bitmap {filename = "sex_011.bmp"; scale_factor = 0.7;} sex011;
	bitmap {filename = "sex_012.bmp"; scale_factor = 0.7;} sex012;
	bitmap {filename = "sex_013.bmp"; scale_factor = 0.7;} sex013; 
	bitmap {filename = "sex_014.bmp"; scale_factor = 0.7;} sex014; 
	bitmap {filename = "sex_015.bmp"; scale_factor = 0.7;} sex015;
	bitmap {filename = "sex_016.bmp"; scale_factor = 0.7;} sex016;
	bitmap {filename = "sex_017.bmp"; scale_factor = 0.7;} sex017; 
	bitmap {filename = "sex_018.bmp"; scale_factor = 0.7;} sex018; 
	bitmap {filename = "sex_019.bmp"; scale_factor = 0.7;} sex019;
	bitmap {filename = "sex_020.bmp"; scale_factor = 0.7;} sex020;
	bitmap {filename = "sex_021.bmp"; scale_factor = 0.7;} sex021;
	bitmap {filename = "sex_022.bmp"; scale_factor = 0.7;} sex022;
	bitmap {filename = "sex_023.bmp"; scale_factor = 0.7;} sex023; 
	bitmap {filename = "sex_024.bmp"; scale_factor = 0.7;} sex024; 
	bitmap {filename = "sex_025.bmp"; scale_factor = 0.7;} sex025;
	bitmap {filename = "sex_026.bmp"; scale_factor = 0.7;} sex026;
	bitmap {filename = "sex_027.bmp"; scale_factor = 0.7;} sex027; 
	bitmap {filename = "sex_028.bmp"; scale_factor = 0.7;} sex028; 
	bitmap {filename = "sex_029.bmp"; scale_factor = 0.7;} sex029;
	bitmap {filename = "sex_030.bmp"; scale_factor = 0.7;} sex030;
} sex_bmps;

array{
	bitmap {filename = "neu_001.bmp"; scale_factor = 0.7;} neu001; 
	bitmap {filename = "neu_002.bmp"; scale_factor = 0.7;} neu002; 
	bitmap {filename = "neu_003.bmp"; scale_factor = 0.7;} neu003;
	bitmap {filename = "neu_004.bmp"; scale_factor = 0.7;} neu004;
	bitmap {filename = "neu_005.bmp"; scale_factor = 0.7;} neu005; 
	bitmap {filename = "neu_006.bmp"; scale_factor = 0.7;} neu006; 
	bitmap {filename = "neu_007.bmp"; scale_factor = 0.7;} neu007;
	bitmap {filename = "neu_008.bmp"; scale_factor = 0.7;} neu008;
	bitmap {filename = "neu_009.bmp"; scale_factor = 0.7;} neu009; 
	bitmap {filename = "neu_010.bmp"; scale_factor = 0.7;} neu010; 
	bitmap {filename = "neu_011.bmp"; scale_factor = 0.7;} neu011;
	bitmap {filename = "neu_012.bmp"; scale_factor = 0.7;} neu012;
	bitmap {filename = "neu_013.bmp"; scale_factor = 0.7;} neu013; 
	bitmap {filename = "neu_014.bmp"; scale_factor = 0.7;} neu014; 
	bitmap {filename = "neu_015.bmp"; scale_factor = 0.7;} neu015;
	bitmap {filename = "neu_016.bmp"; scale_factor = 0.7;} neu016;
	bitmap {filename = "neu_017.bmp"; scale_factor = 0.7;} neu017; 
	bitmap {filename = "neu_018.bmp"; scale_factor = 0.7;} neu018; 
	bitmap {filename = "neu_019.bmp"; scale_factor = 0.7;} neu019;
	bitmap {filename = "neu_020.bmp"; scale_factor = 0.7;} neu020;
	bitmap {filename = "neu_021.bmp"; scale_factor = 0.7;} neu021;
	bitmap {filename = "neu_022.bmp"; scale_factor = 0.7;} neu022;
	bitmap {filename = "neu_023.bmp"; scale_factor = 0.7;} neu023; 
	bitmap {filename = "neu_024.bmp"; scale_factor = 0.7;} neu024; 
	bitmap {filename = "neu_025.bmp"; scale_factor = 0.7;} neu025;
	bitmap {filename = "neu_026.bmp"; scale_factor = 0.7;} neu026;
	bitmap {filename = "neu_027.bmp"; scale_factor = 0.7;} neu027; 
	bitmap {filename = "neu_028.bmp"; scale_factor = 0.7;} neu028; 
	bitmap {filename = "neu_029.bmp"; scale_factor = 0.7;} neu029;
	bitmap {filename = "neu_030.bmp"; scale_factor = 0.7;} neu030;
} neu_bmps;


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
	caption = "Wie fühlen Sie sich bei\ndiesem Bild?";
	font_size = 40;
} valence;


text{
	caption = "Wie fühlen Sie sich bei\ndiesem Bild?";
	font_size = 40;
} arousal;


# Skalenbeschriftung sex. Erregung

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

# Skalenbeschriftung Valenz

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

#Skalenbeschriftung Arousal

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


# Valenz-Skala

picture{
	bitmap sex001; x = 300; y = 250;
	text valence; x = 0; y = 250;
	# text valence; x = -250; y = 250;
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
	bitmap sex001; x = 300; y = 250;
	text arousal; x = 0; y = 250;
	# text arousal; x = -250; y = 250;
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


# Sex.-Arousal-Skala

picture{
	bitmap sex001; x = 300; y = 250;
	text valence; x = 0; y = 250;
	# text valence; x = -250; y = 250;
	line_graphic tick_x; x = 0; y = -200; on_top = true;
	
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


#  picture presentation
trial {     
   start_delay = 0;   
   trial_duration = 10000; # trial bis zu 10 sekunden präsentieren
	trial_type = first_response;
	stimulus_event {
   picture default;  
   time = 0;
	target_button = 2; 
   duration = next_picture; 				# Bild so lange präsentieren, bis das nächste Bild kommt
   } stim;
} pictrial; 


# Darbietungstrial

trial{
	stimulus_event{
		picture scale_valence;
		duration = next_picture;
	} scale;
}its;

#####################################################################################################################################################################

# PCL-Teil
begin_pcl;
include "rating_subroutines.pcl";
string results_path = "Y:\\Klein\\Affect_CueReactivity\\Presentation\\Logfiles";
string results_filename = "sexpicpercept_"+logfile.subject()+"_rating.txt";
string suffix = "rating1"; #+ string(parameter_manager.get_int("rating_nr"));
int length_suffix = suffix.count();
string name_controlfile = "Y:\\Klein\\Affect_CueReactivity\\Presentation\\\Steuerfiles\\sexstudie_rating_vp"+logfile.subject()+".txt";
int input_keys = 2; # 1 = port-input, 2 = Tastatur

# Stimuli
int n_stimuli = 60;

array<int> pic_number[n_stimuli]; 
array<string> pic_name[n_stimuli];
array<string> stim_category[n_stimuli];

array<string> names_stimuli[n_stimuli]; # sind leer, werden mittels steuerfile gefüllt
array<bitmap> pics [n_stimuli];


# Skalen
int n_scales = 3;
array<int> scale_order[n_scales] = {1, 2, 3};
array<int> start_value_scale[n_scales] = {5, 1, 1};
array<int> max_value_scale[n_scales] = {9, 9, 9};
array<int> tick_distance_scale[n_scales] = {120, 120, 120};
array<int> tick_x_pos[n_scales] = {0, -480, -480};
array<int> index_tick_part[n_scales] = {3, 3, 3};
array<string> names_scales[n_scales] = {"Valenz", "Arousal", "Sexuelle Erregung"};

# Infos zu Ratings und Ergebnissen
int n_ratings = n_stimuli * n_scales;
int all_n_ratings = 0;
int n_control_columns = 7;
int n_results_columns = 6;
int timeout = 999999;
int i;
int t = 1;

input_file ifile = new input_file;

##################################################################################
# Subroutines

# read presentation order #
sub read_presentation_order
begin 
   loop i = 1;
   until i > n_stimuli    
      begin              
         stim_category[i] = ifile.get_string();  # read pic category
         pic_number[i] = ifile.get_int(); 		 # read number of pic

			term.print("\n");
			term.print(stim_category[i]);
			term.print(pic_number[i]);
   i = i+1;     
   end;
end;

# change filename #
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

### wann welches Stimulusbild zeigen und im Logfile mitkodieren ###

sub show_picture (string cat, int a) # braucht string und zahl aus den steuer-arrays
begin
   if (cat == "sex") then        
      stim.set_event_code("sex"+string(pic_number[a]));
      stim.set_stimulus (sex[pic_number[a]]);    
      pic_name[a] = "sex "+string(pic_number[a]);
		term.print("\n");
		term.print(pic_name[a]);

   elseif (cat == "neu") then
      stim.set_event_code("neu"+string(pic_number[a]));
      stim.set_stimulus (neu[pic_number[a]]);  
      pic_name[a] = "neu "+string(pic_number[a]);
		term.print("\n");
		term.print(pic_name[a]);
   end;   

end;

### create custom n_stimuli and pics arrays from randomization controlfile ###

sub rand_rating (string cat, int z) 
begin
		if (cat == "sex") then
			names_stimuli[z] = "sex"+string(pic_number[z]); #"sex1", "sex2", "sex10" etc
			pics[z] = sex_bmps[pic_number[z]]; #objekt(bitmap) an einer stelle 1-30 (zahl aus dem steuerfile) des sex_bmps array 
		elseif (cat == "neu") then
			names_stimuli[z] = "neu"+string(pic_number[z]);
			pics[z] = neu_bmps[pic_number[z]];
	end;
end;

##################################################################################

ifile.open(name_controlfile);
read_presentation_order();  
ifile.close();

loop int z = 1
until z > n_stimuli

begin
	rand_rating(stim_category[z], z);
	z = z + 1
end;

results_filename = change_filename_if_existent(results_filename);

array<int> rating_steuerung [n_control_columns][n_ratings] = init_rating_control(names_scales, names_stimuli, start_value_scale, max_value_scale, tick_x_pos, tick_distance_scale, index_tick_part);

array<string> rating_ergebnisse [n_results_columns][n_ratings] = init_results_store(names_scales, names_stimuli);

# Main Loop
loop int rat = 1
until rat > n_ratings
begin
	if rat == 1 then
		show_picture(stim_category[t], t);
		pictrial.present(); # wird maximal für 10 s präsentiert, endet mit button press (2)
	else 
		show_picture(stim_category[t], t);
		pictrial.present(); # wird maximal für 10 s präsentiert, endet mit button press (2)
	end;
	handle_its(scales, pics, its, rat, timeout, input_keys, rating_steuerung, rating_ergebnisse, boxpic);
	handle_its(scales, pics, its, rat + 1, timeout, input_keys, rating_steuerung, rating_ergebnisse, boxpic);
	handle_its(scales, pics, its, rat + 2, timeout, input_keys, rating_steuerung, rating_ergebnisse, boxpic);

	t = t + 1;
	rat = rat + 3;
end;



write_table(results_filename, rating_ergebnisse, n_ratings, n_results_columns);
