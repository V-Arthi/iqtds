SELECT * FROM FHG.FHD_DOTS_TXT_STO_X DOTS 
WHERE EXISTS(
				SELECT 1 FROM FHG.FHD_DOTS_TXT_STO_X DOTS_IN 
				WHERE DOTS_IN.DOHD_CKN = DOTS.DOHD_CKN 
				AND DOTS_TEXT1 LIKE '%ST*837*%'
				AND DOTS_TEXT1 LIKE '%BHT*%*[ClaimReceivedDate]%'
				AND (DOTS_IN.DOTS_TEXT3 || DOTS_IN.DOTS_TEXT4 || DOTS_IN.DOTS_TEXT5) LIKE '%CLM*[PatientControlNumber]*%'
				AND (DOTS_IN.DOTS_TEXT3 || DOTS_IN.DOTS_TEXT4 || DOTS_IN.DOTS_TEXT5) Like '%REF*D9*[CLRN_Number]~%'
			)
ORDER BY DOHD_CKN, DOTS_SEQ_NOL