<cfinclude template="plugin/config.cfm" />

<cfsavecontent variable="pluginBody">
	<cfoutput>
		<h1>Mura Livefyre</h1>
		<p>Mura Livefyre integrates Livefyre comments onto your pages.</p>
		<h2>Steps to use:</h2>
			<ol>
				<li>Go to Site Config -> Edit Site<br><br>
					<img src="images/editSite.jpg"><br><br>
				</li>
				<li>On the Extended Attributes Tab, enter your Livefyre site ID.<br>
					(to obtain a site ID, visit <a href="http://web.livefyre.com/comments/" target="_blank">http://web.livefyre.com/comments/</a> and click on "Get Started")<br><br>
					<img src="images/siteExtend.jpg"><br><br>
				</li>
				<li>Go to a Page or Folder you wish to apply the comments on and go to Layout and Display Objects -> Plugins -> Mura Livefyre and add the "Livefyre Comments" to the Main content area<br><br>
					<img src="images/addComments.jpg"><br><br>
				</li>
			</ol>
	</cfoutput>
</cfsavecontent>

<cfoutput>
	#$.getBean('pluginManager').renderAdminTemplate(
		body = pluginBody
		, pageTitle = pluginConfig.getName()
	)#
</cfoutput>