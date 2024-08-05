namespace db.factory;

using {
    cuid,
    managed
} from '@sap/cds/common';

using db.factory.Cars from './cars';
using db.factory.Manufacturers from './manufacturers';

@cds.autoexpose
entity Models : cuid, managed {

    cars : Composition of many Cars on cars.model = $self;
    manufacturers : Association to one Manufacturers;
               
}
