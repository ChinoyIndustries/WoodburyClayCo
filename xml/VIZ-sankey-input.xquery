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
       ['Total Cars in Oreminea', 'PRR', {count($carload[road = 'PRR'])} ],
       ['Total Cars in Oreminea', 'Foreign', {count($carload[road != 'PRR' and road != 'Unknown'])}],
       ['Total Cars in Oreminea', 'Unknown', {count($carload[road = 'Unknown'])}],
       
       [ 'PRR', 'F30', {count($carload[@classid = $class[classname = 'F30']/@classid])} ],
       [ 'PRR', 'GLa/GLc', {count($carload[@classid = $class[classname = 'GLa/GLc']/@classid])} ],
       [ 'PRR', 'GS/GSd', {count($carload[@classid = $class[classname = 'GS/GSd']/@classid])} ],
       [ 'PRR', 'XL', {count($carload[@classid = $class[classname = 'XL']/@classid])} ],
       [ 'PRR', 'X23', {count($carload[@classid = $class[classname = 'X23']/@classid])} ],
       [ 'PRR', 'X25', {count($carload[@classid = $class[classname = 'X25']/@classid])} ],
       [ 'PRR', 'X26', {count($carload[@classid = $class[classname = 'X26']/@classid])} ],
       [ 'PRR', 'X28a', {count($carload[@classid = $class[classname = 'X28a']/@classid])} ],
       [ 'PRR', 'X29', {count($carload[@classid = $class[classname = 'X29']/@classid])} ],
       
       [ 'GLa/GLc', 'Outbound Fireclay', {count($carload[parent::carloads/parent::bill/@kind = 'C0' and @classid = $class[classname = 'GLa/GLc']/@classid])} ],
       [ 'GS/GSd', 'Outbound Fireclay', {count($carload[parent::carloads/parent::bill/@kind = 'C0' and @classid = $class[classname = 'GS/GSd']/@classid])} ],
       [ 'XL', 'Outbound Fireclay', {count($carload[parent::carloads/parent::bill/@kind = 'C0' and @classid = $class[classname = 'XL']/@classid])} ],
       [ 'X23', 'Outbound Fireclay', {count($carload[parent::carloads/parent::bill/@kind = 'C0' and @classid = $class[classname = 'X23']/@classid])} ],
       [ 'X25', 'Outbound Fireclay', {count($carload[parent::carloads/parent::bill/@kind = 'C0' and @classid = $class[classname = 'X25']/@classid])} ],
       [ 'X26', 'Outbound Fireclay', {count($carload[parent::carloads/parent::bill/@kind = 'C0' and @classid = $class[classname = 'X26']/@classid])} ],
       [ 'X28a', 'Outbound Fireclay', {count($carload[parent::carloads/parent::bill/@kind = 'C0' and @classid = $class[classname = 'X28a']/@classid])} ],
       [ 'X29', 'Outbound Fireclay', {count($carload[parent::carloads/parent::bill/@kind = 'C0' and @classid = $class[classname = 'X29']/@classid])} ],
       
       [ 'F30', 'Inbound Supplies', {count($carload[parent::carloads/parent::bill/@kind = 'C1' and @classid = $class[classname = 'F30']/@classid])} ],
       [ 'GLa/GLc', 'Inbound Supplies', {count($carload[parent::carloads/parent::bill/@kind = 'C1' and @classid = $class[classname = 'GLa/GLc']/@classid])} ],
       [ 'GS/GSd', 'Inbound Supplies', {count($carload[parent::carloads/parent::bill/@kind = 'C1' and @classid = $class[classname = 'GS/GSd']/@classid])} ],
       [ 'XL', 'Inbound Supplies', {count($carload[parent::carloads/parent::bill/@kind = 'C1' and @classid = $class[classname = 'XL']/@classid])} ],
       [ 'X23', 'Inbound Supplies', {count($carload[parent::carloads/parent::bill/@kind = 'C1' and @classid = $class[classname = 'X23']/@classid])} ],
       [ 'X25', 'Inbound Supplies', {count($carload[parent::carloads/parent::bill/@kind = 'C1' and @classid = $class[classname = 'X25']/@classid])} ],
       [ 'X26', 'Inbound Supplies', {count($carload[parent::carloads/parent::bill/@kind = 'C1' and @classid = $class[classname = 'X26']/@classid])} ],
       [ 'X28a', 'Inbound Supplies', {count($carload[parent::carloads/parent::bill/@kind = 'C1' and @classid = $class[classname = 'X28a']/@classid])} ],
       [ 'X29', 'Inbound Supplies', {count($carload[parent::carloads/parent::bill/@kind = 'C1' and @classid = $class[classname = 'X29']/@classid])} ],
       [ 'Foreign', 'Inbound Supplies', {count($carload[parent::carloads/parent::bill/@kind = 'C1' and road != 'PRR' and road != 'Unknown'])} ],
       [ 'Unknown', 'Inbound Supplies', {count($carload[parent::carloads/parent::bill/@kind = 'C1' and road = 'Unknown'])} ],
       
       [ 'Outbound Fireclay', 'W.C.C.', {count($carload[@shipperid = '00']) - 1
       (: the minus ones and plus ones are here to correct for the single car sent to the A. M. Byers Co. that is encoded as being shipped by WCC instead of themselves for technical reasons :)
       } ],
       [ 'Outbound Fireclay', 'Thos. H. Sant &amp; Sons Co.', {count($carload[@shipperid = '01'])} ],
       [ 'Outbound Fireclay', 'Other', {count($carload[parent::carloads/parent::bill/@kind = 'C0' and @shipperid != '00' and @shipperid != '01']) + 1} ],
       
       [ 'W.C.C.', 'Refractories', {count($carload[@shipperid = '00' and @consigneeid = $plant[parent::plants/parent::company/industry = 'Refractory Brick']/@plantid])} ],
       [ 'W.C.C.', 'Steel Mills', {count($carload[@shipperid = '00' and @consigneeid = $plant[parent::plants/parent::company/industry = 'Steel Mill']/@plantid]) - 1} ],
       [ 'W.C.C.', 'Porcelain Insulators', {count($carload[@shipperid = '00' and @consigneeid = $plant[parent::plants/parent::company/industry = 'Porcelain Insulators']/@plantid])} ],
       [ 'W.C.C.', 'Pottery and Ceramics', {count($carload[@shipperid = '00' and @consigneeid = $plant[parent::plants/parent::company/industry = 'Pottery and Ceramics']/@plantid])} ],
       [ 'W.C.C.', 'Other Clay Mining Cos.', {count($carload[@shipperid = '00' and @consigneeid = $plant[parent::plants/parent::company/industry = 'Clay Mining']/@plantid])} ],

       [ 'Thos. H. Sant &amp; Sons Co.', 'Refractories', {count($carload[@shipperid = '01' and @consigneeid = $plant[parent::plants/parent::company/industry = 'Refractory Brick']/@plantid])} ],
       [ 'Thos. H. Sant &amp; Sons Co.', 'Steel Mills', {count($carload[@shipperid = '01' and @consigneeid = $plant[parent::plants/parent::company/industry = 'Steel Mill']/@plantid])} ],
       [ 'Thos. H. Sant &amp; Sons Co.', 'Porcelain Insulators', {count($carload[@shipperid = '01' and @consigneeid = $plant[parent::plants/parent::company/industry = 'Porcelain Insulators']/@plantid])} ],
       [ 'Thos. H. Sant &amp; Sons Co.', 'Pottery and Ceramics', {count($carload[@shipperid = '01' and @consigneeid = $plant[parent::plants/parent::company/industry = 'Pottery and Ceramics']/@plantid])} ],
       [ 'Thos. H. Sant &amp; Sons Co.', 'Other Clay Mining Cos.', {count($carload[@shipperid = '01' and @consigneeid = $plant[parent::plants/parent::company/industry = 'Clay Mining']/@plantid])} ],
       
       [ 'Other', 'Refractories', {count($carload[parent::carloads/parent::bill/@kind = 'C0' and @shipperid != '00' and @shipperid != '01' and @consigneeid = $plant[parent::plants/parent::company/industry = 'Refractory Brick']/@plantid])} ],
       [ 'Other', 'Steel Mills', {count($carload[parent::carloads/parent::bill/@kind = 'C0' and @shipperid != '00' and @shipperid != '01' and @consigneeid = $plant[parent::plants/parent::company/industry = 'Steel Mill']/@plantid]) + 1} ],
       [ 'Other', 'Porcelain Insulators', {count($carload[parent::carloads/parent::bill/@kind = 'C0' and @shipperid != '00' and @shipperid != '01' and @consigneeid = $plant[parent::plants/parent::company/industry = 'Porcelain Insulators']/@plantid])} ],
       [ 'Other', 'Pottery and Ceramics', {count($carload[parent::carloads/parent::bill/@kind = 'C0' and @shipperid != '00' and @shipperid != '01' and @consigneeid = $plant[parent::plants/parent::company/industry = 'Pottery and Ceramics']/@plantid])} ],
       [ 'Other', 'Other Clay Mining Cos.', {count($carload[parent::carloads/parent::bill/@kind = 'C0' and @shipperid != '00' and @shipperid != '01' and @consigneeid = $plant[parent::plants/parent::company/industry = 'Clay Mining']/@plantid])} ],
       
       [ 'Inbound Supplies', 'Tools/Industrial Supply', {count($carload[parent::carloads/parent::bill/@kind = 'C1' and @shipperid = $plant[parent::plants/parent::company/industry = 'Tools/Industrial Supply']/@plantid])} ],
       [ 'Inbound Supplies', 'Explosives', {count($carload[parent::carloads/parent::bill/@kind = 'C1' and @shipperid = $plant[parent::plants/parent::company/industry = 'Explosives']/@plantid])} ],
       [ 'Inbound Supplies', 'Wholesale Grocery/Dry Goods', {count($carload[parent::carloads/parent::bill/@kind = 'C1' and @shipperid = $plant[parent::plants/parent::company/industry = 'Wholesale Grocery/Dry Goods']/@plantid])} ],
       [ 'Inbound Supplies', 'Coal', {count($carload[parent::carloads/parent::bill/@kind = 'C1' and @shipperid = $plant[parent::plants/parent::company/industry = 'Coal Mining']/@plantid])} ],
       [ 'Inbound Supplies', 'Machinery/Railroad Equipment', {count($carload[parent::carloads/parent::bill/@kind = 'C1' and @shipperid = $plant[parent::plants/parent::company/industry = 'Machinery/Railroad Equipment']/@plantid])} ],
       [ 'Inbound Supplies', 'Unknown', {count($carload[parent::carloads/parent::bill/@kind = 'C1' and @shipperid = $plant[parent::plants/parent::company/industry = 'Unknown']/@plantid])} ],
       
       [ 'Refractories', 'Harbison-Walker Co.', {count($carload[@consigneeid = $plant[parent::plants/parent::company/name = 'Harbison-Walker Refractory Co.']/@plantid])} ],
       [ 'Refractories', 'Other Companies', {count($carload[parent::carloads/parent::bill/@kind = 'C0' and @consigneeid = $plant[parent::plants/parent::company/industry = 'Refractory Brick']/@plantid and @consigneeid = $plant[parent::plants/parent::company/name != 'Harbison-Walker Refractory Co.']/@plantid])} ]
       </data>
   }
</xml>