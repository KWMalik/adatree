with 	Ada.Text_IO; 
use 	Ada.Text_IO; 

package BTree is 
	
	type Node;
	type BTree is access Node; 
	type Node is record 
	  	MinFactor: Integer; -- Minimization Factor
		Key : Integer; -- Node Key Value
		Left, Right : BTree; -- Node Children (often tied together) 
		Next : BTree; -- Next node at height
	end record; 

	procedure Initialize_Tree(T : in out BTree);

end BTree;
