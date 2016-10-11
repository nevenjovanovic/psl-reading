for $s in db:open("psl-lektira","phi0893.phi001.perseus-lat1.xml")/*:TEI.2//*[@n="text.body.div11"]
let $random := random:integer(38) + 1
return data($s//*:div2[$random])