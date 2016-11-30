.PHONY: cv

date=$(shell date +"%Y%m%d.%H%M%S")

cv:
	cd source/ && xelatex -output-directory=../output cv.tex
	rm output/*.log output/*.aux output/*.out || true
	mv output/cv.pdf output/sawicka.$(date).pdf
	cd output && ln -s sawicka.$(date).pdf sawicka.cv.pdf

clean:
	rm source/*.pdf source/*.log output/* 2> /dev/null || true
