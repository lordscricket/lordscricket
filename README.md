[![View a demo of the 11ty starter: GitLab Pages](https://img.shields.io/static/v1?label=View+on+GitLab+Pages&message=florent_tassy.gitlab.io/polyglot-tech-blog&color=informational&style=flat-square)](https://florent_tassy.gitlab.io/polyglot-tech-blog) [![View on Netlify](https://img.shields.io/static/v1?label=View+on+Netlify&message=https://polyglot-tech-blog.netlify.app&color=informational&style=flat-square)](https://polyglot-tech-blog.netlify.app) [![View on GitHub Pages](https://img.shields.io/static/v1?label=View+on+GitHub+Pages&message=https://ftassy.github.io/Polyglot-Tech-Blog&color=informational&style=flat-square)](https://ftassy.github.io/Polyglot-Tech-Blog)

# Lords Cricket Website (Powered by Eleventy, **[11ty.dev](https://11ty.dev)** and *Polyglot Tech Blog* Starter
* For complaints & bad suggestions - contact Andrew
* For really obvious issues like typos or half the page being green - keep it to yourself (I probably know already)
* For obscure issues contact Joshua M at lordscricket (at) yourgod.info ([yourgod.info](yourgod.info) is my domain)
  - e.g. "On this page the fonts are weird"; or "The header is a different size"
  - OR e.g. dead links; 404 errors; the page being french

# Currently featuring:
* Working stats links to Pete's stats engine
* Working game and season history with web design (in progress)
* Blog that can be easily added to
* Annals (stats); and write-ups (in progress)

## KNOWN ISSUES / To do:
* Improve boring fonts
* Fix fonts on Stats page (i.e. the header)

## TODO (Technical)
* Restructure files so that posts == Match Reports; stats==Stats (not About); Matches == blog; fix /andrew
* Fix redirect
* Fix themes to be dynamic, removing static html code
* Improve deployment (deployment bash script?)
* Update credits/acknowledgements

# About / Credits (forked from [Polyglot-Tech-Blog](https://florent_tassy.gitlab.io/polyglot-tech-blog))
About Polyglot Tech Blog: An 11ty starter project for multilingual personal pages and blogs:
* Supports [SASS](https://sass-lang.com)
* Includes [Chota micro CSS framework](https://jenil.github.io/chota)
* Multilingual, including RSS feeds (that's why it's called "polyglot" 😉)
* Light and dark modes, with default to user's preferred scheme

# Usage and Deployment
0. If not already done, install [Node.js](https://nodejs.org/en/download)
1. Clone the [repository](https://gitlab.com/florent_tassy/polyglot-tech-blog) with `git clone https://gitlab.com/florent_tassy/polyglot-tech-blog.git` or [download](https://gitlab.com/florent_tassy/polyglot-tech-blog/-/archive/main/polyglot-tech-blog-main.zip) and unzip the repository content
2. Install dependencies: `npm ci`
3. Start development server: `npm run dev`
4. Visit http://localhost:8080 to see your work-in-progress
5. Do your things and see your changes instantly!
6. When your project is ready, deploy easily on GitHub Pages, GitLab Pages, Netlify or manually.
## Deploy manually

In order to have correct hyperlinks, you need to know the URL the website will be deployed to. Create a file named `prod.js` at the blog root and provide the base URL of your website and the directory in which it is deployed if any. For example, if the URL will be https://example.com/subpath, the file should contain:  

```js
module.exports = { 
    baseUrl: "https://example.com/subpath", // Notice that there is no trailing "/"
    pathPrefix: "subpath" 
};
```

If there is no subpath, leave the value empty: `pathPrefix: ""`. If there is a subpath, you can also delete the `robots.txt` file as it will not be reachable.  

We can now build the blog i.e. process all files in the `src` directory and generate the HTML, JavaScript, CSS and other static files that will be pushed to the server. I recommend following the steps below:
1. Stop the dev server if it is running
2. Empty the `public` directory
```bash
npm run clean # with npm
yarn clean # with Yarn
```
3. Build the deployment-ready blog
```bash
npm run manual:build # with npm
yarn manual:build # with Yarn
```

You can then copy the content of the `public` directory on the server.
## Credits

Beside the above-mentioned dependencies, this project uses:
* A code base derived from [Nikita Zanella's 11ty-SASS](https://github.com/NikitaZanella/11ty-SASS) starter
* Icons from [https://jam-icons.com/](https://jam-icons.com/) and [https://simpleicons.org/](https://simpleicons.org/) found on [icongram](https://icongr.am/)
* A logo derived from [inipagi](http://inipagi.com/)'s one and found on [Icon finder](https://www.iconfinder.com/icons/2620514/employee_job_laptop_seeker_unemployee_work_icon)
* A profile picture derived from [Open Clipart](https://openclipart.org/detail/236739/friendly-kitten-icon)
