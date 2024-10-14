let $drama := element div {
for $s in db:open("latstil-lektire","phi1002.phi001.perseus-lat2.xml")/*:TEI//*:div[@subtype="book" and @n="10"]//*:p
return $s
}
let $random := random:integer(259) + 1
let $p := ($drama//*:p[$random - 3] , $drama//*:p[$random - 2] , $drama//*:p[$random - 1] , $drama//*:p[$random], $drama//*:p[$random + 1], $drama//*:p[$random + 2])
return normalize-space(string-join($p//text()[not(ancestor::*:note)]))