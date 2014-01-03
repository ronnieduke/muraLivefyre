<cfscript>
/**
*
* NOTE:
* This is essentially just a simple 'include' file
* You could do whatever you need here (e.g., db lookups, etc.)
* Also, since this will be rendered via the front-end,
* you have access to the Mura $cope!
* 
*/
</cfscript>
<cfoutput>
	<!--- Don't display comments on folder/calendar/gallery landing pages --->
	<cfif not ListFindNoCase('portal,folder,calendar,gallery', $.content('type'))>
		<cfif len($.siteConfig('muraLivefyreID'))>
			<!-- START: Livefyre Embed -->
			<div id="livefyre-comments"></div>
			<script type="text/javascript" src="http://zor.livefyre.com/wjs/v3.0/javascripts/livefyre.js"></script>
			<script type="text/javascript">
			(function () {
			    var articleId = '#$.content('contentID')#';
			    fyre.conv.load({}, [{
			        el: 'livefyre-comments',
			        network: "livefyre.com",
			        siteId: "#$.siteConfig('muraLivefyreID')#",
			        articleId: articleId,
			        signed: false,
			        collectionMeta: {
			            articleId: articleId,
			            url: fyre.conv.load.makeCollectionUrl(),
			        }
			    }], function() {});
			}());
			</script>
			<!-- END: Livefyre Embed -->
		<cfelse>
			<div class="alert alert-danger"><strong>OOPS!</strong> You need add a Site ID in your site's Extended Attributes for Livefyre to work. </div>
		</cfif>
	</cfif>
            
</cfoutput>