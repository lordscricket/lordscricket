---
title: Getting starting with this template
description: In this post, we are going to see what to do to get Polyglot Tech Blog starter running with your content
date: 1990-01-01T00:00:00
author: System-generated
tags: 
    - intro
    - dev
    - docs
---

## Add or remove languages 

Removing a language is simply deleting the corresponding directory and updating the `src > _data > data.json` file accordingly. When adding a new language, there are a bit more things to consider, so you can consult [the dedicated article]({{ data.baseUrl }}/{{ lang }}/blog/add-language/).  

## Add static pages

The starter comes with four static page: "{{ home }}", "{{ about }}", "{{ blog }}" and "404". They are written in HTML and can be found in each language directory:  
```plain
src
 ├── (all files in src)
 ├── en
 │   ├── index.html <- the "home" page
 │   ├── about.html
 │   ├── blog.html
 │   └── 404.html
 └── fr
     ├── index.html <- the "home" page
     ├── about.html
     ├── blog.html
     └── 404.html
```
You may decide to add some static pages. Here as well, there is a [dedicated article]({{ '/blog/add-page' | locale_url | url }}) that covers the topic.

## Add posts

This is probably the most basic thing expected from a blog start. You can do this by following the instructions on the [dedicated article]({{ data.baseUrl }}/{{ lang }}/blog/add-post/)

## Check markup validity

The starter template comes with commands and dependencies to check HTML and CSS validity using [W3C's vnu-jar](https://validator.github.io/validator/). However, vnu-jar checker is written in Java, so you will have to install a Java Runtime Environment to make these commands work. I recommend the free and excellent [Eclipse Temurin](https://adoptium.net/temurin/).  
You can then check the HTML validity with:  
```bash
npm run check:markup:unix # with npm on Linux and unix-like systems
yarn check:markup:unix # with Yarn on Linux and unix-like systems

npm run check:markup:win # with npm on Window systems
yarn check:markup:win # with Yarn on Windows systems
```

You can then check the CSS validity with:  
```bash
npm run check:css:unix # with npm on Linux and unix-like systems
yarn check:css:unix # with Yarn on Linux and unix-like systems

npm run check:css:win # with npm on Window systems
yarn check:css:win # with Yarn on Windows systems
```

## Check site metrics; build; deploy

The number of things you can check to ensure the [accessibility](https://www.w3.org/WAI/) (<abbr title="Accessibility">a11y</abbr>), performance, [Search Engine Optimization](https://en.wikipedia.org/wiki/Search_engine_optimization) (<abbr title="Search Engine Optimization">SEO</abbr>), validity... of a website is unlimited and may require some advanced skills or tools. Some simple and basic checks are covered in the [dedicated article]({{ data.baseUrl }}/{{ lang }}/blog/metrics/)

## Build and deploy

Our blog is ready to be put online. This can be done on multiple ways depending on where your code is and who hosts the blog. This [article]({{ data.baseUrl }}/{{ lang }}/blog/deploy/) covers some common scenarios.
