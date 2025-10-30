<script lang="ts">
	import aspenProfilePicture from '$lib/assets/aspen.jpg';

	const socialLinks = [
		{
			name: 'Instagram',
			url: 'https://instagram.com/aspen.the.animal.baby',
			icon: 'instagram'
		},
		// TODO: Add TikTok back in when I've created it
		// {
		// 	name: 'TikTok',
		// 	url: 'https://tiktok.com/@aspen.the.animal.baby',
		// 	icon: 'tiktok'
		// },
		{
			name: 'Email',
			url: 'mailto:hello@aspentheanimalbaby.com',
			icon: 'email'
		}
	];

	const businessLinks = [
		{
			title: 'Delicious Treat',
			url: 'https://amzn.to/3WvD66j',
		},
		{
			title: 'Excellent Bone',
			url: 'https://amzn.to/3Wv8QIM',
		},
		{
			title: "Tasty Biscuit",
			url: 'https://amzn.to/47OoXYg',
		},
		{
			title: 'Good Fetch',
			url: 'https://amzn.to/47isqhC',
		},
		{
			title: 'Tuff Chewtoy',
			url: 'https://amzn.to/3Wve6fv',
		},
		{
			title: 'Perfect Poops',
			url: 'https://amzn.to/4hJFrEv',
		},
		{
			title: 'Eww Vitamins',
			url: 'https://amzn.to/4ntfgmE',
		},
	];

	const profile = {
		name: '@aspen.the.animal.baby',
		tagline: 'Adventures 🐕 • Treats 🍖 • Tennis Balls 🎾',
		avatar: aspenProfilePicture,
	};

	let showTooltip = false;
	function copyToClipboard() {
		navigator.clipboard.writeText(window.location.href);
		showTooltip = true;
		setTimeout(() => {
			showTooltip = false;
		}, 2000);
	}
</script>

<svelte:head>
	<title>Aspen the Animal Baby | Instagram, Email | Links</title>
	<meta name="description" content="Follow Aspen's adventures across all social media platforms" />
</svelte:head>

<!-- Page Container -->
<div class="min-h-screen bg-[var(--color-background-primary)]">
	<!-- Card Container -->
	<div class="mx-auto min-h-screen w-full md:max-w-[575px] md:px-4 md:pt-[30px]">
		<div class="flex min-h-screen md:min-h-[calc(100vh-50px)] flex-col bg-[var(--color-background-secondary)] shadow-2xl md:rounded-t-3xl">
			<!-- Top of Card -->
			<div class="relative">
				<!-- Share Button -->
				<div class="absolute right-6 top-6 z-10 flex items-center gap-2">
					<!-- Tooltip -->
					{#if showTooltip}
						<div
							class="px-2 py-1 bg-[var(--color-background-primary)] text-[var(--color-text-secondary)] text-sm rounded-md shadow-md whitespace-nowrap transition-opacity"
						>
							Copied to Clipboard
						</div>
					{/if}
					<button
						onclick={copyToClipboard}
						aria-label="Copy link to clipboard"
						class="flex h-10 w-10 items-center justify-center rounded-full bg-[var(--color-background-primary)] shadow-md transition-all cursor-pointer hover:opacity-70"
					>
						<svg
							class="h-5 w-5 text-gray-700"
							fill="none"
							stroke="currentColor"
							viewBox="0 0 24 24"
						>
							<path
								stroke-linecap="round"
								stroke-linejoin="round"
								stroke-width="2"
								d="M4 12v7a3 3 0 003 3h10a3 3 0 003-3v-7M12 3v13m0-13l-4 4m4-4l4 4"
							></path>
						</svg>
					</button>
				</div>
				<!-- Profile Photo and Info -->
				<div class="flex flex-col items-center pt-20 pb-4">
					<img
						src={profile.avatar}
						alt="Aspen the Dog"
						class="h-32 w-32 rounded-full object-cover shadow-lg"
					/>
					<h1 class="mt-4 text-2xl font-bold text-[var(--color-text-primary)]">{profile.name}</h1>
					<p class="mt-1 text-sm text-[var(--color-text-secondary)]">{profile.tagline}</p>
				</div>
			</div>
			<!-- Social Links -->
			<div class="flex justify-center gap-2 px-6 pt-1">
				{#each socialLinks as social (social.url)}
					<a
						href={social.url}
						target="_blank"
						rel="noopener noreferrer"
						class="flex h-12 w-12 items-center justify-center text-[var(--color-text-primary)] transition-all hover:opacity-70"
						aria-label={social.name}
					>
						{#if social.icon === 'instagram'}
							<svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24">
								<path
									d="M12 2.163c3.204 0 3.584.012 4.85.07 3.252.148 4.771 1.691 4.919 4.919.058 1.265.069 1.645.069 4.849 0 3.205-.012 3.584-.069 4.849-.149 3.225-1.664 4.771-4.919 4.919-1.266.058-1.644.07-4.85.07-3.204 0-3.584-.012-4.849-.07-3.26-.149-4.771-1.699-4.919-4.92-.058-1.265-.07-1.644-.07-4.849 0-3.204.013-3.583.07-4.849.149-3.227 1.664-4.771 4.919-4.919 1.266-.057 1.645-.069 4.849-.069zm0-2.163c-3.259 0-3.667.014-4.947.072-4.358.2-6.78 2.618-6.98 6.98-.059 1.281-.073 1.689-.073 4.948 0 3.259.014 3.668.072 4.948.2 4.358 2.618 6.78 6.98 6.98 1.281.058 1.689.072 4.948.072 3.259 0 3.668-.014 4.948-.072 4.354-.2 6.782-2.618 6.979-6.98.059-1.28.073-1.689.073-4.948 0-3.259-.014-3.667-.072-4.947-.196-4.354-2.617-6.78-6.979-6.98-1.281-.059-1.69-.073-4.949-.073zm0 5.838c-3.403 0-6.162 2.759-6.162 6.162s2.759 6.163 6.162 6.163 6.162-2.759 6.162-6.163c0-3.403-2.759-6.162-6.162-6.162zm0 10.162c-2.209 0-4-1.79-4-4 0-2.209 1.791-4 4-4s4 1.791 4 4c0 2.21-1.791 4-4 4zm6.406-11.845c-.796 0-1.441.645-1.441 1.44s.645 1.44 1.441 1.44c.795 0 1.439-.645 1.439-1.44s-.644-1.44-1.439-1.44z"
								></path>
							</svg>
						{:else if social.icon === 'tiktok'}
							<svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24">
								<path
									d="M19.59 6.69a4.83 4.83 0 01-3.77-4.25V2h-3.45v13.67a2.89 2.89 0 01-5.2 1.74 2.89 2.89 0 012.31-4.64 2.93 2.93 0 01.88.13V9.4a6.84 6.84 0 00-1-.05A6.33 6.33 0 005 20.1a6.34 6.34 0 0010.86-4.43v-7a8.16 8.16 0 004.77 1.52v-3.4a4.85 4.85 0 01-1-.1z"
								></path>
							</svg>
						{:else if social.icon === 'youtube'}
							<svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24">
								<path
									d="M23.498 6.186a3.016 3.016 0 00-2.122-2.136C19.505 3.545 12 3.545 12 3.545s-7.505 0-9.377.505A3.017 3.017 0 00.502 6.186C0 8.07 0 12 0 12s0 3.93.502 5.814a3.016 3.016 0 002.122 2.136c1.871.505 9.376.505 9.376.505s7.505 0 9.377-.505a3.015 3.015 0 002.122-2.136C24 15.93 24 12 24 12s0-3.93-.502-5.814zM9.545 15.568V8.432L15.818 12l-6.273 3.568z"
								></path>
							</svg>
						{:else if social.icon === 'email'}
							<svg class="h-6 w-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
								<path
									stroke-linecap="round"
									stroke-linejoin="round"
									stroke-width="2"
									d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"
								></path>
							</svg>
						{/if}
					</a>
				{/each}
			</div>
			<!-- Business Links -->
			<div class="flex-1 space-y-3 px-6 py-6">
				{#each businessLinks as link (link.url)}
					<a
						href={link.url}
						target="_blank"
						rel="noopener noreferrer"
						class="group block"
						aria-label={link.title}
					>
						<div
							class="flex items-center justify-between px-5 py-4 transition-all duration-200 hover:opacity-70 border-3 border-solid border-[var(--color-text-primary)]"
						>
							<h3 class="font-medium text-[var(--color-text-primary)] transition-colors">
								{link.title}
							</h3>
							<svg
								class="h-4 w-4 text-[var(--color-text-primary)] transition-colors"
								fill="none"
								stroke="currentColor"
								viewBox="0 0 24 24"
							>
								<path
									stroke-linecap="round"
									stroke-linejoin="round"
									stroke-width="2"
									d="M9 5l7 7-7 7"
								></path>
							</svg>
						</div>
					</a>
				{/each}
			</div>
			<div class="px-[6px] pb-[25px] pt-[5px] text-center">
				<p class="text-sm text-gray-800 text-center">Made with ❤️ for dog lovers everywhere</p>
			</div>
		</div>
	</div>
</div>
