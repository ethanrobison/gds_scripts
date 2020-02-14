rm=rm -rf

temp_dir=csvs

make_evaluation=./assignment
grade_evaluations=./grade

secret=.secret
last_assignment=.lastassignment

all:
	echo "Hello world"

postassignment:
	$(make_evaluation) $(secret) $(last_assignment)

gradeassignment:
	$(grade_evaluations) $(secret) $(last_assignment)

templates: clean
	./createtemplates

.PHONY: clean
clean:
	$(rm) $(temp_dir)
