with Ada.Text_IO; use Ada.Text_IO;
with adatree; use adatree.btree;

procedure scaffold is
	T : BTree;
	S : BTree; 
begin
	Put_Line("Adatree Scaffold: ");
	Initialize_Tree(T, 2, 1);
	Print_Tree(T);
	Search(T, 2, S); 
end scaffold;

