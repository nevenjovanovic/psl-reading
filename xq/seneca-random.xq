for $s in db:open("psl-lektire","phi1017.phi015.perseus-lat2.xml")/*:TEI//*:body//*:div[@subtype="book" and @n="1"]
let $random := random:integer(12) + 1
return data($s/*:div[$random]//*:p)