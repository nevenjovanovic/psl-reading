let $drama := element div1 {
for $s in db:open("psl-lektire","phi0660.phi001.perseus-lat1.xml")/*:TEI.2//*:div1[@n="1"]/*:div2
return $s
}
let $random := random:integer(10) + 1
for $d in $drama//*:div2[$random]
return data($d)