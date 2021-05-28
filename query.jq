# Get all the items
#
.items[] 
    #
    # Remove all the stuff we don't need and make a simple object
    # showing the jobs name, annotations, whether their are active pods and when it was started 'startTime'
    | { name: .metadata.name, activePods: .status.active, startTime: .status.startTime, annotations: .annotations}
    #
    # Filter to only show jobs that started more than a day ago and are still running
    | select((.activePods > 0) and (.startTime <= $dayAgo))