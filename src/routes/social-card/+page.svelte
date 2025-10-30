<script lang="ts">
	import aspenProfilePicture from '$lib/assets/aspen.jpg';
</script>

<svelte:head>
	<title>Aspen the Animal Baby - Social Card</title>
	<meta name="description" content="Social card for Aspen the Animal Baby" />
</svelte:head>

<!-- Social Card Container - 1200x630 -->
<div
	class="flex h-screen w-screen items-center justify-center bg-[var(--color-background-primary)]"
>
	<div
		class="flex h-[630px] w-[1200px] flex-col items-center justify-center bg-[var(--color-background-secondary)]"
	>
		<!-- Avatar -->
		<img
			src={aspenProfilePicture}
			alt="Aspen the Dog"
			class="h-[350px] w-[350px] rounded-full object-cover"
		/>

		<!-- Handle -->
		<h1 class="mt-8 text-7xl font-bold text-[var(--color-text-primary)]">@aspen.the.animal.baby</h1>

		<!-- URL with asterisk -->
		<div class="mt-6 flex items-center gap-3">
			<!-- Asterisk SVG -->
			<svg
				class="h-12 w-12 text-[var(--color-text-primary)]"
				fill="currentColor"
				viewBox="0 0 24 24"
			>
				<path d="M12 2l2.4 7.4h7.6l-6 4.6 2.3 7-6.3-4.7-6.3 4.7 2.3-7-6-4.6h7.6z"></path>
			</svg>

			<!-- URL -->
			<p class="text-5xl text-[var(--color-text-secondary)]">/aspentheanimalbaby</p>
		</div>
	</div>
</div>
