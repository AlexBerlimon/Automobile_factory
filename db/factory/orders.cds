namespace db.factory;

using {
    cuid,
    managed
} from '@sap/cds/common';

using db.common.Price from '../common/datatypes';
using db.common.MyDate from '../common/datatypes';
using db.factory.Customers from './customers';
using db.factory.Cars from './cars';

@cds.autoexpose
entity Orders : cuid, managed {

    customerID : Association to Customers;
    carID : Association to Cars;
    orderDate : MyDate(10);
    deliveryDate : MyDate(10);
    totalPrice: Price;
    customers : Association to one Customers;
    car : Association to one Cars;
    
}