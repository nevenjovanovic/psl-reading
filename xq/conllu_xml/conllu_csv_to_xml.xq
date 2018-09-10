declare function local:conllu($f){
  let $csv := csv:parse(file:read-text($f), map { 'separator': 'tab' })
return $csv
};

let $dir := "/home/neven/Documents/documents/skola/latstil/lektira/quint10ittb/"
for $f in file:list($dir, xs:boolean(0), 'phi1002.phi001.perseus-lat2-ittb:10.*')
let $csv := local:conllu($dir || $f)
return db:add("quint10ittb", $csv, $f)