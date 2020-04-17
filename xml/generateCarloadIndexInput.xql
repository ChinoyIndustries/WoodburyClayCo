xquery version "3.1";
<xml>
    <bills>
        {
        let $carloadtable := doc('carloadtable.xml')
        let $companytable := doc('companytable.xml')
        let $classtable := doc('carclasstable.xml')
        let $bills := $carloadtable//bill
        for $bill in $bills
        return
        <bill billid="{$bill/@billid}" kind="{$bill/@kind}">
            {
            let $carloads := $bill//carloads/carload
            for $carload in $carloads
            let $class := $classtable//class[@classid = $carload/@classid]
            let $shipper := $companytable//plant[@plantid = $carload/@shipperid]
            let $consignee := $companytable//plant[@plantid = $carload/@consigneeid]
            return
            <carload>
                <date>{$bill/date/text()}</date>
                <car>{normalize-space(concat($carload/road/text(),' ',$carload/carnum/text()))}</car>
                <class>{$class/classname/text()}</class>
                <classLink>{concat($class/pagename,'.html')}</classLink>
                <shipper>{normalize-space(concat($shipper/parent::plants/parent::company/name/text(),' ',$shipper/plantname/text()))}</shipper>
                <shipLink>{concat($shipper/parent::plants/parent::company/pagename,'.html')}</shipLink>
                <consignee>{normalize-space(concat($consignee/parent::plants/parent::company/name/text(),' ',$consignee/plantname/text()))}</consignee>
                <consLink>{concat($consignee/parent::plants/parent::company/pagename,'.html')}</consLink>
                <freight>{$carload/lading/text()}</freight>
                <desc>{$carload/desc/text()}</desc>
            </carload>
            }
            {
            let $imgrefs := $bill//imgrefs/imgref
            for $imgref in $imgrefs
            return $imgref
            }
        </bill>
        }
    </bills>
</xml>