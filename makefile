rm=rm -rf

make_evaluations=./evalutation_make
grade_evaluations=./evalutation_grade

secret=.secret
eval_assignment=.evalid
results_assignment=.resultsid
cid=105465

submissions=tmp_submissions

all:
	echo "Hello world"

postassignment:
	$(make_evaluations) $(cid) $(secret) $(eval_assignment) $(results_assignment)

gradeassignment:
	$(grade_evaluations) $(cid) $(secret) $(eval_assignment) $(results_assignment)

.PHONY: clean
clean:
	$(rm) $(submissions)
