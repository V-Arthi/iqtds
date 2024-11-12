SELECT SBSB.SBSB_ID,MEME.MEME_SFX,
CONCAT(SBSB.SBSB_ID,CASE WHEN LENGTH(MEME.MEME_SFX)<2 THEN CONCAT('0',MEME.MEME_SFX) END) AS "Member ID",
MEME.MEME_LAST_NAME as "Member LastName",
MEME.MEME_FIRST_NAME as "Member FirstName",
MEME.MEME_MID_INIT as "Member MiddleInitial",
MEME.MEME_SEX as "Member Gender",
MEME.MEME_FAM_LINK_ID,TO_CHAR(MEME.MEME_BIRTH_DT,'YYYYMMDD') as "Member DateOfBirth",
SBAD.SBAD_ADDR1 as "Member AddrLine1",
SBAD.SBAD_ADDR2 as "Member AddrLine2",
SBAD.SBAD_ADDR3 as "Member AddrLine3",
SBAD.SBAD_CITY as "Member City",
SBAD.SBAD_STATE as "Member State",
SBAD.SBAD_ZIP as "Member Zip"
FROM FACETS.CMC_SBSB_SUBSC SBSB 
JOIN FACETS.CMC_MEME_MEMBER MEME ON MEME.SBSB_CK = SBSB.SBSB_CK AND MEME.SBSB_CK =SBSB.SBSB_CK AND MEME.GRGR_CK = SBSB.GRGR_CK 
JOIN FACETS.CMC_SBAD_ADDR SBAD ON SBAD.SBSB_CK = SBSB.SBSB_CK AND SBAD.GRGR_CK = SBSB.GRGR_CK 
WHERE SBSB.SBSB_ID=<SubscriberID> AND MEME.MEME_SFX=<Suffix>