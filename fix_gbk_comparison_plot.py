from geneblocks import DiffBlocks, CommonBlocks, load_record
import matplotlib.pyplot as plt

seq_1 = load_record("dombrowskii_3.gbk")
seq_2 = load_record("dombrowskii_6.gbk")

common_blocks = CommonBlocks.from_sequences({'seq1': seq_1, 'seq2': seq_2})
diff_blocks = DiffBlocks.from_sequences(seq_1, seq_2).merged()

fig, axes = plt.subplots(2, 2, figsize=(40, 40))
diff_blocks.plot(ax=axes[1][0], separate_axes=False)

common_blocks.plot_common_blocks(axes=axes[0])

axes[1][0].set_xlabel("H. dombrowskii rRNA operon regions on 003 vs 006")
fig.savefig("003_006_comparison_40x40.png", bbox_inches='tight')

