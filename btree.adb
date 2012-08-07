with btree; use btree;
package body BTree is

	-- Prints basic information about the head of the 
	-- tree given. 
	procedure Print_Tree(T : in BTree) is 
	begin 
		Put_Line("Node: "); 
		Put_Line("    MinFactor: " & Integer'Image(T.MinFactor)); 
		Put_Line("    Key: " & Integer'Image(T.Key)); 
	end Print_Tree; 

	-- Initializes a BTree structure node 
	-- Params:
	-- 	T == Access Type to Node (BTree)
	-- 	M == Minimization Factor of btree
	-- 	K == Initial Key
	procedure Initialize_Tree(T : in out BTree; M : Integer; K : Integer) is 
	begin
		Put_Line("Initializing BTree...");
		T := new Node'(M, K, NULL, NULL, NULL);
	end Initialize_Tree; 
end BTree;
