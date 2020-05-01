xquery version "3.1";
<xml>
    <bills>
        {
        let $carloadtable := doc('carloadtable.xml')
        let $companytable := doc('companytable.xml')
        let $classtable := doc('carclasstable.xml')
        let $bills := $carloadtable//bill
        for $bill in $bills
        let $linkprevious := string($bill/preceding-sibling::bill[1]/@billid)
        let $linknext := string($bill/following-sibling::bill[1]/@billid)
        return
        <bill billid="{$bill/@billid}" kind="{$bill/@kind}">
            {
            let $carloads := $bill//carloads/carload
            for $carload in $carloads
            let $class := $classtable//class[@classid = $carload/@classid]
            let $shipper := $companytable//plant[@plantid = $carload/@shipperid]
            let $consignee := $companytable//plant[@plantid = $carload/@consigneeid]
            let $gifref := $classtable//class[@classid = $carload/@classid]/imgrefs/imgref[@class = 'gif']
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
                <gifref alt="{$gifref/@alt}">{$gifref/text()}</gifref>
            </carload>
            }
            {
            let $imgrefs := $bill//imgrefs/imgref
            for $imgref in $imgrefs
            return $imgref
            }
            <linkprevious>{concat('bill_',$linkprevious,'.html')}</linkprevious>
            <linknext>{concat('bill_',$linknext,'.html')}</linknext>
        </bill>
        }
    </bills>
</xml>