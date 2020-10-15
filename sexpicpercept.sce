scenario = "sex";
#scenario_type=fMRI_emulation;
#scenario_type = fMRI;
scan_period=2000;

# pulses_per_scan=1;                
# pulse_code=1;
# pulse_width=15;            #zuvor 15 - fuer Physio auf 100 geaendert - laut Carlo auch 30 ok    
begin;

############################################################

# Default-Picture
picture {text { caption = "+"; font_size = 48; font_color = 200,200,200;};
      x=0;
      y=0;} default;                
                            
#  fixation
picture {text { caption = "+"; font_size = 48; font_color = 200,200,200;};
      x=0;
      y=0;
      } fixk;

bitmap {
     filename="wfix.bmp";
   } scale_bitmap;


############################################################
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

   
#  picture presentation
trial {     
   start_delay = 0;   
   trial_type = fixed;
   trial_duration = stimuli_length; # trial so lange präsentieren, wie das Bild dauert
	# trial_duration = 1000; 	# trial immer für eine sekunde präsentieren   
   
	stimulus_event {
   picture default;  
   time = 0; 
   duration = 1000; 				# Bild immer für eine Sekunde präsentieren
	# duration = 983;						# hard gecodet für framerate delay 
   } stim;
    
} pictrial;   
          

#  fixation         
          
trial {     
   start_delay = 0;   
   trial_type = fixed;
   trial_duration = 100000;   #bis zu 10 sekunden oder stimuli_length    
   
	stimulus_event {
   picture fixk;  
   time=0; 
   duration=next_picture;
   } fixstim;
   
} fixtrial;   

######################## PCL ##############################
 
begin_pcl;
 
int i;  
int x;
int start_time;
int n;
int z; 
   
#int current_pulse;               

string steuerfile_name = "Y:\\Klein\\Affect_CueReactivity\\Presentation\\\Steuerfiles\\sexstudie_vp"+logfile.subject()+".txt";
string savefile_name = "0188ok_"+logfile.subject()+"rating_pic.txt";;
               
#int skip_volumes=2;   # =15
int end_volumes = 418; # =15
int max_time = 836000; #überbleibsel vom rating?
int events = 180; #wieviele Bild-events gibt es insgesamt


array<int> pic_numbera[events]; 
array<string> pic_name[events];

array<string> instruction[24];

array<string> stim_category[events];
array<int> trial_onset[events];


input_file ifile = new input_file;
#output_file out = new output_file;

##########################SUBROUTINEN#############################################################

#sub pulse_pause
#begin
#   loop x = 0
#   until x > skip_volumes
#   begin  
#      x = pulse_manager.main_pulse_count();
#   end;
#end;      

################## EINLESEN DER PRESENTATION REIHENFOLGE ##########################################
# hole dir aus dem Steuerfile immer diese 3 Variablen und mache das fuer alle Events #
 
sub read_presentation_order
begin 
   loop i = 1
   until i > events    
      begin              
         stim_category[i] = ifile.get_string(); # read pic category
         pic_numbera[i] = ifile.get_int(); 		 # read number of pic
         trial_onset[i] = ifile.get_int();       # read onset time (ms)
   i = i+1;     
   end;
end;


######################### SUBROUTINE pictures ####################################################
### wann welches Stimulusbild zeigen und im Logfile mitkodieren#############

sub show_picture (string cat, int a)
begin
        
   if (cat == "sex") then        
      stim.set_event_code("sex"+string(pic_numbera[a]));
      stim.set_stimulus (sex[pic_numbera[a]]);    
      pic_name[a] = "sex "+string(pic_numbera[a]);

   elseif (cat == "neu") then
      stim.set_event_code("neu"+string(pic_numbera[a]));
      stim.set_stimulus (neu[pic_numbera[a]]);  
      pic_name[a] = "neu "+string(pic_numbera[a]);
   end;   

end;

########################## end of subroutines #######################################################

ifile.open(steuerfile_name);
read_presentation_order();  
ifile.close();
fixstim.set_event_code("fixation");

#array<string> names_stimuli[events] = compile_block_names(stim_category)#, stim_categoryb, stim_categoryc, stim_categoryd, stim_categorye);
#out.open(out_file);  


####### Experiment Loop #######
          
# fixtrial.present();       		# fürs MRT
# pulse_pause();     

int t = 1;
start_time = clock.time();
term.print(start_time);

z = trial_onset[t];              # onset of first pic trial - refresh period
term.print(z);
fixtrial.set_duration(z);        # show fixation cross until first pic trial starts
fixtrial.present();					# show fixation cross

loop  t = 1;
until t > events
begin  
	
   show_picture(stim_category[t], t);
   pictrial.present();  #is presented as soon as possible
      
   if (t == events) then  #when experiment is over
        z = end_volumes * 2000 + 2000;
   else 
		z = trial_onset[t+1] - (clock.time() - start_time); #next onset - (current time - start time) - refresh_period = duration of fixation
		term.print("\n");
		term.print("next fixk dur is: ");
		term.print(z);
		fixtrial.set_duration(z);
		fixtrial.present();
   end;
       
   t = t+1; #loop control --> next trial
    
end; 

# loop
# until clock.time() > start_time + max_time
# begin
# end; 

