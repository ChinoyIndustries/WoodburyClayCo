xquery version "3.1";
<xml>
    <companies>
        {
        let $carloadtable := doc('carloadtable.xml')
        let $companytable := doc('companytable.xml')
        let $classtable := doc('carclasstable.xml')
        let $companies := $companytable//company
        for $company in $companies
        return
        <company kind="{$company/@kind}">
            <name>{$company/name/text()}</name>
            <pagename>{$company/pagename/text()}</pagename>
            <industry>{$company/industry/text()}</industry>
            <desc>{$company/desc/text()}</desc>
            <plants>
            {
            let $plants := $company//plants/plant
            for $plant in $plants
            let $carload := $carloadtable//carload
            let $shipcount :=  
                count($carload[@shipperid = $plant/@plantid])+
                count($carload[@consigneeid = $plant/@plantid])
            return
            <plant plantid="{$plant/@plantid}">
                <plantname>{$plant/plantname/text()}</plantname>
                <city>{$plant/city/text()}</city>
                <ct1000-98>{$plant/ct1000-98/text()}</ct1000-98>
                <ct1000-45>{$plant/ct1000-45/text()}</ct1000-45>
                <geotag lat="{$plant/geotag/@lat}" long="{$plant/geotag/@long}"/>
                <desc>{$plant/desc/text()}</desc>
                <shipcount>{$shipcount}</shipcount>
            </plant>
            }
            </plants>
            <reflist>{
            let $refs := $company/reflist/ref
            for $ref in $refs
            return
                <ref>{$ref/text()}</ref>
            }
            </reflist>
        </company>
        }
    </companies>
</xml>