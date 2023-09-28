mkdir -p /task1/sed_results/
head -20 /dante/divine_comedy_canto_1 | sed 's/[aoeuiyAOEUIY]/_/g' > /task1/sed_results/beatbox_cheatsheet
head -20 /dante/divine_comedy_canto_1 | sed 's/[b-df-hj-np-tv-xzB-DF-HJ-NP-TV-XZ]/./g' > /task1/sed_results/hard_pronunciation
head -20 /dante/divine_comedy_canto_1 | sed 's/\W//g ; s/[aoeuiyAOEUIY]/-/g ; s/\w/./g' > /task1/sed_results/i_am_samuel_morse
head -20 /dante/divine_comedy_canto_1 | sed 's/\([b-df-hj-np-tv-xzB-DF-HJ-NP-TV-XZ]\)\1/\1\1\1\1/g ; s/\([aeiouyAEIOUY]\)\1/\U\1\U\1/g' > /task1/sed_results/dr_fEElgOOd
head -20 /dante/divine_comedy_canto_1 | sed 's/\(\b\)/-\1/g ; s/[ '\'',]//g' > /task1/sed_results/fancy_kebab
head -20 /dante/divine_comedy_canto_1 | sed 's/\(^[AEIOYU]\)/  \1/g ; s/\.$/!!!/g' > /task1/sed_results/from_the_start_to_the_end