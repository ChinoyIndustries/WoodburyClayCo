xquery version "3.1";
declare namespace math="http://www.w3.org/2005/xpath-functions/math";
<xml>
    {
        let $carloadtable := doc('carloadtable.xml')
        let $companytable := doc('companytable.xml')
        let $classtable := doc('carclasstable.xml')
        let $carload := $carloadtable//carload
        let $class := $classtable//class
        let $plants := $companytable//plant


(: this first one calculates the distance between WCC and each point on the map, times 69.2 to convert to miles:)
(:        return
            <data>
            <!--sanitize output: truncate floats to 2 places with (\d\.\d\d).+], to \1], remove all <item> tags, unescape all ampersands-->
            ['Company', 'Distance (mi.)']
            {
            for $plant in $plants
            where $plant/geotag/@long != -78.249547
            return 
                <item>['{normalize-space(concat($plant/parent::plants/parent::company/name,' ',$plant/plantname,' (',$plant/city,')'))}', {((math:sqrt(math:pow(($plant/geotag/@long + 78.249547), 2) + math:pow(($plant/geotag/@lat - 40.406643), 2))) * 69.2)}],</item>
            }
            </data>}
</xml>:)


(: this second one calculates the carloads per point :)
        return
            <data>
            <!--sanitize output: remove all <item> tags, unescape all ampersands, replace "1 cars" with "1 car"-->
            ['Company', 'Carloads']
            {
            for $plant in $plants
            where $plant/geotag/@long != -78.249547
            return 
                <item>['{normalize-space(concat($plant/parent::plants/parent::company/name,' ',$plant/plantname,' (',$plant/city,', ',count($carload[@consigneeid = $plant/@plantid or @shipperid = $plant/@plantid]),' cars)'))}', {count($carload[@consigneeid = $plant/@plantid or @shipperid = $plant/@plantid])}],</item>
            }
            </data>}
</xml>


(: this last one calculates the distance, times the carloads per point :)
(:        return
            <data>
            <!--sanitize output: truncate floats to 2 places with (\d\.\d\d).+], to \1], remove all <item> tags, unescape all ampersands, replace "1 cars" with "1 car"-->
            ['Company', 'Total Car-Miles']
            {
            for $plant in $plants
            where $plant/geotag/@long != -78.249547
            return 
                <item>['{normalize-space(concat($plant/parent::plants/parent::company/name,' ',$plant/plantname,' (',$plant/city,', ',count($carload[@consigneeid = $plant/@plantid or @shipperid = $plant/@plantid]),' cars)'))}', {((math:sqrt(math:pow(($plant/geotag/@long + 78.249547), 2) + math:pow(($plant/geotag/@lat - 40.406643), 2))) * 69.2 * count($carload[@consigneeid = $plant/@plantid or @shipperid = $plant/@plantid]))}],</item>
            }
            </data>}
</xml>:)