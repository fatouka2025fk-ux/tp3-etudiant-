<?xml version="1.0" encoding="UTF-8"?>
<!-- ISEP26-XXX — Nom Prénom -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <!-- Racine : on produit la liste et on délègue chaque étudiant -->
  <xsl:template match="/promotion">
    <ul>
      <xsl:apply-templates select="etudiant"/>
    </ul>
  </xsl:template>

  <!-- Un <li> par étudiant : Prénom Nom -->
  <xsl:template match="etudiant">
    <li>
      <xsl:value-of select="prenom"/>
      <xsl:text> </xsl:text>
      <xsl:value-of select="nom"/>
    </li>
  </xsl:template>

</xsl:stylesheet>
