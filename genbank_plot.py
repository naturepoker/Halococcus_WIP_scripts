from dna_features_viewer import BiopythonTranslator

graphic_record = BiopythonTranslator().translate_record("agarilyticus.gbk")
ax, _ = graphic_record.plot(figure_width=20, strand_in_label_threshold=5)
ax.figure.tight_layout()
ax.figure.savefig("agarilyticus.png")
