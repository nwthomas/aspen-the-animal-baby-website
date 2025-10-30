<script lang="ts">
	import '../app.css';
	import favicon from '$lib/assets/favicon.ico';
	import QRCode from '$lib/components/QRCode.svelte';
</script>

<svelte:head>
	<link rel="icon" href={favicon} />
</svelte:head>

<slot />

<QRCode />
