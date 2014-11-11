if [ -f ~/.env/sphinx/bin/activate ]; then
	. ~/.env/sphinx/bin/activate
fi

make html
make make LATEXOPTS=' -interaction=batchmode ' latexpdf
make epub
