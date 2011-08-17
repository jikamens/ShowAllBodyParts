all: ShowAllBodyParts.xpi

CMD=find . \( \( -name RCS -o -name .svn \) -prune \) -o \! -name '*~' \
    \! -name '.\#*' \! -name '*,v' \! -name Makefile \! -name '*.xpi' \
    \! -name '\#*' \! -name '*.pl' -type f -print
FILES=$(shell $(CMD))

ShowAllBodyParts.xpi: $(FILES) # check-locales.pl
#	./check-locales.pl
	rm -f $@.tmp
	zip -r $@.tmp $(FILES)
	mv $@.tmp $@

clean: ; -rm -f ShowAllBodyParts.xpi
