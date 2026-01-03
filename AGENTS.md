# AGENTS.md

This file provides guidance to codimg agents when working with code in this repository.

## Project Overview

This is a SvelteKit-based link-in-bio website for Aspen the Animal Baby, a dog social media account. It's a lightweight alternative to paid services like Linktree, featuring social media links and Amazon affiliate product links.

## Tech Stack

- **Framework**: SvelteKit 2.x with Svelte 5.0
- **Styling**: Tailwind CSS v4 with custom theme variables
- **Build Tool**: Vite
- **Deployment**: Vercel (via @sveltejs/adapter-vercel)
- **Package Manager**: pnpm
- **Internationalization**: Paraglide JS (configured but minimal use)
- **TypeScript**: Type checking with svelte-check

## Common Development Commands

Use the Makefile for all common operations:

```bash
# Install dependencies
make install  # or make i

# Run development server
make run  # alias for pnpm dev

# Run development server and open browser
make run-open

# Build for production
make build

# Format code with Prettier
make format

# Lint with ESLint and Prettier
make lint

# Type check
make check

# Type check in watch mode
make check-watch
```

## Architecture

### File Structure

```
src/
├── routes/
│   ├── +page.svelte       # Main landing page with all content
│   └── +layout.svelte     # Root layout (imports CSS, favicon, QR code)
├── lib/
│   ├── components/
│   │   └── QRCode.svelte  # QR code component
│   ├── assets/            # Images (favicon, profile picture, QR code)
│   ├── fonts/             # Custom font: Special Gothic Expanded
│   └── paraglide/         # i18n generated files
├── app.css                # Global styles with Tailwind and theme
└── app.html               # HTML template
```

### Design System

The site uses CSS custom properties defined in `src/app.css`:

- `--color-text-primary`: #2d6eee (blue for headings/borders)
- `--color-text-secondary`: #333333 (dark gray for body text)
- `--color-background-primary`: #e0e0e0 (light gray for page background)
- `--color-background-secondary`: #f8f8f8 (off-white for card background)

Custom font "Special Gothic Expanded" is loaded via @font-face and applied globally.

### Key Implementation Details

**Main Page (`+page.svelte`):**

- All content is defined in TypeScript arrays at the top of the script section
- `socialLinks`: Array of social media links with icons (Instagram, TikTok, Email)
- `affiliateLinks`: Array of Amazon affiliate product links
- `profile`: Object containing meta tags and display content
- SVG icons are inlined directly in the template
- Copy-to-clipboard functionality with temporary tooltip

**Layout (`+layout.svelte`):**

- Imports global CSS
- Sets favicon
- Renders QR code component via slot
- Minimal wrapper for page content

**Styling Approach:**

- Tailwind CSS v4 with custom theme configuration
- Mobile-first responsive design with `md:` breakpoint at 580px
- Card-based layout that's full-width on mobile, centered with max-width on desktop
- Hover states use `hover:opacity-70` for interactive elements

### SvelteKit Configuration

**Adapter**: Vercel adapter for serverless deployment

**Alias**: `lib` → `src/lib` (use `$lib` imports)

**Vite Plugins**:

- SvelteKit
- Tailwind CSS
- Paraglide (i18n, outputs to `src/lib/paraglide`)
- devtools-json

### Linting & Formatting

**ESLint** is configured with:

- TypeScript ESLint recommended rules
- Svelte plugin with recommended rules
- Prettier integration
- `no-undef` rule disabled (TypeScript handles this)

**Prettier** formats all files with plugins for:

- Svelte
- Tailwind CSS (class sorting)

## Deployment

The site is configured for Vercel deployment via the Vercel adapter. The build output is optimized for serverless functions.
