.PHONY: cv

date=$(shell date +"%Y%m%d.%H%M%S")

cv:
	cd source/ && xelatex -output-directory=../output cv.tex
	rm output/*.log output/*.aux output/*.out || true
	mv output/cv.pdf output/sawicka.cv.$(date).pdf
	cd output && cp sawicka.cv.$(date).pdf sawicka.cv.pdf

clean:
	rm source/*.pdf source/*.log 2> /dev/null || true
