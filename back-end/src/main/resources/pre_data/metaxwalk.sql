INSERT INTO `metaxwalk` (`user_field_name`, `db_field_name`, `meta_type`) VALUES
('Claim Agreement ID', 'CLCL.AGAG_ID', 'claim'),
('Claim Auth Number', 'CLCL.CLCL_EXT_AUTH_NO', 'claim'),
('Claim Class Plan ID', 'CLCL.CSPI_ID', 'claim'),
('Claim Group ID', 'GRGR.GRGR_ID', 'claim'),
('Claim Group Name', 'GRGR.GRGR_NAME', 'claim'),
('Claim ID', 'CLCL.CLCL_ID', 'claim'),
('Claim Input Date', 'CLCL.CLCL_INPUT_DT', 'claim'),
('Claim Line Allowed Amount', 'CDML.CDML_ALLOW', 'claim'),
('Claim Line Charge Amount', 'CDML.CDML_CHG_AMT', 'claim'),
('Claim Line Coinsurance Amount', 'CDML.CDML_COINS_AMT', 'claim'),
('Claim Line Consider Charge', 'CDML.CDML_CONSIDER_CHG', 'claim'),
('Claim Line Copay Amount', 'CDML.CDML_COPAY_AMT', 'claim'),
('Claim Line Deducted Amount', 'CDML.CDML_DED_AMT', 'claim'),
('Claim Line Diagnosis Code', 'CDML.IDCD_ID', 'claim'),
('Claim Line Disallowed Amount', 'CDML.CDML_DISALL_AMT', 'claim'),
('Claim Line Disallowed Explanation', 'CDML.CDML_DISALL_EXCD', 'claim'),
('Claim Line Discount Amount', 'CDML.CDML_DISC_AMT', 'claim'),
('Claim Line From Date', 'CDML.CDML_FROM_DT', 'claim'),
('Claim Line Hospice Amount', 'CDML.CDML_HCPCS_AMT', 'claim'),
('Claim Line LOB ID', 'CDML.LOBD_ID', 'claim'),
('Claim Line Paid Amount', 'CDML.CDML_PAID_AMT', 'claim'),
('Claim Line Place Of Service', 'CDML.PSCD_ID', 'claim'),
('Claim Line PreAuth Indicator', 'CDML.CDML_PRE_AUTH_IND', 'claim'),
('Claim Line Procedure Code', 'CDML.IPCD_ID', 'claim'),
('Claim Line Procedure Code Mod2', 'CDML.CDML_IPCD_MOD2', 'claim'),
('Claim Line Procedure Code Mod3', 'CDML.CDML_IPCD_MOD3', 'claim'),
('Claim Line Procedure Code Mod4', 'CDML.CDML_IPCD_MOD4', 'claim'),
('Claim Line Provider Specialty', 'CDML.PRCF_MCTR_SPEC', 'claim'),
('Claim Line Room Tate', 'CDML.CDML_ROOM_TYPE', 'claim'),
('Claim Line To Date', 'CDML.CDML_TO_DT', 'claim'),
('Claim Line Units', 'CDML.CDML_UNITS', 'claim'),
('Claim Line Units Allowed', 'CDML.CDML_UNITS_ALLOW', 'claim'),
('Claim Member Age', 'CLCL.CLCL_ME_AGE', 'claim'),
('Claim Member Sex', 'CLCL.MEME_SEX', 'claim'),
('Claim Member Suffix', 'MEME.MEME_SFX', 'claim'),
('Claim Network ID', 'CLCL.NWNW_ID', 'claim'),
('Claim Network Indicator', 'CLCL.CLCL_NTWK_IND', 'claim'),
('Claim Network Prefix', 'CLCL.NWPR_PFX', 'claim'),
('Claim Paid Amount', 'CLCL.CLCL_PA_PAID_AMT', 'claim'),
('Claim Paid Date', 'CLCL.CLCL_PAID_DT', 'claim'),
('Claim Patient Account Number', 'CLCL.CLCL_PA_ACCT_NO', 'claim'),
('Claim PCP Indicator', 'CLCL.CLCL_PCP_IND', 'claim'),
('Claim Product ID', 'CLCL.PDPD_ID', 'claim'),
('Claim Provider ID', 'CLCL.PRPR_ID', 'claim'),
('Claim Received Date', 'CLCL.CLCL_RECD_DT', 'claim'),
('Claim Service End Date', 'CLCL.CLCL_HIGH_SVC_DT', 'claim'),
('Claim Service Start Date', 'CLCL.CLCL_LOW_SVC_DT', 'claim'),
('Claim Status', 'CLCL.CLCL_CUR_STS', 'claim'),
('Claim Sub Type', 'CLCL.CLCL_CL_SUB_TYPE', 'claim'),
('Claim Subgroup ID', 'SGSG.SGSG_ID', 'claim'),
('Claim Subgroup Name', 'SGSG.SGSG_NAME', 'claim'),
('Claim Subscriber ID', 'SBSB.SBSB_ID', 'claim'),
('Claim Total Charge', 'CLCL.CLCL_TOT_CHG', 'claim'),
('Claim Total Payable', 'CLCL.CLCL_TOT_PAYABLE', 'claim'),
('Claim Type', 'CLCL.CLCL_CL_TYPE', 'claim'),
('Member City', 'SBAD.SBAD_CITY', 'member'),
('Member Class Plan ID', 'MEPE.CSPI_ID', 'member'),
('Member County', 'SBAD.SBAD_COUNTY', 'member'),
('Member Effective Date', 'MEPE.MEPE_EFF_DT', 'member'),
('Member Eligibility Indicator', 'MEPE.MEPE_ELIG_IND', 'member'),
('Member First Name', 'MEME.MEME_FIRST_NAME', 'member'),
('Member Group ID', 'GRGR.GRGR_ID', 'member'),
('Member Group Name', 'GRGR.GRGR_NAME', 'member'),
('Member HICN #', 'MEME.MEME_HICN', 'member'),
('Member Last Name', 'MEME.MEME_LAST_NAME', 'member'),
('Member LOB ID', 'LOBD.LOBD_ID', 'member'),
('Member LOB Name', 'LOBD.LOBD_NAME', 'member'),
('Member Marital Status', 'MEME.MEME_MARITAL_STATUS', 'member'),
('Member Medicaid #', 'MEME.MEME_MEDCD_NO', 'member'),
('Member Middle Initial', 'MEME.MEME_MID_INIT', 'member'),
('Member Product ID', 'MEPE.PDPD_ID', 'member'),
('Member Sex', 'MEME.MEME_SEX', 'member'),
('Member State', 'SBAD.SBAD_STATE', 'member'),
('Member SubGroub ID', 'SGSG.SGSG_ID', 'member'),
('Member Subgroup Name', 'SGSG.SGSG_NAME', 'member'),
('Member Suffix', 'MEME.MEME_SFX', 'member'),
('Member Term Date', 'MEPE.MEPE_TERM_DT', 'member'),
('Member Zip', 'SBAD.SBAD_ZIP', 'member'),
('Provider Address City', 'PRAD.PRAD_CITY', 'provider'),
('Provider Address County', 'PRAD.PRAD_COUNTY', 'provider'),
('Provider Address Eff Date', 'PRAD.PRAD_EFF_DT', 'provider'),
('Provider Address State', 'PRAD.PRAD_STATE', 'provider'),
('Provider Address Term Date', 'PRAD.PRAD_TERM_DT', 'provider'),
('Provider Address Type', 'PRAD.PRAD_TYPE', 'provider'),
('Provider Address Zip', 'PRAD.PRAD_ZIP', 'provider'),
('Provider ID', 'PRPR.PRPR_ID', 'provider'),
('Provider Name', 'PRPR.PRPR_NAME', 'provider'),
('Provider NPI', 'PRPR.PRPR_NPI', 'provider'),
('Provider Specialty', 'MCTR.MCTR_DESC', 'provider'),
('Provider Specialty Ind', 'PRPR.PRCF_MCTR_SPEC', 'provider'),
('Provider Sub Type', 'PRPR.PRPR_MCTR_TYPE', 'provider'),
('Provider Tax ID', 'PRPR.MCTN_ID', 'provider'),
('Provider Taxonomy Code', 'PRPR.PRPR_TAXONOMY_CD', 'provider'),
('Provider Termination Date', 'PRPR.PRPR_TERM_DT', 'provider'),
('Provider Type', 'PRPR.PRPR_ENTITY', 'provider');