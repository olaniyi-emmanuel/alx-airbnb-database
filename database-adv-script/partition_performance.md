# Partitioning Table in Postgresql

Postgresql does not allow to just convert a Postgresql Table to a partitioned
Table but rather we need to migrate the existing table to a new table

The steps involves

PostgreSQL doesn’t allow you to directly turn a regular table into a partitioned one.
You have to:

Rename the existing table.

Create a new parent partitioned table with the same schema.

Create partitions.

Move (insert) the data from the old table into the new one.

Drop the old table if everything checks out.
