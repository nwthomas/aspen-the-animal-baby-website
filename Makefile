.PHONY: build format install lint run run-open

build:
	pnpm build

check:
	pnpm check

check-watch:
	pnpm check --watch

format:
	pnpm format

install i:
	pnpm install

lint:
	pnpm lint

run:
	pnpm dev

run-open:
	pnpm dev -- --open