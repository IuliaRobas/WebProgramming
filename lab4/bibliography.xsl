<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<html>
		<body>
				<h2>Bibliography</h2>

				<table border="1">
				<tr bgcolor="#f442bc">
					<th>Category</th>
					<th>Title</th>
					<th>Author</th>
					<th>Year</th>
				</tr>

				<xsl:for-each select="bibliography/entry">
					<xsl:sort select="author"/>
						<xsl:if test="year=2012">
								<tr>
									<td><xsl:value-of select="category"/></td>
						            <td><xsl:value-of select="title"/></td>
					       	        <td><xsl:value-of select="author"/></td>
					                <td><xsl:value-of select="year"/></td>
								</tr>
						</xsl:if>
				</xsl:for-each>
				
				</table>
		</body>
	</html>
</xsl:template>

</xsl:stylesheet>
			
			
<!--<table class="table">
					<thead>
						<tr>
	        				<th>Category</th>
							<th>Title</th>
							<th>Author</th>
							<th>Year</th>
	     				</tr>
					</thead>
					<tbody>
						<xsl:for-each select="bibliography/entry">
						<xsl:sort select="author"/>
							<xsl:if test="year=2012">
									<tr>
										<td><xsl:value-of select="category"/></td>
							            <td><xsl:value-of select="title"/></td>
						       	        <td><xsl:value-of select="author"/></td>
						                <td><xsl:value-of select="year"/></td>
									</tr>
							</xsl:if>
					</xsl:for-each>			-->