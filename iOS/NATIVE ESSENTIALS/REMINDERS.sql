SELECT
DATETIME(ZCREATIONDATE+978307200,'UNIXEPOCH','LOCALTIME') AS "CREATED",
DATETIME(ZDATESTAMP+978307200,'UNIXEPOCH','LOCALTIME') AS "LAST MODIFIED", DATETIME(ZSTARTDATE+978307200,'UNIXEPOCH','LOCALTIME') AS "EVENT START",
DATETIME(ZENDDATE+978307200,'UNIXEPOCH','LOCALTIME') AS "EVENT END",
ZTIMEZONE,
ZCALENDARITEM.ZTITLE AS "EVENT", ZNODE.ZTITLE AS "CALENDAR/LIST" ,
ZCOMPLETEDDATE, ZSTATUS
FROM ZCALENDARITEM
LEFT JOIN ZNODE ON ZCALENDARITEM.ZCALENDAR = ZNODE.Z_P