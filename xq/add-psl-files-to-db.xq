declare namespace functx = "http://www.functx.com";
declare function functx:escape-for-regex
  ( $arg as xs:string? )  as xs:string {

   replace($arg,
           '(\.|\[|\]|\\|\||\-|\^|\$|\?|\*|\+|\{|\}|\(|\))','\\$1')
 } ;
declare function functx:substring-after-last
  ( $arg as xs:string? ,
    $delim as xs:string )  as xs:string {

   replace ($arg,concat('^.*',functx:escape-for-regex($delim)),'')
 } ;
let $lektira := ("urn:cts:latinLit:phi1017.phi015", "urn:cts:latinLit:phi0893.phi001", "urn:cts:latinLit:phi0134.phi006", "urn:cts:latinLit:phi0660.phi001")
for $l in $lektira
let $dir1 := functx:substring-after-last($l, ':')
let $dir2 := "/home/neven/rad/ogl/nevencanonicallat/canonical-latinLit/data/" || replace($dir1, '\.', '/') || "/"
let $pattern := "*-lat*.xml"
let $fileadr := $dir2 || file:list($dir2, xs:boolean(0), $pattern)
return db:add("psl-lektire", $fileadr)