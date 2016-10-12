let $drama := element div {
for $s in db:open("latstil-lektire","phi0474.phi024.perseus-lat2.xml")/*:TEI//*:div[@subtype="section"]//*:p
let $text := $s//text()[not(ancestor::*:note)]
return element p { $text }
}
let $random := random:integer(97) + 1
let $p := ($drama//*:p[$random - 1] , $drama//*:p[$random])
return normalize-space(string-join($p))