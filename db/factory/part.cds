namespace db.factory;

using {
    cuid,
    managed
} from '@sap/cds/common';

using db.common from '../common/datatypes';

@cds.autoexpose
entity Part : cuid, managed {


}