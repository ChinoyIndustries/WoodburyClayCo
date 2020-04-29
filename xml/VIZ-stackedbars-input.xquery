xquery version "3.1";
<xml>
    {
        let $carloadtable := doc('carloadtable.xml')
        let $companytable := doc('companytable.xml')
        let $classtable := doc('carclasstable.xml')
        let $carload := $carloadtable//carload
        let $class := $classtable//class
        let $plant := $companytable//plant
        return
            <data>
                ['Year', 'XL', 'X23', 'X25', 'X26', 'X28a', 'X29', <!--remove these comment marks{ role: 'annotation' }--> ],
                ['1931', {count($carload[@classid = $class[classname = 'XL']/@classid and year-from-date(parent::carloads/parent::bill/date) = 1931])}, {count($carload[@classid = $class[classname = 'X23']/@classid and year-from-date(parent::carloads/parent::bill/date) = 1931])}, {count($carload[@classid = $class[classname = 'X25']/@classid and year-from-date(parent::carloads/parent::bill/date) = 1931])}, {count($carload[@classid = $class[classname = 'X26']/@classid and year-from-date(parent::carloads/parent::bill/date) = 1931])}, {count($carload[@classid = $class[classname = 'X28a']/@classid and year-from-date(parent::carloads/parent::bill/date) = 1931])}, {count($carload[@classid = $class[classname = 'X29']/@classid and year-from-date(parent::carloads/parent::bill/date) = 1931])}, ''],
                ['1933', {count($carload[@classid = $class[classname = 'XL']/@classid and year-from-date(parent::carloads/parent::bill/date) = 1933])}, {count($carload[@classid = $class[classname = 'X23']/@classid and year-from-date(parent::carloads/parent::bill/date) = 1933])}, {count($carload[@classid = $class[classname = 'X25']/@classid and year-from-date(parent::carloads/parent::bill/date) = 1933])}, {count($carload[@classid = $class[classname = 'X26']/@classid and year-from-date(parent::carloads/parent::bill/date) = 1933])}, {count($carload[@classid = $class[classname = 'X28a']/@classid and year-from-date(parent::carloads/parent::bill/date) = 1933])}, {count($carload[@classid = $class[classname = 'X29']/@classid and year-from-date(parent::carloads/parent::bill/date) = 1933])}, ''],
                ['1937', {count($carload[@classid = $class[classname = 'XL']/@classid and year-from-date(parent::carloads/parent::bill/date) = 1937])}, {count($carload[@classid = $class[classname = 'X23']/@classid and year-from-date(parent::carloads/parent::bill/date) = 1937])}, {count($carload[@classid = $class[classname = 'X25']/@classid and year-from-date(parent::carloads/parent::bill/date) = 1937])}, {count($carload[@classid = $class[classname = 'X26']/@classid and year-from-date(parent::carloads/parent::bill/date) = 1937])}, {count($carload[@classid = $class[classname = 'X28a']/@classid and year-from-date(parent::carloads/parent::bill/date) = 1937])}, {count($carload[@classid = $class[classname = 'X29']/@classid and year-from-date(parent::carloads/parent::bill/date) = 1937])}, '']
            </data>
    }
</xml>