rm=rm -rf

make_evaluation=./assignment
grade_evaluations=./grade

secret=$(shell cat .secret)
last_assignment=$(shell cat .lastassignment)
cid := $(shell cat .cid)

all:
	echo "Hello world"

postassignment:
	$(make_evaluation) $(secret) $(cid) $(last_assignment)

gradeassignment:
	$(grade_evaluations) $(secret) $(cid) $(last_assignment)

.PHONY: clean
clean:
	echo ""
