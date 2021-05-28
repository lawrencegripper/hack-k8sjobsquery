# Intro

This is an experiment to see how easy it is to find jobs in Kubernetes which have been running over a day and not yet completed.

`./check.sh` uses `kubectl` to get back all jobs in the cluster `jq` then runs the `query.jq` filter and lists jobs that are 
over a day old and not yet completed.

Very much a hack.