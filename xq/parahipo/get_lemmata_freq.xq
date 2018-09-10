let $l := collection("parahipo_lem")//*:s/*:t/*:l/*:l1
for $lem in $l
let $t := data($lem)
group by $t
order by count($lem) descending , $t collation "?lang=el"
return element tr {
  element td { $t } , 
  element td { count($lem) }
}
