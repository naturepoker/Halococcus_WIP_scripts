threads=20  # change as appropriate for your system
mkdir assemblies

flye --nano-raw read_subsets/sample_01.fastq --threads "$threads" --out-dir assembly_01 && cp assembly_01/assembly.fasta assemblies/assembly_01.fasta && rm -r assembly_01
miniasm_and_minipolish.sh read_subsets/sample_02.fastq "$threads" > assembly_02.gfa && any2fasta assembly_02.gfa > assemblies/assembly_02.fasta && rm assembly_02.gfa
raven --threads "$threads" read_subsets/sample_03.fastq > assemblies/assembly_03.fasta && rm raven.cereal
shasta --threads "$threads" --config Nanopore-Oct2021 --input read_subsets/sample_04.fastq --assemblyDirectory assembly_04 && cp assembly_04/Assembly.fasta assemblies/assembly_04.fasta && rm -rf assembly_04

flye --nano-raw read_subsets/sample_05.fastq --threads "$threads" --out-dir assembly_05 && cp assembly_05/assembly.fasta assemblies/assembly_05.fasta && rm -r assembly_05
miniasm_and_minipolish.sh read_subsets/sample_06.fastq "$threads" > assembly_06.gfa && any2fasta assembly_06.gfa > assemblies/assembly_06.fasta && rm assembly_06.gfa
raven --threads "$threads" read_subsets/sample_07.fastq > assemblies/assembly_07.fasta && rm raven.cereal
shasta --threads "$threads" --config Nanopore-Oct2021 --input read_subsets/sample_08.fastq --assemblyDirectory assembly_08 && cp assembly_08/Assembly.fasta assemblies/assembly_08.fasta && rm -rf assembly_08

flye --nano-raw read_subsets/sample_09.fastq --threads "$threads" --out-dir assembly_09 && cp assembly_09/assembly.fasta assemblies/assembly_09.fasta && rm -r assembly_09
miniasm_and_minipolish.sh read_subsets/sample_10.fastq "$threads" > assembly_10.gfa && any2fasta assembly_10.gfa > assemblies/assembly_10.fasta && rm assembly_10.gfa
raven --threads "$threads" read_subsets/sample_11.fastq > assemblies/assembly_11.fasta && rm raven.cereal
shasta --threads "$threads" --config Nanopore-Oct2021 --input read_subsets/sample_12.fastq --assemblyDirectory assembly_12 && cp assembly_12/Assembly.fasta assemblies/assembly_12.fasta && rm -rf assembly_12

flye --nano-raw read_subsets/sample_13.fastq --threads "$threads" --out-dir assembly_13 && cp assembly_13/assembly.fasta assemblies/assembly_13.fasta && rm -r assembly_13
miniasm_and_minipolish.sh read_subsets/sample_14.fastq "$threads" > assembly_14.gfa && any2fasta assembly_14.gfa > assemblies/assembly_14.fasta && rm assembly_14.gfa
raven --threads "$threads" read_subsets/sample_15.fastq > assemblies/assembly_15.fasta && rm raven.cereal
shasta --threads "$threads" --config Nanopore-Oct2021 --input read_subsets/sample_16.fastq --assemblyDirectory assembly_16 && cp assembly_16/Assembly.fasta assemblies/assembly_16.fasta && rm -rf assembly_16
