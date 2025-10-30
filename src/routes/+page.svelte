<script lang="ts">
	import aspenProfilePicture from '$lib/assets/aspen-beach.jpg';

	const socialLinks = [
		{
			name: 'Instagram',
			url: 'https://instagram.com/aspen.the.animal.baby',
			icon: 'instagram'
		},
		{
			name: 'TikTok',
			url: 'https://tiktok.com/@aspen.the.animal.baby',
			icon: 'tiktok'
		},
		{
			name: 'Email',
			url: 'mailto:hello@aspentheanimalbaby.com',
			icon: 'email'
		}
	];

	const businessLinks = [
		{
			title: 'Favorite Treat',
			url: 'https://amzn.to/3WvD66j'
		},
		{
			title: 'Best Ball',
			url: 'https://amzn.to/4hw8OtO'
		},
		{
			title: 'Delicious Snack',
			url: 'https://amzn.to/3Wv8QIM'
		},
	];

	const profile = {
		name: '@aspen.the.animal.baby',
		tagline: 'adventures 🐕 • treats 🍖 • tennis balls 🎾',
		avatar: aspenProfilePicture,
	};
</script>

<svelte:head>
	<title>Aspen the Animal Baby | Instagram, TikTok | Links</title>
	<meta name="description" content="Follow Aspen's adventures across all social media platforms" />
</svelte:head>

<!-- Page Container -->
<div class="min-h-screen bg-[var(--color-background-primary)] md:pt-[50px]">
	<!-- Card Container -->
	<div class="mx-auto h-screen w-full md:h-[var(--height-screen-minus-header)] md:max-w-[575px] md:px-4">
		<div class="flex h-full flex-col overflow-hidden bg-[var(--color-background-secondary)] shadow-2xl md:rounded-t-3xl">
			<!-- Top of Card -->
			<div class="relative">
				<!-- Settings Button -->
				<div class="absolute left-4 top-4 z-10">
					<button
						aria-label="Settings"
						class="flex h-10 w-10 items-center justify-center rounded-full bg-[var(--color-background-secondary)] shadow-md transition-all cursor-pointer"
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
								d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z"
							></path>
							<path
								stroke-linecap="round"
								stroke-linejoin="round"
								stroke-width="2"
								d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"
							></path>
						</svg>
					</button>
				</div>
				<!-- Notifications and Share Buttons -->
				<div class="absolute right-4 top-4 z-10 flex gap-2">
					<button
						aria-label="Notifications"
						class="flex h-10 w-10 items-center justify-center rounded-full bg-[var(--color-background-primary)] shadow-md transition-all cursor-pointer"
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
								d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9"
							></path>
						</svg>
					</button>
					<button
						aria-label="Share"
						class="flex h-10 w-10 items-center justify-center rounded-full bg-[var(--color-background-primary)] shadow-md transition-all cursor-pointer"
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
								d="M8.684 13.342C8.886 12.938 9 12.482 9 12c0-.482-.114-.938-.316-1.342m0 2.684a3 3 0 110-2.684m0 2.684l6.632 3.316m-6.632-6l6.632-3.316m0 0a3 3 0 105.367-2.684 3 3 0 00-5.367 2.684zm0 9.316a3 3 0 105.368 2.684 3 3 0 00-5.368-2.684z"
							></path>
						</svg>
					</button>
				</div>
				<!-- Photo -->
				<div class="relative h-140 overflow-hidden">
					<img
						src={profile.avatar}
						alt="Aspen the Dog"
						class="absolute w-full object-cover bottom-2"
					/>
					<!-- <div class="absolute h-30 bottom-0 left-0 right-0 bg-[linear-gradient(0deg,_var(--color-background-secondary)_10%,_transparent_80%)]"></div> -->
					<div class="absolute bottom-0 left-0 right-0 px-6 pb-6 pt-16 text-white text-center">
						<h1 class="mb-1 text-2xl font-bold">{profile.name}</h1>
						<p class="text-sm">{profile.tagline}</p>
					</div>
				</div>
				<!-- Profile Name and Tagline-->
			</div>
			<!-- Social Links -->
			<div class="flex justify-center gap-2 px-6 pt-6">
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
			<div class="flex-1 space-y-3 overflow-y-auto px-6 py-6">
				{#each businessLinks as link (link.url)}
					<a
						href={link.url}
						target="_blank"
						rel="noopener noreferrer"
						class="group block"
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
			<div class="px-6 py-4 text-center">
				<p class="text-sm text-gray-800">Made with ❤️ for dog lovers everywhere</p>
			</div>
		</div>
	</div>
</div>
