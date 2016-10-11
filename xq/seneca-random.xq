for $s in db:open("psl-lektira","phi1017.phi015.perseus-lat2.xml")/*:TEI//*[@n="text.body.div.div1"]
let $random := random:integer(12) + 1
return data($s/*:div[$random]//*:p)