with 	Ada.Text_IO; 
use 	Ada.Text_IO; 

package BTree is 

	type Node;
	type BTree is access Node; 
	type Node is record 
	  	MinFactor: Integer; -- Minimization Factor
		Key : Integer; -- Node Key Value
		Parent : BTree; -- Parent Node
		Left, Right : BTree; -- Node Children (often tied together) 
		Next : BTree; -- Next node at height
	end record; 

	procedure Print_Tree(T : in BTree); 
	procedure Initialize_Tree(T : in out BTree; M : Integer; K : Integer);
	procedure Search(T : in BTree; I : Integer; N : out BTree); 
	procedure Insert(T : in out BTree; N : in BTree); 

end BTree;
