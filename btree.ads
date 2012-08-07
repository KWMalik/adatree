with 	Ada.Text_IO; 
use 	Ada.Text_IO; 

package BTree is 
  	
	procedure Hello; --Simple Hello World...

private
	type Node;
	type BTree is access Node; 
	type Node is record 
	  	MinFactor: Integer; -- Minimization Factor
		Key : Integer; -- Node Key Value
		Child : BTree; -- Node Child 
		Next : BTree; -- Next node at height
	end record; 

end BTree;
