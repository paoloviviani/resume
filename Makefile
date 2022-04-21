all:
	latexmk -interaction=nonstopmode viviani_cv.tex
	pdfjam viviani_cv.pdf 1 -o viviani_cv_1.pdf
	pdfjam viviani_cv.pdf 2 -o viviani_cv_2.pdf
	sips -s format png viviani_cv_1.pdf --out viviani_cv_1.png
	sips -s format png viviani_cv_2.pdf --out viviani_cv_2.png