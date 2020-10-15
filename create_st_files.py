# author: s-kline
# create controlfiles for EEG picture presentation paradigm
# 30 sexual and 30 neutral pictures in one block (no more than three of the same category after another)
# onsets vary between (last_onset + 2 seconds) and (last_onset + 3 seconds)
# do this three times, write into one file so there are 180 pic trials

import random
from sys import exit

categories = ['sex', 'neu']
n_cat = 30  # how many pictures of each category
pics = 60  # how many unique pictures in one block?
allowed_reps = 3  # how many repititions of the same category are allowed
blocks = 3  # how many times should the stimuli be repeated

first_onset = 500  # when should the first picture be presented? e.g. 500 ms after experiment start
duration = 1000  # how long should pictures be presented for? e.g. 1000 ms
interval_range = [2000, 3000]  # how long should the variable pause between pics be? e.g. 2000-3000 ms

n_subjects = 120
directory = 'Y:\\Klein\\Affect_CueReactivity\\Presentation\\Steuerfiles\\'  # where should the files be saved


# script starts here
##############################################################################################################


onsets = [0]*(pics * blocks)
last_word = False
shuffles = 0

# generate initial stimuli list, that we need for each block of each experiment
categories += ((n_cat - 1) * categories)
categories.sort()
numbers = list(range(1, (n_cat + 1)))
numbers += numbers
trial_list = list(zip(categories, numbers))  # combine words with numbers

subjects = list(range(1, (n_subjects + 1)))
for subject in subjects:
    blocks_trial_list = [] # initialize list
    # shuffle with restrictions
    for i in range(blocks):
        violations = 1  # starting point for checking
        while violations > 0:
            random.shuffle(trial_list)  # shuffle word/number pairs
            shuffles += 1

            # perform check and store number of violations
            violations = 0
            for position in range(pics):  # check each line of the trial list
                initial_word = trial_list[position][0]
                last_cats = []
                # do this only at start of every block after the first one
                if type(last_word) == str and position == 0:
                    # check if currrent word is the same as the last one from the last block. if yes, swap
                    if last_word == initial_word:
                        violations += 1
                # do this in every block after the first allowed_rep number of words has passed
                if position >= allowed_reps:
                    last_pairs = trial_list[(position - allowed_reps): position]  # get last repeated word/number pairs
                    for j in range(allowed_reps):                      # get last repeated words only
                        last_cats.append(last_pairs[j][0])
                    if last_cats.count(initial_word) == allowed_reps:  # if the last repeated words are all the same as the current word,
                        violations +=1                                 # that is a violation

            # determine if restrictions were violated
            if violations == 0:
                last_word = trial_list[position][0]  # save for later
                blocks_trial_list = blocks_trial_list + trial_list  # append blocks onto each other
                break  #generate next block or finish

    # make another list with picture onsets as a third column
    onsets[0] = first_onset
    for k in range(1, (pics*blocks)):
        rand_interval = random.randrange(interval_range[0], interval_range[1])
        onsets[k] = (onsets[k-1] + duration + rand_interval)

    # write results into text file
    st_file = open(directory + 'sexstudie_rating_vp'+ str(subject) +'.txt', 'w+')

    for line in range(0, pics * blocks):
        st_file.write(str(blocks_trial_list[line][0] + '\t' + str(blocks_trial_list[line][1]))) #  + '\t' + str(onsets[line])))
        st_file.write('\n')
    st_file.close()

print ('finished!')
exit(0)