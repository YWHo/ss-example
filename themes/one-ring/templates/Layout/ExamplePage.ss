<% include SideBar %>
<div class="content-container unit size3of4 lastUnit">
	<article>
		<h1>$Title</h1>
        <h2>Note: This is from ExamplePage.ss</h2>
		<div class="content">$Content</div>
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
	</article>
		$Form
		$CommentsForm
</div>