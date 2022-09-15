python munge_sumstats.py \
  --sumstats test-data/GIANT_BMI_Speliotes2010_publicrelease_HapMapCeuFreq.txt \
  --merge-alleles test-data/w_hm3.snplist \
  --out test-data/BMI \
  --a1-inc

python ldsc.py \
  --h2 test-data/BMI.sumstats.gz \
  --ref-ld-chr test-data/baseline/baseline. \
  --w-ld-chr test-data/weights_hm3_no_hla/weights. \
  --frqfile-chr test-data/1000G_frq/1000G.mac5eur. \
  --overlap-annot \
  --print-delete-vals \
  --out test-data/BMI_baseline
