<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.jobs">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-jobs" ox-mod="jobs">
        	<xsl:for-each select="data/jobs/i">
            <table cellpadding="0" cellspacing="0">
            	
            	<tbody>
	            	
            		<tr>
            			<td colspan="2">
            				<big><xsl:value-of select="title"/></big>
            			</td>
            			
            		</tr>
            		<tr>
            			<th>部门</th>
            			<td>
            				<xsl:value-of select="department"/>
            			</td>
            		</tr>
            		<tr>
            			<th>
            				薪资
            			</th>
            			<td><xsl:value-of select="salary-min"/> - <xsl:value-of select="salary-max"/></td>
            		</tr>
            		<tr>
            			<th>
            				年龄
            			</th>
            			<td>
            				<xsl:value-of select="requirement/age-min"/> - <xsl:value-of select="requirement/age-max"/>岁
            			</td>
            		</tr>
            		<tr>
            			<th>
            				学历
            			</th>
            			<td>
            				<xsl:value-of select="requirement/degree"/>
            			</td>
            		</tr>
            		<tr>
            			<th>
            				工作经验
            			</th>
            			<td><xsl:value-of select="requirement/workage"/>年</td>
            		</tr>
            		<tr>
            			<th valign="top">职位描述</th>
            			<td>
            				<xsl:value-of disable-output-escaping="yes" select="description"/>
            			</td>
            		</tr>
            		<tr>
            			<th valign="top">任职要求</th>
            			<td>
            				<xsl:value-of disable-output-escaping="yes" select="requirement/description"/>
            			</td>
            		</tr>
            		
            		
            		<tr>
            			<th>联系方式</th>
            			<td>
            				<xsl:value-of  select="owner"/>
            				<a href="mailto:{contact}"><xsl:value-of select="contact"/></a>
            			</td>
            		</tr>
            		<tr>
            			<td colspan="2" align="right">
            				
            				<a class="bt" href="mailto:{contact}?subject=申请职位{title}">申请</a>
            				<!--
            				<button type="button" class="J_fav bt" data-id="{_id}">收藏</button>-->

            			</td>
            		</tr>
	            	
            	</tbody>

            </table>
            </xsl:for-each>
        </div>
    </xsl:template>
</xsl:stylesheet>
