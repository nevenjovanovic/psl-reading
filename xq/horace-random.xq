for $s in db:open("psl-lektire","phi0893.phi001.perseus-lat1.xml")/*:TEI.2//*:div1[@type="Book" and @n="1"]
let $random := random:integer(38) + 1
return data($s//*:div2[$random])