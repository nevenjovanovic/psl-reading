let $drama := element div {
for $s in db:open("latstil-lektire","phi0474.phi024.perseus-lat2.xml")/*:TEI//*:div[@subtype="section"]//*:p
return $s
}
let $random := random:integer(259) + 1
let $p := ($drama//*:p[$random - 2] , $drama//*:p[$random - 1] , $drama//*:p[$random])
return normalize-space(string-join($p))