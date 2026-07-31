<table align="center"><tr></tr><tr><td>
  <img src=".assets/icon.svg" align="center" width="98">
</td></tr></table>

<h1 align="center">NODEJS</h1>

<table>
  <tbody><tr><td align="center" width="99999"><div>
    <a href="https://nodejs.org/">WEBSITE</a>
  </div></td></tr></tbody>
  <tbody><tr><td align="center" width="99999">&nbsp;<div>
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut semper turpis ipsum, at vulputate lacus congue pulvinar. In et convallis nunc, eget tempor orci. Nullam et viverra eros. In scelerisque aenean.
  </div>&nbsp;</td></tr></tbody>
</table>

## LEARNING

### INSTALL LATEST PNPM WITH COREPACK

```sh
corepack enable
corepack install -g pnpm@latest
```

### CREATE COMMITLINT CONFIG PACKAGE

```sh
# Create directory
mkdir template && cd template
git init && pnpm init

# Update package.json
cat >"package.json" <<'EOF'
{
  "name": "@username/commitlint-config-template",
  "version": "0.0.1",
  "main": "dist/index.js",
  "types": "dist/index.d.ts",
  "files": ["dist"],
  "scripts": {
    "build": "tsup src/index.ts --dts",
    "prepublishOnly": "pnpm build"
  }
}
EOF

# Handle dependencies
pnpm add -D tsup typescript
pnpm add -D @commitlint/config-conventional @commitlint/types

# Create structure
mkdir src
touch src/index.ts commitlint.config.ts tsconfig.json

# Create tsconfig
cat >"tsconfig.json" <<'EOF'
{
  "compilerOptions": {
    "target": "ES2024",
    "module": "NodeNext",
    "moduleResolution": "NodeNext",
    "declaration": true,
    "outDir": "dist",
    "rootDir": "src",
    "strict": true,
    "esModuleInterop": true,
    "skipLibCheck": true,
    "verbatimModuleSyntax": true
  },
  "include": ["src", "commitlint.config.ts"]
}
EOF

# Create commitlint.config.ts
cat >"commitlint.config.ts" <<'EOF'
import type { UserConfig } from "@commitlint/types";

const config: UserConfig = {
  extends: ["@commitlint/config-conventional"],
  rules: {
    "template/verb-subject": [2, "always"],
  },
  plugins: [
    {
      rules: {
        "template/verb-subject": async (parsed) => {
          const payload = parsed.subject?.split(" ")?.[0];
          if (!payload) return [true, ""];
          const address = `https://api.datamuse.com/words?sp=${payload}&md=p&max=1`;
          const content = await fetch(address).then((r) => r.json());
          const correct = content?.[0]?.tags?.includes("v") ?? false;
          return [correct, "Subject must start with a verb"];
        },
      },
    },
  ]
};

export default config;
EOF

# Create index.ts
cat >"src/index.ts" <<'EOF'
export { default } from "../commitlint.config";
EOF

# Create workflow
mkdir -p ".github/workflows"
cat >".github/workflows/cd-create-release.yml" <<'EOF'
name: "📘 : Create Release"
on:
  push:
    branches: [main]
jobs:
  publish:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: pnpm/action-setup@v4
      - uses: actions/setup-node@v4
      - run: pnpm install
      - run: pnpm build
      - run: pnpm publish --access public
        env:
          NODE_AUTH_TOKEN: ${{ secrets.NPM_TOKEN }}
EOF
```