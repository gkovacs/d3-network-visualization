require! {
  lson
  jsonfile
  fs
}

topics = lson.parse fs.readFileSync 'topics.json.ls', 'utf-8'

nodes = []
links = []

name_to_idx = {}
for topic,idx in topics
  {name} = topic
  name_to_idx[name] = idx

for topic,idx in topics
  {name, children} = topic
  nodes.push {
    name
    node: idx
    group: 1
  }
  if children?
    for child in children
      source = idx
      target = name_to_idx[child]
      if not target?
        console.log "target does not exist: #{child}"
        continue
      links.push {
        source
        target
        value: 1
      }

jsonfile.writeFileSync 'graph.json', {nodes, links}
