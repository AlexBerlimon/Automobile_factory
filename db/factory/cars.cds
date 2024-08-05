namespace db.factory;

using {
    cuid,
    managed
} from '@sap/cds/common';

using {db.common.MyDate} from '../common/datatypes';
using {db.factory.Models} from './models';
using {db.factory.Manufacturers} from './manufacturers';

entity Cars : cuid, managed {

    @mandatory
    @assert.integrity : true
    @assert.target
    model : Association to Models;
    manufacturer: Association to Manufacturers;
    VIN : String;
    ProductionDate: MyDate(10);

}
