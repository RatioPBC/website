# Ratio PBC website - ng

## Getting Started

You need to have [mise](https://mise.jdx.dev/installing-mise.html) installed.

- macos:
  - `brew install mise`
- linux:
  - deb via [apt](https://mise.jdx.dev/installing-mise.html#apt)
  - `curl https://mise.run | sh`

You'll then want to [set up your shell](https://mise.jdx.dev/installing-mise.html#shells).

```shell
# setup
mix deps.get
mix tailwind.install

# everyday development
mise serve
```

## Draft Posts and WIP Pages

Posts and pages that are not ready for production can be saved to the `_drafts` and `_wip` directories respectively.

These are controlled via application configuration, as seen in `config/dev.exs` and `config/prod.exs`

## Production Builds

To build for production, run the `mix build` alias to build your site and compile any assets (depends on what asset you chose when generating your site).

Running your build with `MIX_ENV=prod` is important so that the live reload JS script is not loaded, and also allows you to configure your app differently in dev vs prod, like showing future posts in dev, but not in prod.

```shell
MIX_ENV=prod mix build
```

---

## GenAI design prompt

Our company name is Ratio PBC. We build and operate software and data applications for public health and human services organizations.

Our colors are:
- Dark Gray: #4B4B4B
- Cream: #F5F3F0
- Platinum: #BFC3CA
- Sunset: #E9A753
- Ink: #4D5F75

Sunset and Ink are our primary colors.

Only generate HTML. Do not use a JavaScript framework. Use Tailwind CSS.
Generate a professional website that includes the following pages:

- index.html
- about.html
- services.html
- contact.html
- blog.html
- post.html

Take inspiration from:
- https://www.navapbc.com/
- https://skylight.digital/
- https://adhoc.team/
