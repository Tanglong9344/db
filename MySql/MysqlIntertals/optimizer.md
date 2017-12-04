# MySQL optimizer's Several important tasks:
1. Determine which keys can be used to retrieve the records from tables, and choose the best one for each table.
1. For each table, decide whether a table scan is better than reading on a key. If there are a lot of records that match the key value, the advantages of the key are reduced and the table scan becomes faster.
1. Determine the order in which tables should be joined when more than one table is present in the query.
1. Rewrite the WHERE clause to eliminate dead code, reducing the unnecessary computations and changing the constraints whenever possible to open the way for using keys.
1. Eliminate unused tables from the join.
1. Determine whether keys can be used for ORDER BY and GROUP BY.
1. Attempt to replace an outer join with an inner join.
1. Attempt to simplify subqueries, as well as determine to what extent their results can be cached.
1. Merge views (expand the view reference as a macro).