A sample network visualization using D3. Based on http://bl.ocks.org/mbostock/950642

To use, first install [nodejs](http://nodejs.org/), and then http-server:

    npm install -g http-server

Then git clone this repo and run http-server in the directory. Visiting http://localhost:8080 will show you the visualization.

To modify the list of topics, edit topics.json.ls (it is in [LSON](https://github.com/gkovacs/lson) format)

The script that generates the links and edges is in generate_graph.ls

It currently depends on the following modules:

    npm install jsonfile lson

If you haven't yet installed LiveScript, do:

    npm install -g LiveScript

Then run the script:

    lsc generate_graph.ls

It will output the graph to graph.json
