create external schema spec_master from data catalog 
database 's3dataredshiftspectrum' 
iam_role 'aws_iam_role=arn:aws:iam::283761827878:role/redshifts3'
create external database if not exists;

create external table spectrum.sales(
  salesid integer,
  listid integer,
  sellerid integer,
  buyerid integer,
  eventid integer,
  dateid smallint,
  qtysold smallint,
  pricepaid decimal(8,2),
  commission decimal(8,2),
  saletime timestamp)
row format delimited
fields terminated by '\t'
stored as textfile
location 's3://awssampledbuswest2/tickit/spectrum/sales/'
table properties ('numRows'='172000');
