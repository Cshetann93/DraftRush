<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
                xmlns:html="http://www.w3.org/TR/REC-html40"
                xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml" lang="en">
      <head>
        <title>XML Sitemap | DraftsRush</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <style type="text/css">
          body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen-Sans, Ubuntu, Cantarell, "Helvetica Neue", sans-serif;
            color: #111317;
            background-color: #F8FAFC;
            margin: 0;
            padding: 40px 20px;
          }
          .container {
            max-width: 1000px;
            margin: 0 auto;
            background: #ffffff;
            border: 2px solid #000000;
            box-shadow: 6px 6px 0px #000000;
            border-radius: 4px;
            overflow: hidden;
          }
          .header {
            background-color: #FFE600;
            border-bottom: 2px solid #000000;
            padding: 24px 32px;
          }
          .header h1 {
            margin: 0 0 8px 0;
            font-size: 24px;
            font-weight: 800;
            letter-spacing: -0.5px;
          }
          .header p {
            margin: 0;
            font-size: 13px;
            color: #111317;
            font-weight: 500;
          }
          .stats {
            padding: 16px 32px;
            background-color: #FFFFFF;
            border-bottom: 1px solid #E2E8F0;
            font-size: 13px;
            font-weight: 600;
            color: #475569;
          }
          table {
            width: 100%;
            border-collapse: collapse;
            text-align: left;
          }
          th {
            background-color: #111317;
            color: #FFFFFF;
            padding: 12px 24px;
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 0.5px;
          }
          td {
            padding: 12px 24px;
            border-bottom: 1px solid #E2E8F0;
            font-size: 13px;
          }
          tr:nth-child(even) {
            background-color: #F8FAFC;
          }
          tr:hover {
            background-color: #FFFDE6;
          }
          a {
            color: #0F172A;
            text-decoration: none;
            font-weight: 600;
          }
          a:hover {
            text-decoration: underline;
            color: #D97706;
          }
          .badge {
            display: inline-block;
            padding: 2px 6px;
            background: #E2E8F0;
            border-radius: 3px;
            font-size: 11px;
            font-family: monospace;
          }
        </style>
      </head>
      <body>
        <div class="container">
          <div class="header">
            <h1>DraftsRush XML Sitemap</h1>
            <p>Generated for search engines like Google to index drafts, tools, and storytelling guides.</p>
          </div>
          <div class="stats">
            Total URLs indexed: <xsl:value-of select="count(sitemap:urlset/sitemap:url)"/>
          </div>
          <table>
            <thead>
              <tr>
                <th style="width: 65%;">URL</th>
                <th style="width: 15%;">Priority</th>
                <th style="width: 20%;">Last Modified</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="sitemap:urlset/sitemap:url">
                <tr>
                  <td>
                    <xsl:variable name="itemURL">
                      <xsl:value-of select="sitemap:loc"/>
                    </xsl:variable>
                    <a href="{$itemURL}">
                      <xsl:value-of select="sitemap:loc"/>
                    </a>
                  </td>
                  <td>
                    <span class="badge"><xsl:value-of select="sitemap:priority"/></span>
                  </td>
                  <td style="color: #64748B; font-size: 12px; font-family: monospace;">
                    <xsl:value-of select="concat(substring(sitemap:lastmod,0,11), ' ', substring(sitemap:lastmod,12,5))"/>
                  </td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
