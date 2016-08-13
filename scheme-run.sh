cheme-run () { scheme < $1 | grep ";Value:" | sed "s/;Value: /Result: /" }
# From: http://snippets.dinduks.com/mit-scheme-run-a-script
