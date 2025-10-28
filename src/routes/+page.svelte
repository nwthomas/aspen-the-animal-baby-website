<script lang="ts">
	import { onMount } from 'svelte';

	function resolve(url: string): string {
		return url;
	}

	// Social media links for Aspen
	const links = [
		{
			title: 'Instagram',
			url: 'https://instagram.com/aspentheanimalbaby',
			icon: '📸',
			description: 'The original home of Aspen on the internet'
		}
	];

	// Profile data
	const profile = {
		name: 'Aspen',
		title: 'The Bernese Animal Baby',
		descriptions: [
			'✉️ DMs open for treats and peanut butter',
			'🎾 Destroyer of tennis balls',
			'🌊 Loves the ocean',
			'🎂 May 22, 2023'
		],
		avatar: '/aspen-avatar.jpg' // You can add an actual image later
	};

	let mounted = false;

	onMount(() => {
		mounted = true;
	});
</script>

<svelte:head>
	<title>Aspen the Animal Baby - Links</title>
	<meta name="description" content="Follow Aspen's adventures across all social media platforms" />
</svelte:head>

<div
	class="flex min-h-screen items-center justify-center bg-gradient-to-br from-blue-50 via-purple-50 to-pink-50 p-4"
>
	<div class="mx-auto w-full max-w-md">
		<!-- Profile Section -->
		<div class="animate-fade-in mb-8 text-center">
			<!-- Avatar Image -->
			<div class="mx-auto mb-4 h-24 w-24 overflow-hidden rounded-full shadow-lg">
				<img src="/images/aspen.jpg" alt="Aspen the Dog" class="h-full w-full object-cover" />
			</div>

			<h1 class="mb-2 text-3xl font-bold text-gray-800">{profile.name}</h1>
			<h2 class="mb-3 text-xl font-semibold text-purple-600">{profile.title}</h2>
			<p class="mx-auto max-w-xs text-sm leading-relaxed text-gray-600">
				{#each profile.descriptions as description (description)}
					<span class="block">{description}</span>
				{/each}
			</p>
		</div>

		<!-- Links Section -->
		<div class="space-y-4">
			{#each links as link, index (link.url)}
				<a
					href={resolve(link.url)}
					target="_blank"
					rel="noopener noreferrer"
					class="group block"
					style="animation-delay: {index * 100}ms"
					class:animate-slide-up={mounted}
					class:opacity-0={!mounted}
				>
					<div
						class="relative overflow-hidden rounded-2xl border border-white/20 bg-white/80 p-4 shadow-lg backdrop-blur-sm transition-all duration-300 group-hover:border-purple-200 hover:shadow-xl"
					>
						<div
							class="absolute inset-0 bg-gradient-to-r from-purple-500/5 to-pink-500/5 opacity-0 transition-opacity duration-300 group-hover:opacity-100"
						></div>
						<div class="relative z-10">
							<div class="flex items-center space-x-4">
								<div class="text-2xl">{link.icon}</div>
								<div class="flex-1 text-left">
									<h3
										class="font-semibold text-gray-800 transition-colors group-hover:text-purple-600"
									>
										{link.title}
									</h3>
									<p class="text-sm text-gray-500 transition-colors group-hover:text-gray-600">
										{link.description}
									</p>
								</div>
								<div class="text-gray-400 transition-colors group-hover:text-purple-500">
									<svg class="h-5 w-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
										<path
											stroke-linecap="round"
											stroke-linejoin="round"
											stroke-width="2"
											d="M10 6H6a2 2 0 00-2 2v10a2 2 0 002 2h10a2 2 0 002-2v-4M14 4h6m0 0v6m0-6L10 14"
										></path>
									</svg>
								</div>
							</div>
						</div>
					</div>
				</a>
			{/each}
		</div>

		<!-- Footer -->
		<div class="animate-fade-in mt-8 text-center" style="animation-delay: 600ms">
			<p class="text-sm text-gray-500">Made with ❤️ for animal lovers everywhere</p>
		</div>
	</div>
</div>

<style>
	@keyframes fade-in {
		from {
			opacity: 0;
			transform: translateY(20px);
		}
		to {
			opacity: 1;
			transform: translateY(0);
		}
	}

	@keyframes slide-up {
		from {
			opacity: 0;
			transform: translateY(30px);
		}
		to {
			opacity: 1;
			transform: translateY(0);
		}
	}

	.animate-fade-in {
		opacity: 0;
		animation: fade-in 0.6s ease-out forwards;
	}

	.animate-slide-up {
		opacity: 0;
		animation: slide-up 0.6s ease-out forwards;
	}
</style>
