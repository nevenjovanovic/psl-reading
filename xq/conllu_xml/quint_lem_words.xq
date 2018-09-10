let $lemmata := element l {
for $r in collection("quint10proiel")//*:record
let $lemma := $r/*:entry[3]
return $lemma
}
for $dist in distinct-values($lemmata/entry)
order by $dist
return $dist