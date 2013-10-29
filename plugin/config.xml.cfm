<cfoutput>
	<plugin>
		<name>MuraLivefyre</name>
		<package>muraLivefyre</package>
		<directoryFormat>packageOnly</directoryFormat>
		<loadPriority>5</loadPriority>
		<version>0.1</version>
		<provider>Mod Media</provider>
		<providerURL>http://www.themodmedia.com</providerURL>
		<category>Application</category>
		<settings></settings>

		<eventHandlers>

			<!-- This is the only eventHandler you need to register -->
			<eventHandler 	event="onApplicationLoad"
							component="extensions.eventHandler" />

		</eventHandlers>

		<displayObjects location="global">

			<displayObject 	name="Display Livefyre Comments"
							displayobjectfile="extensions/dspMuraLiveFyre.cfm" />

		</displayObjects>

		<extensions>
			<extension type="Site" subType="Default">
				<attributeset name="Mure Livefyre ID">
					<attribute 
						name="muraLivefyreID"
						label="Livefyre Site ID"
						hint="You can obtain your ID by going to http://web.livefyre.com/comments/ and setting up your account."
						type="TextBox"
						defaultValue=""
						required="false"
						validation=""
						regex=""
						message=""
						optionList=""
						optionLabelList="" />
				</attributeset>
			</extension>
		</extensions>
	</plugin>
</cfoutput>