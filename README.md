muraLivefyre
============

This is a simple Mura Plugin that adds Livefyre comments to your Mura pages. 

**To implement comment counts, simply include this in your mura header or footer:**

```html 
<script type="text/javascript" src="http://zor.livefyre.com/wjs/v1.0/javascripts/CommentCount.js"></script>
```

Then you will want to customize your Mura Folder output to include the span for the script to target:
```html
<span class="livefyre-commentcount" data-lf-site-id="#$.siteConfig('muraLivefyreID')#" data-lf-article-id="#item.getContentID()#">0 Comments</span>
```

Learn more at

http://web.livefyre.com/comments/

Tested with:
- Mura 6.1
- Adobe ColdFusion 9.0.1

**Update 11/7/13:**
Updated the script to use the content ID of the page as the unique identifier instead of the URL, so changing the URL of the page in Mura does not affect your previous comments!
