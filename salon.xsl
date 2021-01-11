<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
	<style> 
	body{
		color: #FFFFFF;
		background-color: black;
		word-spacing: 5px;
		font-weight: bold;
	}
	table {
		margin-left: auto;
		margin-right: auto;
	}
	table, th, td {
		text-align: center;
		font-size: 20;
		border: solid #333333;
		border-width: 3px 3px;
		padding: 10px;
		margin: 10px
		letter-spacing: 1px
	}
	h2 {
		font-size: 50;
		text-align: center;
	}
	</style>
  </head>
  <body>
  <h2>Salon samochodowy - Oskar Cyms i Michał Piotrowski</h2>
  
  <label for="cars">Choose a car:</label>
	<select name="cars" id="cars">
	  <option value="bmw">BMW</option>
	  <option value="mercedes">Mercedes</option>
	  <option value="audi">Audi</option>
	  <option value="ford">Ford</option>
	</select>
			
  <table>
    <tr>
      <th>MARKA</th>
      <th>MODEL</th>
	  <th>ROK</th>
	  <th>CENA</th>
	  <th>MOC</th>
	  <th>MIEJSCA</th>
	  <th>ZDJECIE</th>
    </tr>
    <xsl:for-each select="salon/auto">
		<!--<xsl:if test="marka/@n = 'bmw'">-->
			<!--<xsl:if test="rok=2020">-->
				<tr>
				  <td><xsl:value-of select="marka"/></td>
				  <td><xsl:value-of select="model"/></td>
				  <td><xsl:value-of select="rok"/></td>
				  <td><xsl:value-of select="cena"/></td>
				  <td><xsl:value-of select="moc"/></td>
				  <td><xsl:value-of select="miejsca"/></td>
				  <td>
					<xsl:apply-templates select="pic" />
				  </td>
				</tr>
			<!--</xsl:if>-->
		<!--</xsl:if>-->
    </xsl:for-each>
  </table>
  </body>
  </html>
	
</xsl:template>

<xsl:template match="pic">
		<img src="{@url}" height="400" width="600"/>
</xsl:template>
	
</xsl:stylesheet>