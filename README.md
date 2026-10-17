# Learning When to Correct a Gaussian Reference and When to Change Its Operator

LaTeX source of the paper. `paper.pdf` is the compiled version of `paper.tex` at the current commit.

## Build

Any TeX distribution with `newtx`, `natbib`, `booktabs`, `float`, `placeins`, `microtype` and `hyperref`
(TeX Live or MiKTeX) works:

```bash
pdflatex paper.tex
pdflatex paper.tex
pdflatex paper.tex      # third pass settles cross-references
```

or `latexmk -pdf paper.tex`, or `bash build.sh`. The bibliography is inline (`thebibliography`), so no BibTeX run
is needed.

## Contents

| path | |
|---|---|
| `paper.tex` | manuscript (single file) |
| `paper.pdf` | compiled manuscript |
| `figures/fig4_1_truths.pdf` | Figure 4.1, synthetic populations |
| `figures/fig5_1_oracle_refinement.pdf` | Figure 5.1, oracle refinement |
| `figures/fig5_2_sample_vs_oracle.pdf` | Figure 5.2, sample diagnostic vs oracle |
| `figures/fig5_3_misattribution.pdf` | Figure 5.3, misattribution by wrong-class models |
| `figures/fig5_4_m5_selectivity.png` | Figure 5.4, M5 selectivity |
| `build.sh` | three-pass `pdflatex` build into `build/`, copies the PDF back |

The code, data and result files that produced the numbers and figures are not part of this repository.

## Author

Raj Jung Mahat, George W. Woodruff School of Mechanical Engineering, Georgia Institute of Technology
(rajjung421@gatech.edu).

## License

The manuscript, its source and its figures are licensed under
[CC BY 4.0](https://creativecommons.org/licenses/by/4.0/); see `LICENSE`.
