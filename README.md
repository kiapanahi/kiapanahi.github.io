# The Consulting Architect Blog

This repository hosts a Hugo site using the PaperMod theme.

## Local development

Install Hugo Extended (v0.148+ recommended). On Linux:

```bash
# Verify
hugo version

# Run local server
hugo server -e development --disableFastRender
```

The development config lives in `config/development/hugo.yaml`.

## Production build

```bash
hugo --gc --minify --cleanDestinationDir -e production
```

## Upgrades (Hugo and theme)

- Hugo config has been updated for current versions:
  - `mainSections` key in place of `mainsections`.
  - Removed deprecated `pygmentsUseClasses`.
  - `services.x.disableInlineCSS` replaces deprecated `services.twitter.disableInlineCSS`.
  - Google Analytics uses `services.googleAnalytics.ID` (GA4).
  - Added `category: categories` taxonomy.
- Front matter has been standardized to YAML; page-bundle covers use:

```yaml
cover:
  image: header.png
  relative: true
```

### Updating PaperMod

This repo vendors the theme under `themes/PaperMod/`. To update to the latest PaperMod:

```bash
# Option A: Replace vendored theme (manual)
rm -rf themes/PaperMod
git clone https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod

# Option B (recommended): use Hugo Modules
# In the site root:
hugo mod init github.com/kiapanahi/kiapanahi.github.io
hugo mod get github.com/adityatelange/hugo-PaperMod@latest
# Then in config/_default/hugo.yaml add:
# module:
#   imports:
#     - path: github.com/adityatelange/hugo-PaperMod
```

After updating, run a production build and check for warnings.
