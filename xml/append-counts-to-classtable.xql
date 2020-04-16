xquery version "3.1";
<xml>
    <freightcars>
        {
        let $carloadtable := doc('carloadtable.xml')
        let $companytable := doc('companytable.xml')
        let $classtable := doc('carclasstable.xml')
        let $freightcars := $classtable//class
        for $class in $freightcars
        return
        <class classid="{$class/@classid}">
            <road>{$class/road/text()}</road>
            <cartype>{$class/cartype/text()}</cartype>
            <classname>{$class/classname/text()}</classname>
            <pagename>{$class/pagename/text()}</pagename>
            <desc>{$class/desc/text()}</desc>
            <shipcount>
            {
            let $carload := $carloadtable//carload
            let $shipcount := count($carload[@classid = $class/@classid])
            return $shipcount
            }
            </shipcount>
            <imgrefs>
            {
            let $imgrefs := $class/imgrefs/imgref
            for $imgref in $imgrefs
            return
                <imgref alt="{$imgref/@alt}">{$imgref/text()}</imgref>
            }
            </imgrefs>
            <reflist>
            {
            let $refs := $class/reflist/ref
            for $ref in $refs
            return
                <ref>{$ref/text()}</ref>
            }
            </reflist>
        </class>
        }
    </freightcars>
</xml>