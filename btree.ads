with 	Ada.Text_IO; 
use 	Ada.Text_IO; 

package btree is 
	type Node;
	type BTree is access Node; 
	type Node is record 
		Key : Integer; 
		Child : BTree; 
	end record; 
	procedure Hello; --Simple Hello World...
end btree;
