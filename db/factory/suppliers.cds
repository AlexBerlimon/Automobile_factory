namespace db.factory;

using {
    cuid,
    managed
} from '@sap/cds/common';

using db.factory.Parts from  './parts';

@cds.autoexpose
entity Suppliers : cuid, managed {

    supplierName : String;
    contactInfo : String;
    parts : Composition of many Parts on parts.suppliers = $self;

}