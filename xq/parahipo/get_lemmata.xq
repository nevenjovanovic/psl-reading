let $lemmata :=
for $l in collection("parahipo_ex")//*:text//text()[not(ancestor::*:note)]
return tokenize(normalize-space(data($l)), '[\s,\p{Pc},·,·,.,;,—,(,),ʽ,\[,\],̓]')
for $ll in $lemmata
let $t := data($ll)
group by $t
order by count($ll) descending , $t collation "?lang=el"
return element tr { 
element td { $t } , 
element td { count($ll) }
}