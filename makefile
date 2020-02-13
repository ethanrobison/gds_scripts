rm=rm -rf

temp_dir=csvs

all:
	echo "Hello world"

evaluations:
	./assignment

templates: clean
	./createtemplates

.PHONY: clean

clean:
	$(rm) $(temp_dir)
