xquery version "3.1";
    let $companytable := doc('companytable.xml')
    let $plants := $companytable//plant
    for $plant in $plants
        let $pointname := normalize-space(concat($plant/parent::plants/parent::company/name/text(),' ',$plant/plantname/text()))
        let $pointsize := $plant/shipcount/text()
        let $pointcolor := $plant/parent::plants/parent::company/@kind
        let $pointlat := $plant/geotag/@lat
        let $pointlong := $plant/geotag/@long
        return
        concat($pointsize,'&#9;',$pointcolor,'&#9;',$pointname,'&#9;',$pointlat,'&#9;',$pointlong,'&#xa;')