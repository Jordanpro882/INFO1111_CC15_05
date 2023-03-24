test1: test2
	echo "Creating test1"
	touch test1

test2:
	echo "Creating test2"
	touch test2


filename=INFO1111_Group_Project
bibfile=main.bib

pdf: ${filename}.pdf
	echo
	echo "PDF files now up to date"

${filename}.pdf: ${filename}.tex ${bibfile}
	pdflatex ${filename}
	bibtex ${filename}||true
	pdflatex ${filename}
	pdflatex ${filename}
	echo
	echo ${filename} "has been updated"
	
${filename}.bib:

${filename}.tex:

clean:
	rm -f ${filename}.{ps,pdf,log,aux,out,dvi,bbl,blg,toc}
