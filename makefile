rm=rm -rf

make_evaluation=./assignment
grade_evaluations=./grade

secret=.secret
eval_assignment=.evalid
results_assignment=.resultsid
cid=105465

submissions=tmp_submissions

all:
	echo "Hello world"

postassignment:
	$(make_evaluation) $(cid) $(secret) $(eval_assignment) $(results_assignment)

gradeassignment:
	$(grade_evaluations) $(cid) $(secret) $(eval_assignment) $(results_assignment)

.PHONY: clean
clean:
	$(rm) $(submissions)
