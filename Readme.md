# TIC TAC TOE

Makefile is provided for easier execution  
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Decision Tree: make d_tree  
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Random Forest: make r_forest  

Decision Tree model training and testing commands:  
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;python main.py -m 0 -t tic_tac_toe_train.data -e tic_tac_toe_test.data  
Random Forest model training and testing commands:  
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;python main.py -m 1 -t tic_tac_toe_train.data -e tic_tac_toe_test.data -n 20  
	
Implementaion:

	Decision Tree:
	I first classified the data into left subset and right subset based on column index and 
	did the same for all column. each time calculating the gain(referred as current gain) and 
	comparing that with all other gains to select the best gain possible and the best attribute 
	to select as a split point and best value to base the split. then checking the stop condition 
	on both subsets to either assign the label or to recursively call the tree growth function 
	on it's child.

	Random Forest:
	First, extracted the tree nums variable from command line arguments and then created that 
	many decision trees and provided them the same data(records) but in different order and 
	trained all trees. while predicting the label of a test sample, the sample is passed through 
	all trained decision trees and in the end will take the outcome label that came in the case 
	of most decision trees.
