namespace db.factory;

using {
    cuid,
    managed
} from '@sap/cds/common';

using db.common from '../common/datatypes';
using db.factory.Suppliers from './suppliers';

@cds.autoexpose
entity Parts : cuid, managed {

    partName : String;
    partNumber : String;
    supplierID : String;
    contactInfo : String;
    suppliers : Association to one Suppliers;
    
}