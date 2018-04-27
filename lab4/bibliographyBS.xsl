<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
		<!--integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">-->
</link> 
</head>
  <body>
  	<div class="container">
  		<div class="jumbotron">
	  		<h2>Bibliography</h2>
	  		<p>Displaying all entries sorted by author, which were published in 2012</p>
	  	</div>
	  		<div class="table-responsive">
	  			<table class="table table-hover">
	  				<tr class="active">
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
  		
  			<button type="button" class="btn btn-default">Display All</button>
  		</div>
  	</div>
  </body>
</html>
</xsl:template>
</xsl:stylesheet>
