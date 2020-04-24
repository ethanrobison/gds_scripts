rm=rm -rf

script_post=./evaluation_make
script_grade=./evaluation_grade
script_groups=./create_groups

secret=.secret
eval_assignment=.evalid
results_assignment=.resultsid
cid=$(shell cat ./.cid)

submissions=tmp_submissions

all:
	echo "Hello, $(cid)"

postassignment:
	$(script_post) $(cid) $(secret) $(eval_assignment) $(results_assignment)

gradeassignment:
	$(script_grade) $(cid) $(secret) $(eval_assignment) $(results_assignment)

initializeroster:
	$(script_groups)

.PHONY: clean
clean:
	$(rm) $(submissions)
