<table align="center"><tr></tr><tr><td>
  <img src=".assets/icon.svg" align="center" width="98">
</td></tr></table>

<h1 align="center"><samp>NODEJS</samp></h1>

<table><tr><td align="center" width="99999"><p>
  <a href="https://nodejs.org/">WEBSITE</a>
</p></td></tr></table>

<table><tr><td align="center" width="99999">&nbsp;<p>
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut semper turpis ipsum, at vulputate lacus congue pulvinar. In et convallis nunc, eget tempor orci. Nullam et viverra eros. In scelerisque aenean.
</p>&nbsp;</td></tr></table>

### LEARNING

#### Install Latest PNPM with Corepack

```sh
corepack enable
corepack install -g pnpm@latest
```

#### Create Commitlint Config Package

```sh
# Create directory
mkdir template && cd template
git init && pnpm init

# Handle dependencies
pnpm add -D tsup typescript
pnpm add -D @commitlint/config-conventional @commitlint/types

# Create structure
mkdir src
touch src/index.ts commitlint.config.ts tsconfig.json

# Create tsconfig
{
  echo '{'
  echo '  "compilerOptions": {'
  echo '    "target": "ES2020",'
  echo '    "module": "CommonJS",'
  echo '    "declaration": true,'
  echo '    "outDir": "dist",'
  echo '    "strict": true,'
  echo '    "esModuleInterop": true,'
  echo '    "skipLibCheck": true'
  echo '  },'
  echo '  "include": ["src", "commitlint.config.ts"]'
  echo '}'
} >"tsconfig.json"

# Create commitlint.config.ts
{
  echo 'import type { UserConfig } from "@commitlint/types";'
  echo ''
  echo 'const config: UserConfig = {'
  echo '  extends: ["@commitlint/config-conventional"],'
  echo '  rules: {'
  echo '    "template/verb-subject": [2, "always"],'
  echo '  },'
  echo '  plugins: ['
  echo '    {'
  echo '      rules: {'
  echo '        "template/verb-subject": async (parsed) => {'
  echo '          const payload = parsed.subject?.split(" ")?.[0];'
  echo '          if (!payload) return [true, ""];'
  echo '          const address = `https://api.datamuse.com/words?sp=${payload}&md=p&max=1`;'
  echo '          const content = await fetch(address).then((r) => r.json());'
  echo '          const correct = content?.[0]?.tags?.includes("v") ?? false;'
  echo '          return [correct, "Subject must start with a verb"];'
  echo '        },'
  echo '      },'
  echo '    },'
  echo '  ]'
  echo '};'
  echo ''
  echo 'export default config;'
} >"commitlint.config.ts"

# Create index.ts
echo 'export { default } from "../commitlint.config";' >"src/index.ts"

# Update package.json
{
  echo '{'
  echo '  "name": "@username/commitlint-config-template",'
  echo '  "version": "0.0.1",'
  echo '  "main": "dist/index.js",'
  echo '  "types": "dist/index.d.ts",'
  echo '  "files": ["dist"],'
  echo '  "scripts": {'
  echo '    "build": "tsup src/index.ts --dts",'
  echo '    "prepublishOnly": "pnpm build"'
  echo '  }'
  echo '}'
}>"package.json"

# Create workflow
mkdir -p ".github/workflows" && {
  echo 'name: "CD: Create Release"'
  echo ''
  echo 'on:'
  echo '  push:'
  echo '    branches: [main]'
  echo ''
  echo 'jobs:'
  echo '  publish:'
  echo '    runs-on: ubuntu-latest'
  echo '    steps:'
  echo '      - uses: actions/checkout@v4'
  echo '      - uses: pnpm/action-setup@v4'
  echo '      - uses: actions/setup-node@v4'
  echo '      - run: pnpm install'
  echo '      - run: pnpm build'
  echo '      - run: pnpm publish --access public'
  echo '        env:'
  echo '          NODE_AUTH_TOKEN: ${{ secrets.NPM_TOKEN }}'
} >".github/workflows/cd-create-release.yml"
```