<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" encoding="UTF-8"/>

<xsl:template match="/Actions">
        <xsl:for-each select="Action/Customer">
            <xsl:value-of select="concat(../@ActionType, '|',../@ActionTS, '|'
										,@C_ID, '|',@C_TAX_ID, '|',@C_GNDR, '|',@C_TIER, '|',@C_DOB, '|'
										, Name/C_L_NAME, '|', Name/C_F_NAME, '|', Name/C_M_NAME, '|'
										, Address/C_ADLINE1, '|', Address/C_ADLINE2, '|', Address/C_ZIPCODE, '|', Address/C_CITY, '|', Address/C_STATE_PROV, '|', Address/C_CTRY, '|'
										, ContactInfo/C_PRIM_EMAIL, '|', ContactInfo/C_ALT_EMAIL, '|'
										, ContactInfo/C_PHONE_1/C_CTRY_CODE, '|', ContactInfo/C_PHONE_1/C_AREA_CODE, '|', ContactInfo/C_PHONE_1/C_LOCAL, '|', ContactInfo/C_PHONE_1/C_EXT, '|'
										, ContactInfo/C_PHONE_2/C_CTRY_CODE, '|', ContactInfo/C_PHONE_2/C_AREA_CODE, '|', ContactInfo/C_PHONE_2/C_LOCAL, '|', ContactInfo/C_PHONE_2/C_EXT, '|'
										, ContactInfo/C_PHONE_3/C_CTRY_CODE, '|', ContactInfo/C_PHONE_3/C_AREA_CODE, '|', ContactInfo/C_PHONE_3/C_LOCAL, '|', ContactInfo/C_PHONE_3/C_EXT, '|'
										, TaxInfo/C_LCL_TX_ID, '|', TaxInfo/C_NAT_TX_ID, '|'
										, Account/@CA_ID, '|', Account/@CA_TAX_ST, '|', Account/CA_B_ID, '|', Account/CA_NAME
										)"/>
            <xsl:if test="position()!=last()">
                <xsl:text>&#10;</xsl:text>
            </xsl:if>
        </xsl:for-each>
</xsl:template>

</xsl:stylesheet>