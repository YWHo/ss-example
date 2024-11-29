<div class="inner">
	<div class="field">Article Holder Page</div>
	<div class="field">Current page title is: <div class="inner">$Title</div>
    <hr>
    <% loop $Children %>
        <div class="field">
            <a href="$Link">$Title</a>
        </div>
    <% end_loop %>
</div>