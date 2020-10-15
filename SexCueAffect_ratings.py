# author: s-kline
# read rating data from picture rating task

import os
import pprint
resultsfile = open('W:\\Strahler\\FOR Vorstudie\\Daten\\rating_data.txt', 'w')
file_dir = 'W:\\Strahler\\FOR Vorstudie\\Daten\\Logfiles\\'
files = os.listdir(file_dir)

ratfiles = [item for item in files if item.startswith('sexpicpercept')]
ratlogfiles = [item for item in files if item.endswith('_rating.log')]
eeglogfiles = [item for item in files if item.endswith('sexpicpercept.log')]

all_ratings = []

print(ratlogfiles)

# get rating data from ratfiles
rating_dict = dict()
for rat in ratfiles:
    rating_dict = dict()
    rating_dict['vp_nr'] = rat[14:17] # padded with zeros
    txt = open(file_dir + rat, 'r')
    lines = txt.readlines()
    for line in lines:
        cols = line.split('\t')
        if cols[0].startswith('neu') or cols[0].startswith('sex'):
            rating_dict[cols[0] + '_' + cols[1]] = cols[2]
    all_ratings.append(rating_dict)
# all_ratings is a list of subject-specific dictionaries (rating_dict) containing the subject number vp_nr and data


# get RT data (in seconds) from ratlogfiles
rt_dict = {}
for log in ratlogfiles:
    rt_dict = {}
    rt_list = []
    rt_dict['vp_nr'] = log[:3] # padded with zeros
    # print(rt_dict['vp_nr'])
    logtxt = open(file_dir + log, 'r')
    loglines = logtxt.readlines()
    for line in loglines:
        cols = line.split('\t')
        if len(cols) > 5 and cols[0].isdigit():
            if cols[2] == 'Picture' or cols[2] == 'Response':
                if len(cols[3]) <= 5:
                    rt_list.append(cols[3])
                    rt_list.append(int(cols[4])/10000)

    # only picture and corresponding (next) response times
    rts = []
    for i in range(len(rt_list)-3):
        if str(rt_list[i]).startswith('sex') or str(rt_list[i]).startswith('neu'):
            rts.append([rt_list[i], rt_list[i+1], rt_list[i+2], rt_list[i+3]]) # only pic event with following response (4 entries)
    # print(rts)
    for entry in rts:
        if (entry[3] - entry[1]) > 10: # pics are presented for max 10s. if rt is longer, the response belongs to rating, not pic
            rt_dict[entry[0] + '_wait'] = 10
        else:
            rt_dict[entry[0] + '_wait'] = entry[3] - entry[1] # compute rt and add to rt_dict with pic as key
    # append RT data to vp rating dicts
    for rat_dict in all_ratings:
        if rat_dict['vp_nr'] == rt_dict['vp_nr']:
            rat_dict.update(rt_dict)

headerlist = sorted(list(set(rating_dict.keys())))
# pprint.pprint(all_ratings)

# write data to resultsfile
resultsfile.write('VP_Nr\t' + '\t'.join(headerlist))
for vp in all_ratings:
    resultsfile.write('\n' + vp['vp_nr'])
    for key in headerlist:
        if key in vp:
            resultsfile.write('\t' + str(vp[key]))
        else:
            resultsfile.write('\t' + '99')
resultsfile.close()
