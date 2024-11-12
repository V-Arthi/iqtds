SELECT
PRPR.PRPR_ID,PRPR.PRPR_NPI,PRPR.PRPR_ENTITY,PRAD.PRAD_TERM_DT,PRPR.PRPR_TERM_DT,PRPR.MCTN_ID,PRPR.PRPR_TAXONOMY_CD,
SBSB.SBSB_ID,ELIG.MEME_CK,ELIG.PDPD_ID,MCTR.MCTR_ENTITY,MCTR.MCTR_DESC,
PRPR.PRPR_NAME,PRAD.PRAD_ADDR1,PRAD.PRAD_ADDR2,PRAD.PRAD_CITY, PRAD.PRAD_STATE,PRAD.PRAD_ZIP 
FROM FACETS.CMC_SBSB_SUBSC SBSB 
INNER JOIN FACETS.CMC_MEME_MEMBER MEME ON SBSB.SBSB_CK = MEME.SBSB_CK
INNER JOIN FACETS.CMC_MEPE_PRCS_ELIG ELIG ON ELIG.MEME_CK = MEME.MEME_CK
INNER JOIN FACETS.CMC_PDBC_PROD_COMP COMP ON COMP.PDPD_ID = ELIG.PDPD_ID
INNER JOIN FACETS.CMC_NPPR_AGGR NPPR ON NPPR.PDBC_PFX = COMP.PDBC_PFX
INNER JOIN FACETS.CMC_PRPR_PROV PRPR ON NPPR.PRPR_ID = PRPR.PRPR_ID
INNER JOIN FACETS.CMC_PRAD_ADDRESS PRAD ON PRAD.PRAD_ID = PRPR.PRAD_ID 
INNER JOIN FACETS.CMC_MCTR_CD_TRANS MCTR ON MCTR.MCTR_TYPE = PRPR.PRPR_MCTR_TYPE
AND PRPR.PRPR_NPI IN (SELECT PRPR_NPI FROM FACETS.CMC_PRPR_PROV GROUP BY PRPR_NPI HAVING COUNT (PRPR_NPI)= 1)
WHERE SYSDATE BETWEEN ELIG.MEPE_EFF_DT AND ELIG.MEPE_TERM_DT AND SBSB.SBSB_ID IN(<SBSB_ID>)