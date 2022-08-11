from geneblocks import DiffBlocks, load_record

seq_1 = load_record("dombrowskii_3.gbk")
seq_2 = load_record("dombrowskii_6.gbk")

diff_blocks = DiffBlocks.from_sequences(seq_1, seq_2)
ax1, ax2 = diff_blocks.merged().plot(figure_width=20)
ax1.figure.savefig("dombrowskii_rRNA_3vs6.png")
