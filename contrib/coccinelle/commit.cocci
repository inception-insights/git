@@
expression c;
@@
- &c->maybe_tree->object.oid
+ get_commit_tree_oid(c)

@@
expression c;
@@
- c->maybe_tree->object.oid.hash
+ get_commit_tree_oid(c)->hash

// These excluded functions must access c->maybe_tree direcly.
@@
identifier f !~ "^(repo_get_commit_tree|get_commit_tree_in_graph_one|load_tree_for_commit)$";
expression c;
@@
  f(...) {<...
- c->maybe_tree
+ repo_get_commit_tree(the_repository, c)
  ...>}

@@
expression c;
expression s;
@@
- repo_get_commit_tree(the_repository, c) = s
+ c->maybe_tree = s
