rm=rm -rf

script_post=./evaluation_make
script_grade=./evaluation_grade

secret=.secret
eval_assignment=.evalid
results_assignment=.resultsid
cid=105465

submissions=tmp_submissions

all:
	echo "Hello world"

postassignment:
	$(script_post) $(cid) $(secret) $(eval_assignment) $(results_assignment)

gradeassignment:
	$(script_grade) $(cid) $(secret) $(eval_assignment) $(results_assignment)

.PHONY: clean
clean:
	$(rm) $(submissions)
