with 	Ada.Text_IO; 
use 	Ada.Text_IO; 

package adatree is 

	package btree is 
		type ROOT is new Integer; 
		type Node;
		type Key; 
		type KeyAccess is access Key; 
		type BTree is access Node; 
		type Key is record
			Value : Integer; 
			Left, Right : BTree; 
			Previous, Next : KeyAccess; 
		end record; 
		type Node is record 
	  		MinFactor: Integer; -- Minimization Factor
			Parent : BTree; -- Parent Node
			HeadKey : KeyAccess; -- Node Children (often tied together) 
		end record; 

		procedure Print_Tree(T : in BTree); 
		procedure Count_Keys(N : in BTree);
		procedure Initialize_Tree(T : in out BTree; M : Integer; K : Integer);
		procedure Search(T : in BTree; I : Integer; N : out BTree); 
		procedure Insert(T : in out BTree; I : in Integer); 
	end btree;

end adatree;
