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
		if M < 2 then 
			Put_Line("Minimalization Factor Must Be >= 2"); 
		else 
			T := new Node'(M, K, NULL, NULL, NULL);
		end if;
	end Initialize_Tree; 

	-- Search for Node/BTree given key value
	procedure Search(T : in BTree; I : Integer; N : out BTree) is 
	begin 
		N := T;
		iterate: -- 'Horizontal' linear search through tier
			while N.Key > T.Key and N.Right /= NULL loop
				Put_Line("Iterating Through Nodes...");
				N := N.Right;
			end loop iterate; 

			-- We have either reached the end of the nodes, 
			-- or we have come to a value higher than what 
			-- we are looking for. 
			if N.Right /= NULL then  -- We need to descend
				Search(N, I, N); 
				Put_Line("Found Node"); 
			end if; --N will be Node who's Right is NULL
	end Search; 

	-- Insert a node into the BTree
	procedure Insert(T : in out BTree; I : in Integer) is 
		S : BTree; -- Search Result Node
		N : BTree; -- Node to be inserted
	begin 
		Search(T, I, S); 
		Put_Line("Inserting node via node w/key " & Integer'Image(S.Key));
		-- TODO: if the number of nodes in this tier is 2t-1 
		-- we need to split the tree... this needs to be 
		-- implemented, it's kinda a central idea of a BTree
		N := Node(S.MinFactor, I, S.Parent, S, NULL);
	end Insert;	

end BTree;
