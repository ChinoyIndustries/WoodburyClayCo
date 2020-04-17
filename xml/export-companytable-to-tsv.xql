xquery version "3.1";
    let $companytable := doc('companytable.xml')
    let $plants := $companytable//plant
    for $plant in $plants
        let $point-id := $plant/@plantid
        let $pointname := normalize-space(concat($plant/parent::plants/parent::company/name/text(),' ',$plant/plantname/text()))
        let $pointlink := $plant/parent::plants/parent::company/pagename/text()
        let $pointsize := $plant/shipcount/text()
        let $pointcolor := $plant/parent::plants/parent::company/@kind
        let $pointlat := $plant/geotag/@lat
        let $pointlong := $plant/geotag/@long
        return
                concat($pointname,'&#9;http://railroad.newtfire.org/companies/',$pointlink,'.html&#9;',$point-id,'&#9;',$pointsize,'&#9;',$pointcolor,'&#9;',$pointlat,'&#9;',$pointlong,'&#xa;')
                (: concat($point-id,'&#9;',$pointsize,'&#9;',$pointcolor,'&#9;',$pointname,'&#9;',$pointlat,'&#9;',$pointlong,'&#xa;') :)