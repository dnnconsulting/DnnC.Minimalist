<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE stylesheet [
  <!ENTITY space "<xsl:text> </xsl:text>">
  <!ENTITY cr "<xsl:text>
</xsl:text>">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:param name="ControlID" />
<xsl:param name="Options" />
  <xsl:param name="ManifestPath" />
  
  <xsl:template match="/*">
    <xsl:apply-templates select="root" />
  </xsl:template>
  
<xsl:template match="root">
  <div id="standardMenu">
<ul class="rootMenu">
        <xsl:apply-templates select="node">
          <xsl:with-param name="nodeType">root</xsl:with-param>
        </xsl:apply-templates>
</ul>
</div>
</xsl:template>
  <xsl:template match="node">
    <xsl:param name="nodeType" />
    <li>
      <!-- Set the slass of the LI element-->
      <xsl:variable name="nodeClass">
        <xsl:text>item</xsl:text>
        <xsl:if test="@selected = 1"> selected</xsl:if>
        <xsl:if test="@first = 1"> first</xsl:if>
        <xsl:if test="@last = 1"> last</xsl:if>
		<xsl:if test="@breadcrumb = 1"> breadcrumb</xsl:if>
        <xsl:if test="node"> haschild</xsl:if>
		<xsl:text> child-</xsl:text>
		<xsl:value-of select="position()"/>
      </xsl:variable>
      <xsl:attribute name="class">
        <xsl:value-of select="$nodeClass"/>
      </xsl:attribute>
      <xsl:choose>
        <!-- Process root menu items -->
        <xsl:when test="$nodeType = 'root'">
          <!-- Menu item enabled? -->
          <xsl:choose>
            <xsl:when test="@enabled = 1 and @target !=''">
              <a href="{@url}" target="{@target}">
			    <span>
			      <xsl:if test="@icon">
                    <img alt="RootMenu Icon" src="{@icon}" class="rootIcon" />
                  </xsl:if>
                  <xsl:value-of select="@text" />
				  <xsl:if test="node and $nodeType = 'root'">
                    <i class="navarrow"/>
                  </xsl:if>
				</span>
              </a>
            </xsl:when>
			<!-- When @target is NULL -->
			<xsl:when test="@enabled = 1">
              <a href="{@url}">
			    <span>
			      <xsl:if test="@icon">
                    <img alt="RootMenu Icon" src="{@icon}" class="rootIcon" />
                  </xsl:if>
                  <xsl:value-of select="@text" />
				  <xsl:if test="node and $nodeType = 'root'">
                    <i class="navarrow"/>
                  </xsl:if>
				</span>
              </a>
            </xsl:when>
            <xsl:otherwise>
              <a>
			    <span>
				  <xsl:if test="@icon">
                    <img src="{@icon}" class="rootIcon" />
                  </xsl:if>
                  <xsl:value-of select="@text" />
				  <xsl:if test="node and $nodeType = 'root'">
                    <i class="navarrow"/>
                  </xsl:if>
				</span>
              </a>
            </xsl:otherwise>
          </xsl:choose>
          <!-- Process children (if any) -->
          <xsl:if test="node">
            <div class="subMenu">
              <ul>
                <xsl:apply-templates select="node">
                  <xsl:with-param name="nodeType">subMenu</xsl:with-param>
                </xsl:apply-templates>
              </ul>
            </div>
          </xsl:if>
        </xsl:when>
        <xsl:when test="$nodeType = 'subMenu'">
          <!-- Menu item enabled? -->
          <xsl:choose>
            <xsl:when test="@enabled = 1  and @target !=''">
              <a href="{@url}" target="{@target}">
                <span>
                  <xsl:if test="@icon">
                    <img alt="SubMenu Icon" src="{@icon}" class="mmIcon" />
                  </xsl:if>
                  <xsl:value-of select="@text" />
				  <xsl:if test="node and $nodeType = 'subMenu'">
                    <i class="subarrow"/>
                  </xsl:if>
                </span>
              </a>
            </xsl:when>
			<!-- When @target is NULL -->
			<xsl:when test="@enabled = 1">
              <a href="{@url}">
                <span>
                  <xsl:if test="@icon">
                    <img alt="SubMenu Icon" src="{@icon}" class="mmIcon" />
                  </xsl:if>
                  <xsl:value-of select="@text" />
				  <xsl:if test="node and $nodeType = 'subMenu'">
                    <i class="subarrow"/>
                  </xsl:if>
                </span>
              </a>
            </xsl:when>
            <xsl:otherwise>
              <a>
                <span>
                  <xsl:if test="@icon">
                    <img src="{@icon}" class="mmIcon" />
                  </xsl:if>
                  <xsl:value-of select="@text" />
				  <xsl:if test="node and $nodeType = 'subMenu'">
                    <i class="subarrow"/>
                  </xsl:if>               
                </span>
              </a>
            </xsl:otherwise>
          </xsl:choose>
          <!-- Process children (if any) -->
          <xsl:if test="node">
            <ul class="level{@depth}">
              <xsl:apply-templates select="node">
                <xsl:with-param name="nodeType">subMenu</xsl:with-param>
              </xsl:apply-templates>
            </ul>
          </xsl:if>
        </xsl:when>
      </xsl:choose>
    </li>
</xsl:template>
</xsl:stylesheet>