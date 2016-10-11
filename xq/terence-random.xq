let $drama := element div1 {
for $s in db:open("psl-lektira","phi0134.phi006.perseus-lat1.xml")/*:TEI.2//*:div2[not(*:p[@lang='en'])]
return $s
}
let $random := random:integer(29) + 1
for $d in $drama//*:div2[$random]
return data($d)