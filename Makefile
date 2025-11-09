.PHONY: build format install lint run run-open

build:
	bun run build

check:
	bun run check

check-watch:
	bun run check --watch

format:
	bun run format

install i:
	bun install

lint:
	bun run lint

run:
	bun run dev

run-open:
	bun run dev -- --open