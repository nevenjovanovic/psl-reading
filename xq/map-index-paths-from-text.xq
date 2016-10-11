declare namespace functx = "http://www.functx.com";
declare function functx:index-of-node
  ( $nodes as node()* ,
    $nodeToFind as node() )  as xs:integer* {

  for $seq in (1 to count($nodes))
  return $seq[$nodes[$seq] is $nodeToFind]
 } ;
declare function functx:path-to-node-with-pos
  ( $node as node()? )  as xs:string {

string-join(
  for $ancestor in $node/ancestor-or-self::*[not(name()="TEI") and not(name()="TEI.2")]
  let $sibsOfSameName := $ancestor/../*[name() = name($ancestor)]
  return concat(name($ancestor),
   if (count($sibsOfSameName) <= 1)
   then ''
   else functx:index-of-node($sibsOfSameName,$ancestor))
 , '.')
 } ;
let $cr := collection("psl-lektira")
for $e in ($cr//*:TEI/*:text//*, $cr//*:TEI.2/*:text//*)
let $n := functx:path-to-node-with-pos($e)
return if ($e/@n) then replace value of node $e/@n with $n
else insert node attribute n { $n } into $e