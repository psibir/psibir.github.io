<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Set the output format to XML -->
  <xsl:output method="xml" indent="yes"/>

  <!-- Define the template to match the root element -->
  <xsl:template match="/">

    <!-- Start the XML document with the processing instruction -->
    <xsl:text disable-output-escaping="yes">&lt;?xml version="1.0" encoding="UTF-8"?>&#xA;</xsl:text>

    <!-- Start the HTML document -->
    <html>

      <!-- Set the title of the document -->
      <head>
        <title>Sitemap</title>
      </head>

      <!-- Create the body of the document -->
      <body>

        <!-- Create the heading -->
        <h1>Sitemap</h1>

        <!-- Create the table to display the URLs -->
        <table>

          <!-- Define the table headers -->
          <tr>
            <th>URL</th>
          </tr>

          <!-- Iterate over each URL in the sitemap -->
          <xsl:for-each select="urlset/url">

            <!-- Create a row for each URL -->
            <tr>
              <td>
                <!-- Display the URL -->
                <xsl:value-of select="loc"/>
              </td>
            </tr>

          </xsl:for-each>

        </table>

      </body>
    </html>

  </xsl:template>

</xsl:stylesheet>
