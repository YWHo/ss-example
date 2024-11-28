<!DOCTYPE html>
<!--
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Simple. by Sara (saratusar.com, @saratusar) for Innovatif - an awesome Slovenia-based digital agency (innovatif.com/en)
Change it, enhance it and most importantly enjoy it!
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-->

<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
<head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<% require themedCSS('reset') %>
	<% require themedCSS('typography') %>
	<% require themedCSS('form') %>
	<% require themedCSS('layout') %>
	<link rel="shortcut icon" href="$resourceURL('themes/simple/images/favicon.ico')" />
</head>
<body class="$ClassName.ShortName<% if not $Menu(2) %> no-sidebar<% end_if %>" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
<% include Header %>
<div class="main" role="main">
	<div class="inner typography line">
		$Layout
	</div>
	<div class="inner">
		<div class="field">=== Hello, World! ===</div>
		<div class="field">Current page title is: <div class="inner">$Title</div></div>
		<div class="field">Current page content is: <div class="inner">$Content</div></div>
		<div class="field">Current loop of Menu(1) is:
		<div class="inner">
			<% loop $Menu(1) %>
				<li>
					<a class="$LinkingMode" href="$Link">$MenuTitle</a>
				</li>
			<% end_loop %>
		</div>
		<div class="field">Current loop of Menu(2) is:
			<% if $Menu(2) %>
				<div class="inner">
					<% loop $Menu(2) %>
						<li>
							<a class="$LinkingMode" href="$Link">$MenuTitle</a>
						</li>
					<% end_loop %>
				</div>
			<% else %>
				<div class="inner">No items in Menu(2)</div>
			<% end_if %>
		<div class="field">Go to: <div class="inner"><a href="$AbsoluteBasURL">Absolute Base URL</a></div></div>
		</div>
	</div>
</div>
<% include Footer %>

<% require javascript('//code.jquery.com/jquery-3.7.1.min.js') %>
<% require themedJavascript('script') %>

</body>
</html>
