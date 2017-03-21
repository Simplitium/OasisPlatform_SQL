#!/bin/bash

rm -R -f output/*
rm -R -f fifo/*
rm -R -f work/*

mkfifo fifo/gul_P1

mkfifo fifo/gul_S1_summary_P1
mkfifo fifo/gul_S1_summaryeltcalc_P1
mkfifo fifo/gul_S1_eltcalc_P1
mkfifo fifo/gul_S1_summarysummarycalc_P1
mkfifo fifo/gul_S1_summarycalc_P1
mkfifo fifo/gul_S1_summarypltcalc_P1
mkfifo fifo/gul_S1_pltcalc_P1
mkfifo fifo/gul_S1_summaryaalcalc_P1
mkfifo fifo/gul_S2_summary_P1
mkfifo fifo/gul_S2_summaryeltcalc_P1
mkfifo fifo/gul_S2_eltcalc_P1
mkfifo fifo/gul_S2_summarysummarycalc_P1
mkfifo fifo/gul_S2_summarycalc_P1
mkfifo fifo/gul_S2_summarypltcalc_P1
mkfifo fifo/gul_S2_pltcalc_P1
mkfifo fifo/gul_S2_summaryaalcalc_P1

mkfifo fifo/gul_P2

mkfifo fifo/gul_S1_summary_P2
mkfifo fifo/gul_S1_summaryeltcalc_P2
mkfifo fifo/gul_S1_eltcalc_P2
mkfifo fifo/gul_S1_summarysummarycalc_P2
mkfifo fifo/gul_S1_summarycalc_P2
mkfifo fifo/gul_S1_summarypltcalc_P2
mkfifo fifo/gul_S1_pltcalc_P2
mkfifo fifo/gul_S1_summaryaalcalc_P2
mkfifo fifo/gul_S2_summary_P2
mkfifo fifo/gul_S2_summaryeltcalc_P2
mkfifo fifo/gul_S2_eltcalc_P2
mkfifo fifo/gul_S2_summarysummarycalc_P2
mkfifo fifo/gul_S2_summarycalc_P2
mkfifo fifo/gul_S2_summarypltcalc_P2
mkfifo fifo/gul_S2_pltcalc_P2
mkfifo fifo/gul_S2_summaryaalcalc_P2

mkdir work/gul_S1_summaryleccalc
mkdir work/gul_S1_aalcalc
mkdir work/gul_S2_summaryleccalc
mkdir work/gul_S2_aalcalc

mkfifo fifo/il_P1

mkfifo fifo/il_S1_summary_P1
mkfifo fifo/il_S1_summaryeltcalc_P1
mkfifo fifo/il_S1_eltcalc_P1
mkfifo fifo/il_S1_summarysummarycalc_P1
mkfifo fifo/il_S1_summarycalc_P1
mkfifo fifo/il_S1_summarypltcalc_P1
mkfifo fifo/il_S1_pltcalc_P1
mkfifo fifo/il_S1_summaryaalcalc_P1
mkfifo fifo/il_S2_summary_P1
mkfifo fifo/il_S2_summaryeltcalc_P1
mkfifo fifo/il_S2_eltcalc_P1
mkfifo fifo/il_S2_summarysummarycalc_P1
mkfifo fifo/il_S2_summarycalc_P1
mkfifo fifo/il_S2_summarypltcalc_P1
mkfifo fifo/il_S2_pltcalc_P1
mkfifo fifo/il_S2_summaryaalcalc_P1

mkfifo fifo/il_P2

mkfifo fifo/il_S1_summary_P2
mkfifo fifo/il_S1_summaryeltcalc_P2
mkfifo fifo/il_S1_eltcalc_P2
mkfifo fifo/il_S1_summarysummarycalc_P2
mkfifo fifo/il_S1_summarycalc_P2
mkfifo fifo/il_S1_summarypltcalc_P2
mkfifo fifo/il_S1_pltcalc_P2
mkfifo fifo/il_S1_summaryaalcalc_P2
mkfifo fifo/il_S2_summary_P2
mkfifo fifo/il_S2_summaryeltcalc_P2
mkfifo fifo/il_S2_eltcalc_P2
mkfifo fifo/il_S2_summarysummarycalc_P2
mkfifo fifo/il_S2_summarycalc_P2
mkfifo fifo/il_S2_summarypltcalc_P2
mkfifo fifo/il_S2_pltcalc_P2
mkfifo fifo/il_S2_summaryaalcalc_P2

mkdir work/il_S1_summaryleccalc
mkdir work/il_S1_aalcalc
mkdir work/il_S2_summaryleccalc
mkdir work/il_S2_aalcalc

# --- Do insured loss kats ---

kat fifo/il_S1_eltcalc_P1 fifo/il_S1_eltcalc_P2 > output/il_S1_eltcalc.csv & pid1=$!
kat fifo/il_S1_pltcalc_P1 fifo/il_S1_pltcalc_P2 > output/il_S1_pltcalc.csv & pid2=$!
kat fifo/il_S1_summarycalc_P1 fifo/il_S1_summarycalc_P2 > output/il_S1_summarycalc.csv & pid3=$!
kat fifo/il_S2_eltcalc_P1 fifo/il_S2_eltcalc_P2 > output/il_S2_eltcalc.csv & pid4=$!
kat fifo/il_S2_pltcalc_P1 fifo/il_S2_pltcalc_P2 > output/il_S2_pltcalc.csv & pid5=$!
kat fifo/il_S2_summarycalc_P1 fifo/il_S2_summarycalc_P2 > output/il_S2_summarycalc.csv & pid6=$!

# --- Do ground up loss kats ---

kat fifo/gul_S1_eltcalc_P1 fifo/gul_S1_eltcalc_P2 > output/gul_S1_eltcalc.csv & pid7=$!
kat fifo/gul_S1_pltcalc_P1 fifo/gul_S1_pltcalc_P2 > output/gul_S1_pltcalc.csv & pid8=$!
kat fifo/gul_S1_summarycalc_P1 fifo/gul_S1_summarycalc_P2 > output/gul_S1_summarycalc.csv & pid9=$!
kat fifo/gul_S2_eltcalc_P1 fifo/gul_S2_eltcalc_P2 > output/gul_S2_eltcalc.csv & pid10=$!
kat fifo/gul_S2_pltcalc_P1 fifo/gul_S2_pltcalc_P2 > output/gul_S2_pltcalc.csv & pid11=$!
kat fifo/gul_S2_summarycalc_P1 fifo/gul_S2_summarycalc_P2 > output/gul_S2_summarycalc.csv & pid12=$!

# --- Do insured loss computes ---

eltcalc < fifo/il_S1_summaryeltcalc_P1 > fifo/il_S1_eltcalc_P1 &
summarycalctocsv < fifo/il_S1_summarysummarycalc_P1 > fifo/il_S1_summarycalc_P1 &
pltcalc < fifo/il_S1_summarypltcalc_P1 > fifo/il_S1_pltcalc_P1 &
aalcalc < fifo/il_S1_summaryaalcalc_P1 > work/il_S1_aalcalc/P1.bin & pid13=$!

eltcalc < fifo/il_S2_summaryeltcalc_P1 > fifo/il_S2_eltcalc_P1 &
summarycalctocsv < fifo/il_S2_summarysummarycalc_P1 > fifo/il_S2_summarycalc_P1 &
pltcalc < fifo/il_S2_summarypltcalc_P1 > fifo/il_S2_pltcalc_P1 &
aalcalc < fifo/il_S2_summaryaalcalc_P1 > work/il_S2_aalcalc/P1.bin & pid14=$!

eltcalc < fifo/il_S1_summaryeltcalc_P2 > fifo/il_S1_eltcalc_P2 &
summarycalctocsv < fifo/il_S1_summarysummarycalc_P2 > fifo/il_S1_summarycalc_P2 &
pltcalc < fifo/il_S1_summarypltcalc_P2 > fifo/il_S1_pltcalc_P2 &
aalcalc < fifo/il_S1_summaryaalcalc_P2 > work/il_S1_aalcalc/P2.bin & pid15=$!

eltcalc < fifo/il_S2_summaryeltcalc_P2 > fifo/il_S2_eltcalc_P2 &
summarycalctocsv < fifo/il_S2_summarysummarycalc_P2 > fifo/il_S2_summarycalc_P2 &
pltcalc < fifo/il_S2_summarypltcalc_P2 > fifo/il_S2_pltcalc_P2 &
aalcalc < fifo/il_S2_summaryaalcalc_P2 > work/il_S2_aalcalc/P2.bin & pid16=$!

tee < fifo/il_S1_summary_P1 fifo/il_S1_summaryeltcalc_P1 fifo/il_S1_summarypltcalc_P1 fifo/il_S1_summarysummarycalc_P1 fifo/il_S1_summaryaalcalc_P1 work/il_S1_summaryleccalc/P1.bin  > /dev/null & pid17=$!
tee < fifo/il_S2_summary_P1 fifo/il_S2_summaryeltcalc_P1 fifo/il_S2_summarypltcalc_P1 fifo/il_S2_summarysummarycalc_P1 fifo/il_S2_summaryaalcalc_P1 work/il_S2_summaryleccalc/P1.bin  > /dev/null & pid18=$!
tee < fifo/il_S1_summary_P2 fifo/il_S1_summaryeltcalc_P2 fifo/il_S1_summarypltcalc_P2 fifo/il_S1_summarysummarycalc_P2 fifo/il_S1_summaryaalcalc_P2 work/il_S1_summaryleccalc/P2.bin  > /dev/null & pid19=$!
tee < fifo/il_S2_summary_P2 fifo/il_S2_summaryeltcalc_P2 fifo/il_S2_summarypltcalc_P2 fifo/il_S2_summarysummarycalc_P2 fifo/il_S2_summaryaalcalc_P2 work/il_S2_summaryleccalc/P2.bin  > /dev/null & pid20=$!
summarycalc -f -1 fifo/il_S1_summary_P1 -2 fifo/il_S2_summary_P1  < fifo/il_P1 &
summarycalc -f -1 fifo/il_S1_summary_P2 -2 fifo/il_S2_summary_P2  < fifo/il_P2 &

# --- Do ground up loss  computes ---

eltcalc < fifo/gul_S1_summaryeltcalc_P1 > fifo/gul_S1_eltcalc_P1 &
summarycalctocsv < fifo/gul_S1_summarysummarycalc_P1 > fifo/gul_S1_summarycalc_P1 &
pltcalc < fifo/gul_S1_summarypltcalc_P1 > fifo/gul_S1_pltcalc_P1 &
aalcalc < fifo/gul_S1_summaryaalcalc_P1 > work/gul_S1_aalcalc/P1.bin & pid21=$!

eltcalc < fifo/gul_S2_summaryeltcalc_P1 > fifo/gul_S2_eltcalc_P1 &
summarycalctocsv < fifo/gul_S2_summarysummarycalc_P1 > fifo/gul_S2_summarycalc_P1 &
pltcalc < fifo/gul_S2_summarypltcalc_P1 > fifo/gul_S2_pltcalc_P1 &
aalcalc < fifo/gul_S2_summaryaalcalc_P1 > work/gul_S2_aalcalc/P1.bin & pid22=$!

eltcalc < fifo/gul_S1_summaryeltcalc_P2 > fifo/gul_S1_eltcalc_P2 &
summarycalctocsv < fifo/gul_S1_summarysummarycalc_P2 > fifo/gul_S1_summarycalc_P2 &
pltcalc < fifo/gul_S1_summarypltcalc_P2 > fifo/gul_S1_pltcalc_P2 &
aalcalc < fifo/gul_S1_summaryaalcalc_P2 > work/gul_S1_aalcalc/P2.bin & pid23=$!

eltcalc < fifo/gul_S2_summaryeltcalc_P2 > fifo/gul_S2_eltcalc_P2 &
summarycalctocsv < fifo/gul_S2_summarysummarycalc_P2 > fifo/gul_S2_summarycalc_P2 &
pltcalc < fifo/gul_S2_summarypltcalc_P2 > fifo/gul_S2_pltcalc_P2 &
aalcalc < fifo/gul_S2_summaryaalcalc_P2 > work/gul_S2_aalcalc/P2.bin & pid24=$!

tee < fifo/gul_S1_summary_P1 fifo/gul_S1_summaryeltcalc_P1 fifo/gul_S1_summarypltcalc_P1 fifo/gul_S1_summarysummarycalc_P1 fifo/gul_S1_summaryaalcalc_P1 work/gul_S1_summaryleccalc/P1.bin  > /dev/null & pid25=$!
tee < fifo/gul_S2_summary_P1 fifo/gul_S2_summaryeltcalc_P1 fifo/gul_S2_summarypltcalc_P1 fifo/gul_S2_summarysummarycalc_P1 fifo/gul_S2_summaryaalcalc_P1 work/gul_S2_summaryleccalc/P1.bin  > /dev/null & pid26=$!
tee < fifo/gul_S1_summary_P2 fifo/gul_S1_summaryeltcalc_P2 fifo/gul_S1_summarypltcalc_P2 fifo/gul_S1_summarysummarycalc_P2 fifo/gul_S1_summaryaalcalc_P2 work/gul_S1_summaryleccalc/P2.bin  > /dev/null & pid27=$!
tee < fifo/gul_S2_summary_P2 fifo/gul_S2_summaryeltcalc_P2 fifo/gul_S2_summarypltcalc_P2 fifo/gul_S2_summarysummarycalc_P2 fifo/gul_S2_summaryaalcalc_P2 work/gul_S2_summaryleccalc/P2.bin  > /dev/null & pid28=$!
summarycalc -g -1 fifo/gul_S1_summary_P1 -2 fifo/gul_S2_summary_P1  < fifo/gul_P1 &
summarycalc -g -1 fifo/gul_S1_summary_P2 -2 fifo/gul_S2_summary_P2  < fifo/gul_P2 &

eve 1 2 | getmodel | gulcalc -S0 -L0 -r -c fifo/gul_P1 -i - | fmcalc > fifo/il_P1  &
eve 2 2 | getmodel | gulcalc -S0 -L0 -r -c fifo/gul_P2 -i - | fmcalc > fifo/il_P2  &

wait $pid1 $pid2 $pid3 $pid4 $pid5 $pid6 $pid7 $pid8 $pid9 $pid10 $pid11 $pid12 $pid13 $pid14 $pid15 $pid16 $pid17 $pid18 $pid19 $pid20 $pid21 $pid22 $pid23 $pid24 $pid25 $pid26 $pid27 $pid28 


aalsummary -Kil_S1_aalcalc > output/il_S1_aalcalc.csv & apid1=$!
leccalc -r -Kil_S1_summaryleccalc -s output/il_S1_leccalc_sample_mean_oep.csv -S output/il_S1_leccalc_sample_mean_aep.csv -f output/il_S1_leccalc_full_uncertainty_oep.csv -W output/il_S1_leccalc_wheatsheaf_aep.csv -M output/il_S1_leccalc_wheatsheaf_mean_aep.csv -F output/il_S1_leccalc_full_uncertainty_aep.csv -m output/il_S1_leccalc_wheatsheaf_mean_oep.csv -w output/il_S1_leccalc_wheatsheaf_oep.csv  &  lpid1=$!
aalsummary -Kil_S2_aalcalc > output/il_S2_aalcalc.csv & apid2=$!
leccalc -r -Kil_S2_summaryleccalc -s output/il_S2_leccalc_sample_mean_oep.csv -S output/il_S2_leccalc_sample_mean_aep.csv -f output/il_S2_leccalc_full_uncertainty_oep.csv -W output/il_S2_leccalc_wheatsheaf_aep.csv -M output/il_S2_leccalc_wheatsheaf_mean_aep.csv -F output/il_S2_leccalc_full_uncertainty_aep.csv -m output/il_S2_leccalc_wheatsheaf_mean_oep.csv -w output/il_S2_leccalc_wheatsheaf_oep.csv  &  lpid2=$!
aalsummary -Kgul_S1_aalcalc > output/gul_S1_aalcalc.csv & apid3=$!
leccalc -r -Kgul_S1_summaryleccalc -s output/gul_S1_leccalc_sample_mean_oep.csv -S output/gul_S1_leccalc_sample_mean_aep.csv -f output/gul_S1_leccalc_full_uncertainty_oep.csv -W output/gul_S1_leccalc_wheatsheaf_aep.csv -M output/gul_S1_leccalc_wheatsheaf_mean_aep.csv -F output/gul_S1_leccalc_full_uncertainty_aep.csv -m output/gul_S1_leccalc_wheatsheaf_mean_oep.csv -w output/gul_S1_leccalc_wheatsheaf_oep.csv  &  lpid3=$!
aalsummary -Kgul_S2_aalcalc > output/gul_S2_aalcalc.csv & apid4=$!
leccalc -r -Kgul_S2_summaryleccalc -s output/gul_S2_leccalc_sample_mean_oep.csv -S output/gul_S2_leccalc_sample_mean_aep.csv -f output/gul_S2_leccalc_full_uncertainty_oep.csv -W output/gul_S2_leccalc_wheatsheaf_aep.csv -M output/gul_S2_leccalc_wheatsheaf_mean_aep.csv -F output/gul_S2_leccalc_full_uncertainty_aep.csv -m output/gul_S2_leccalc_wheatsheaf_mean_oep.csv -w output/gul_S2_leccalc_wheatsheaf_oep.csv  &  lpid4=$!
wait $apid1 $apid2 $apid3 $apid4 

wait $lpid1 $lpid2 $lpid3 $lpid4 

rm fifo/gul_P1

rm fifo/gul_S1_summary_P1
rm fifo/gul_S1_summaryeltcalc_P1
rm fifo/gul_S1_eltcalc_P1
rm fifo/gul_S1_summarysummarycalc_P1
rm fifo/gul_S1_summarycalc_P1
rm fifo/gul_S1_summarypltcalc_P1
rm fifo/gul_S1_pltcalc_P1
rm fifo/gul_S1_summaryaalcalc_P1
rm fifo/gul_S2_summary_P1
rm fifo/gul_S2_summaryeltcalc_P1
rm fifo/gul_S2_eltcalc_P1
rm fifo/gul_S2_summarysummarycalc_P1
rm fifo/gul_S2_summarycalc_P1
rm fifo/gul_S2_summarypltcalc_P1
rm fifo/gul_S2_pltcalc_P1
rm fifo/gul_S2_summaryaalcalc_P1

rm fifo/gul_P2

rm fifo/gul_S1_summary_P2
rm fifo/gul_S1_summaryeltcalc_P2
rm fifo/gul_S1_eltcalc_P2
rm fifo/gul_S1_summarysummarycalc_P2
rm fifo/gul_S1_summarycalc_P2
rm fifo/gul_S1_summarypltcalc_P2
rm fifo/gul_S1_pltcalc_P2
rm fifo/gul_S1_summaryaalcalc_P2
rm fifo/gul_S2_summary_P2
rm fifo/gul_S2_summaryeltcalc_P2
rm fifo/gul_S2_eltcalc_P2
rm fifo/gul_S2_summarysummarycalc_P2
rm fifo/gul_S2_summarycalc_P2
rm fifo/gul_S2_summarypltcalc_P2
rm fifo/gul_S2_pltcalc_P2
rm fifo/gul_S2_summaryaalcalc_P2

rm work/gul_S1_summaryleccalc/*
rmdir work/gul_S1_summaryleccalc
rm work/gul_S1_aalcalc/*
rmdir work/gul_S1_aalcalc
rm work/gul_S2_summaryleccalc/*
rmdir work/gul_S2_summaryleccalc
rm work/gul_S2_aalcalc/*
rmdir work/gul_S2_aalcalc

rm fifo/il_P1

rm fifo/il_S1_summary_P1
rm fifo/il_S1_summaryeltcalc_P1
rm fifo/il_S1_eltcalc_P1
rm fifo/il_S1_summarysummarycalc_P1
rm fifo/il_S1_summarycalc_P1
rm fifo/il_S1_summarypltcalc_P1
rm fifo/il_S1_pltcalc_P1
rm fifo/il_S1_summaryaalcalc_P1
rm fifo/il_S2_summary_P1
rm fifo/il_S2_summaryeltcalc_P1
rm fifo/il_S2_eltcalc_P1
rm fifo/il_S2_summarysummarycalc_P1
rm fifo/il_S2_summarycalc_P1
rm fifo/il_S2_summarypltcalc_P1
rm fifo/il_S2_pltcalc_P1
rm fifo/il_S2_summaryaalcalc_P1

rm fifo/il_P2

rm fifo/il_S1_summary_P2
rm fifo/il_S1_summaryeltcalc_P2
rm fifo/il_S1_eltcalc_P2
rm fifo/il_S1_summarysummarycalc_P2
rm fifo/il_S1_summarycalc_P2
rm fifo/il_S1_summarypltcalc_P2
rm fifo/il_S1_pltcalc_P2
rm fifo/il_S1_summaryaalcalc_P2
rm fifo/il_S2_summary_P2
rm fifo/il_S2_summaryeltcalc_P2
rm fifo/il_S2_eltcalc_P2
rm fifo/il_S2_summarysummarycalc_P2
rm fifo/il_S2_summarycalc_P2
rm fifo/il_S2_summarypltcalc_P2
rm fifo/il_S2_pltcalc_P2
rm fifo/il_S2_summaryaalcalc_P2

rm work/il_S1_summaryleccalc/*
rmdir work/il_S1_summaryleccalc
rm work/il_S1_aalcalc/*
rmdir work/il_S1_aalcalc
rm work/il_S2_summaryleccalc/*
rmdir work/il_S2_summaryleccalc
rm work/il_S2_aalcalc/*
rmdir work/il_S2_aalcalc