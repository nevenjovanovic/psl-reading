let $drama := element div1 {
for $s in db:open("psl-lektire","phi0134.phi006.perseus-lat1.xml")/*:TEI.2//*:div2[not(*:p[@lang='en'])]/sp
let $text := data($s/*:l)
return $text
}
return tokenize(normalize-space(data($drama)), '[.?!] *')