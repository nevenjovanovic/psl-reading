let $lemmata :=
for $l in collection("parahipo_lem")//*:s/*:t/*:l/*:l1
order by $l collation "?lang=el"
return $l
return distinct-values($lemmata)