rm -r /task1/*
mkdir -p /task1/{starts_scum,ends_trace,contains_ch_th_sh,five_letters,sun_star}
cd /task1

cp /words/[scum]* /task1/starts_scum/
cp /words/*[trace] /task1/ends_trace/
cp /words/*{ch,th,sh}* /task1/contains_ch_th_sh/
cp /words/????? /task1/five_letters/
mv /task1/{starts_scum,ends_trace,contains_ch_th_sh,five_letters}/[sun]*[star] /task1/sun_star/