NAME=presentation

$(NAME).pdf: $(NAME).tex $(NAME).bib
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" $(NAME).tex

.PHONY: clean
.PHONY: git-clean

git-clean:
	git clean -dfX

clean:
	-rm *.zip
	-rm -rf *.aux *.lof *.log *.lot *.fls *.out *.toc *.fmt *.fot *.cb *.cb2 .*.lb *.dvi *.xdv *-converted-to.* *.ps *.eps *.pdf .pdf *.bbl *.bcf *.blg *-blx.aux *-blx.bib *.run.xml *.fdb_latexmk *.synctex *.synctex\(busy\) *.synctex.gz *.synctex.gz\(busy\) *.pdfsync latex.out/ *.alg *.loa acs-*.bib *.thm *.nav *.pre *.snm *.vrb *.soc *.cut *.cpt *.spl *.ent *.lox *.mf *.mp *.tfm *.end *.acn *.acr *.glg *.glo *.gls *.glsdefs *-gnuplottex-* *.gaux *.gtex *.4ct *.4tc *.idv *.lg *.trc *.xref *.brf *-concordance.tex *.lol *.ltjruby *.idx *.ilg *.ind *.maf *.mlf *.mlt _minted* *.pyg *.mw *.nlg *.nlo *.nls *.pax *.pdfpc *.sagetex.sage *.sagetex.py *.sagetex.scmd *.wrt *.sout *.sympy sympy-plots-for-*.tex/ *.upa *.upb *.pytxcode pythontex-files-*/ *.listing *.loe *.dpth *.md5 *.auxlock *.tdo *.hst *.ver *.lod *.xcp *.xmpi *.xdy *.xyc *.ttt *.fff TSWLatexianTemp* *.bak *.sav .texpadtmp *.lyx~ *.backup ./auto/* *.el *-tags.tex *.sta 
