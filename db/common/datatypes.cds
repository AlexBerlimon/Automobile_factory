namespace db.common;
type Currency : String enum { Bitcoin; USD; BYN; }

type Price : {
    value : Decimal(10, 2) default 0.0;
    currency : Currency default 'USD';
}

@assert.format : '/^(\+\d{1,3})?\s?(\(\d{1,4}\))?\s?\d{1,14}$/'

type Phone : String(50);

@assert.format : '/^[\w\-\.]+@([\w\-]+\.)+[\w\-]{2,3}$/'
type Email : String(100);

@assert.format : '/^\d{2}-\d{2}-\d{4}$/'
type MyDate : String(10);
