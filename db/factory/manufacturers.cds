namespace db.factory;

using {
    cuid,
    managed
} from '@sap/cds/common';

using db.factory.Models from './models';

@cds.autoexpose
entity Manufacturers : cuid, managed {
    
    name : String;
    country : String;
    models : Composition of many Models on models.manufacturers = $self;

}