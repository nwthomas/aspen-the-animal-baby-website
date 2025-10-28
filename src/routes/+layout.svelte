<script lang="ts">
	import '../app.css';
	import favicon from '$lib/assets/favicon.ico';

	function resolve(url: string): string {
		return url;
	}

	let { children } = $props();
</script>

<svelte:head>
	<link rel="icon" href={resolve(favicon)} />
</svelte:head>

{@render children?.()}
