CREATE TABLE XMLwithOpenXML
(
Id INT IDENTITY PRIMARY KEY,
XMLData XML,
LoadedDateTime DATETIME
)

INSERT INTO XMLwithOpenXML(XMLData, LoadedDateTime)
SELECT CONVERT(XML, BulkColumn) AS BulkColumn
FROM OPENROWSET(BULK 'D:\Deb\ImportXML\GWP_Bestinvest_Out_120_ExchangeTradeStatus_20130618_175100.out', SINGLE_BLOB) AS x;
