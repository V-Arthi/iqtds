SELECT DISTINCT
CLCL.CLCL_ID AS ClaimIdentifier, CLCL.AGAG_ID AS ProviderAgreementIdentifier, CLCL.CLCL_CL_SUB_TYPE AS ClaimSubType, CLCL.CLCL_CUR_STS AS ClaimStatus, CLCL.CLCL_NTWK_IND AS NetworkIndicator, CLCL.CLCL_TOT_PAYABLE AS ClaimTotalPayable, CLCL.CSPI_ID AS ClassPlanIdentifier, CLCL.PDPD_ID AS ProductIdentifier, CLCL.PRPR_ID AS ServicingProvider, 
CDML.CDML_CL_NTWK_IND AS RelatedParameterNwkID, CDML.CDML_DISALL_EXCD AS DisallowExplanationCode, CDML.CDML_PAID_AMT AS LineItemPaidAmount, CDML.IDCD_ID AS DiagnosisCode, CDML.IPCD_ID AS ProcedureCode, CDML.LOBD_ID AS LOBID, CDML.PSCD_ID AS PlaceofServiceIdentifier, CDML.RCRC_ID AS RevenueCode, 
CDSD.CLCL_ID AS ClaimID, 
CLCB .CLCB_COB_REAS_CD AS OtherCarrierReasonCode, CLCB .CLCB_COB_TYPE AS COBType, CLED.CLED_TRAD_PARTNER AS EDIClaimTradingPartner, 
CLHP.CLHP_BILL_CLASS AS BillClassification, CLHP.CLHP_FAC_TYPE AS FacilityType, CLHP.CLHP_FREQUENCY AS BillFrequency, 
WWMS.WRTR_REASON_DESC AS RoutingReasonDescription, WWMS.WWMS_MESSAGE_ID AS WarningMessageID, 
IPCD.IPCD_DESC AS ProcedureDescription, IPCD.IPCD_ID AS ProcedureCode, 
PRPR.PRCF_MCTR_SPEC AS ProviderSpecialty, PRPR.PRPR_ID AS ProviderIdentifier, PRPR.PRPR_MCTR_TYPE AS ProviderType, PRPR.PRPR_NPI AS NationalPractitionerIdentifier, PRPR.PRPR_TAXONOMY_CD AS TaxonomyCode, 
SBSB.SBSB_CK AS SubscriberContrivedKey, SBSB.SBSB_ID AS SubscriberIdentifier, 
MEME.MEME_BIRTH_DT AS BirthDate, MEME.SBSB_CK AS SubscriberContrivedKey,
CDOR.EXCD_ID AS LIOverrideEXCDID,
CLOR.EXCD_ID AS CLMOverrideEXCDID,
CLAP.CLAP_NAME AS AlternatePayeeName,
CDMD.EXCD_ID AS ExplanationCode, CDMD.CDMD_DISALL_AMT AS DISALLOW,
CDSM.CDSM_OC_ALLOW, CDSM.CDSM_OC_DED_AMT, CDSM.CDSM_OC_COINS_AMTM, CDSM.CDSM_OC_COINS_AMTP, CDSM.CDSM_OC_PAID_AMT, CDSM.CDSM_OC_REAS_CD
FROM FACETS.CMC_CLCL_CLAIM CLCL 
JOIN FACETS.CMC_CDML_CL_LINE CDML ON CLCL.CLCL_ID=CDML.CLCL_ID
LEFT JOIN FACETS.CMC_CLCB_CL_COB CLCB 	ON CLCL.CLCL_ID=CLCB.CLCL_ID
LEFT JOIN FACETS.CMC_CDSD_SUPP_DATA CDSD ON CLCL.CLCL_ID=CDSD.CLCL_ID
LEFT JOIN FACETS.CMC_CLED_EDI_DATA CLED ON CLCL.CLCL_ID=CLED.CLCL_ID
LEFT JOIN FACETS.CMC_IPCD_PROC_CD IPCD ON CDML.IPCD_ID=IPCD.IPCD_ID
JOIN FACETS.CMC_SBSB_SUBSC SBSB ON CLCL.SBSB_CK = SBSB.SBSB_CK
JOIN FACETS.CMC_MEME_MEMBER MEME ON CLCL.SBSB_CK = MEME.SBSB_CK
JOIN FACETS.CMC_PRPR_PROV PRPR ON CLCL.PRPR_ID= PRPR.PRPR_ID
LEFT JOIN FACETS.NWX_WWMS_WARNMSG WWMS ON CLCL.CLCL_ID = WWMS.WWMS_MESSAGE_ID
LEFT JOIN FACETS.CMC_CLHP_HOSP CLHP ON CLCL.CLCL_ID = CLHP.CLCL_ID
LEFT JOIN FACETS.CMC_CDOR_LI_OVR CDOR ON CLCL.CLCL_ID = CDOR.CLCL_ID
LEFT JOIN FACETS.CMC_CLOR_CL_OVR CLOR ON CLCL.CLCL_ID = CLOR.CLCL_ID
LEFT JOIN FACETS.CMC_CLAP_ALT_PAYEE CLAP ON CLCL.CLCL_ID = CLAP.CLCL_ID
LEFT JOIN FACETS.CMC_CDMD_LI_DISALL CDMD ON CLCL.CLCL_ID = CDMD.CLCL_ID
LEFT JOIN FACETS.CMC_CDSM_LI_MSUPP CDSM ON CLCL.CLCL_ID = CDSM.CLCL_ID