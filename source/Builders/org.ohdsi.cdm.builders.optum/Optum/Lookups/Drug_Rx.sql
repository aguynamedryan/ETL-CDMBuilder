﻿SELECT DISTINCT SOURCE_CODE, TARGET_CONCEPT_ID
FROM SOURCE_TO_CONCEPT_MAP
WHERE
TARGET_VOCABULARY_ID = 8 /*RXNORM*/
AND SOURCE_VOCABULARY_ID = 9 /*NDC*/
AND PRIMARY_MAP = 'Y'
AND (INVALID_REASON IS NULL or INVALID_REASON = '')
AND GETDATE() BETWEEN VALID_START_DATE and VALID_END_DATE
