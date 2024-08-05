namespace db.factory;

using {
    cuid,
    managed
} from '@sap/cds/common';

using db.common from '../common/datatypes';
using db.factory.Orders from './orders';

@cds.autoexpose
entity Customers : cuid, managed {

    Name : String;
    contactInfo : String;
    order : Composition of many Orders on order.customers = $self;

}