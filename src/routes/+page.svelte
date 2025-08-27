<script lang="ts">
	import { onMount } from 'svelte';
	
	// Social media links for Aspen
	const links = [
		{
			title: 'Instagram',
			url: 'https://instagram.com/aspenanimalbaby',
			icon: '📸',
			description: 'Daily adventures & cute moments'
		},
		{
			title: 'TikTok',
			url: 'https://tiktok.com/@aspenanimalbaby',
			icon: '🎵',
			description: 'Fun videos & behind the scenes'
		},
		{
			title: 'YouTube',
			url: 'https://youtube.com/@aspenanimalbaby',
			icon: '📺',
			description: 'Longer videos & special content'
		},
		{
			title: 'Twitter/X',
			url: 'https://twitter.com/aspenanimalbaby',
			icon: '🐦',
			description: 'Quick updates & thoughts'
		},
		{
			title: 'Facebook',
			url: 'https://facebook.com/aspenanimalbaby',
			icon: '📘',
			description: 'Community & family updates'
		}
	];

	// Profile data
	const profile = {
		name: 'Aspen',
		title: 'The Animal Baby',
		description: 'Adventure-loving, treat-seeking, belly-rub enthusiast 🐾',
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

<div class="min-h-screen bg-gradient-to-br from-blue-50 via-purple-50 to-pink-50 flex items-center justify-center p-4">
	<div class="w-full max-w-md mx-auto">
		<!-- Profile Section -->
		<div class="text-center mb-8 animate-fade-in" class:opacity-100={mounted} class:opacity-0={!mounted}>
			<!-- Avatar Placeholder -->
			<div class="w-24 h-24 mx-auto mb-4 rounded-full bg-gradient-to-br from-amber-400 to-orange-500 flex items-center justify-center text-4xl shadow-lg">
				🐕
			</div>
			
			<h1 class="text-3xl font-bold text-gray-800 mb-2">{profile.name}</h1>
			<h2 class="text-xl text-purple-600 font-semibold mb-3">{profile.title}</h2>
			<p class="text-gray-600 text-sm leading-relaxed max-w-xs mx-auto">
				{profile.description}
			</p>
		</div>

		<!-- Links Section -->
		<div class="space-y-4">
			{#each links as link, index}
				<a
					href={link.url}
					target="_blank"
					rel="noopener noreferrer"
					class="block group"
					style="animation-delay: {index * 100}ms"
					class:animate-slide-up={mounted}
					class:opacity-0={!mounted}
				>
					<div class="bg-white/80 backdrop-blur-sm rounded-2xl p-4 shadow-lg hover:shadow-xl transition-all duration-300 transform hover:scale-105 border border-white/20 group-hover:border-purple-200">
						<div class="flex items-center space-x-4">
							<div class="text-2xl">{link.icon}</div>
							<div class="flex-1 text-left">
								<h3 class="font-semibold text-gray-800 group-hover:text-purple-600 transition-colors">
									{link.title}
								</h3>
								<p class="text-sm text-gray-500 group-hover:text-gray-600 transition-colors">
									{link.description}
								</p>
							</div>
							<div class="text-gray-400 group-hover:text-purple-500 transition-colors">
								<svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
									<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 6H6a2 2 0 00-2 2v10a2 2 0 002 2h10a2 2 0 002-2v-4M14 4h6m0 0v6m0-6L10 14"></path>
								</svg>
							</div>
						</div>
					</div>
				</a>
			{/each}
		</div>

		<!-- Footer -->
		<div class="text-center mt-8 animate-fade-in" class:opacity-100={mounted} class:opacity-0={!mounted} style="animation-delay: 600ms">
			<p class="text-sm text-gray-500">
				Made with ❤️ for animal lovers everywhere
			</p>
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
		animation: fade-in 0.6s ease-out forwards;
	}

	.animate-slide-up {
		animation: slide-up 0.6s ease-out forwards;
	}
</style>
