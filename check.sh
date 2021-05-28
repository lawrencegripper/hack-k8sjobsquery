# Get the date time 1 day ago in an iso format so it's string sortable
DATE_1_DAY_AGO=$(date -v-1d -u +"%Y-%m-%dT%H:%M:%SZ")
# Get jobs from all k8s namespaces and run query.jq on them
# passing in 'dayAgo' date so jq can filter
kubectl get jobs -A -o json | jq -f query.jq --arg dayAgo "$DATE_1_DAY_AGO"