all:
	latexmk -interaction=nonstopmode viviani_cv.tex
	pdfjam viviani_cv.pdf 1 -o viviani_cv_1.pdf
	pdfjam viviani_cv.pdf 2 -o viviani_cv_2.pdf
	# sips -s dpiWidth 300 -s dpiHeight 300 -s format png viviani_cv_1.pdf --out viviani_cv_1.png
	# sips -s dpiWidth 300 -s dpiHeight 300 -s format png viviani_cv_2.pdf --out viviani_cv_2.png
	convert -density 300 viviani_cv_1.pdf viviani_cv_1.png
	convert -density 300 viviani_cv_2.pdf viviani_cv_2.png