rm=rm -rf

temp_dir=csvs

make_evaluation=./assignment

last_assignment=.lastassignment

all:
	echo "Hello world"

postassignment:
	$(make_evaluation) $(last_assignment)

templates: clean
	./createtemplates

.PHONY: clean

clean:
	$(rm) $(temp_dir)
