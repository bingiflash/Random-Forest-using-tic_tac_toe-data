d_tree:
	python main.py -m 0 -t tic_tac_toe_train.data -e tic_tac_toe_test.data
r_forest:
	python main.py -m 1 -t tic_tac_toe_train.data -e tic_tac_toe_test.data -n 20
clean:
	rm *.pyc