namespace db.factory;

using {
    cuid,
    managed
} from '@sap/cds/common';

using {db.factory.Departments}  from './departments';

@cds.autoexpose
entity Employees : cuid, managed {

    firstName : String;
    lastName : String;
    departmentID : Association to one Departments;

}