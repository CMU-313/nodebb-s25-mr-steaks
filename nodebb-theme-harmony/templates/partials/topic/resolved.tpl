<div class="btn-group bottom-sheet" component="thread/resolve">
	<button class="btn-ghost-sm ff-secondary d-flex gap-2 align-items-center dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		<i class="fa fa-fw fa-circle-check text-primary"></i>
		<span class="d-none d-md-inline fw-semibold">Unresolved</span>
	</button>

	<ul class="dropdown-menu p-1 text-sm" role="menu">
		<li>
			<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" href="#" data-status="resolved" role="menuitem">
				<span class="flex-grow-1">Resolved</span>
				<i class="flex-shrink-0 fa fa-fw text-secondary"></i>
			</a>
		</li>
		<li>
			<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" href="#" data-status="unresolved" role="menuitem">
				<span class="flex-grow-1">Unresolved</span>
				<i class="flex-shrink-0 fa fa-fw text-secondary"></i>
			</a>
		</li>
	</ul>
</div>
