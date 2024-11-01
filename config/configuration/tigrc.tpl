# https://github.com/jonas/tig/blob/cc7479d87d366781b4cb47954e65a51c66c56bf8/contrib/large-repo.tigrc
# Use Git's default (reverse chronological) order, never automatically

# use topo-order for the commit graph
set commit-order = default
 
# Don't show diffstat
set log-options =

# Limit number of commits loaded by default to 1000
set main-options = -n 1000

# Don't show staged and unstaged changes in the main view
set show-changes = no

# Optionally, use the old and faster but less acurate graph renderer
#set main-view-commit-title-graph = v1

set main-view-author-display = abbreviated
