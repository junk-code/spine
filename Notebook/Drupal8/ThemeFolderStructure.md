## Where Theme Files Live.

Core Themes: Come with Drupal.
Contributed Themes: Come from Drupal Theme Market Place
Custom Themes: The themes we write ourselves.

```
core
|- modules
|- themes
|  |- bartik
|  |- seven

modules
themes
|- contrib
|  |- zen
|  |- basic
|  |- bluemarine
|- custom
|  |- fluffiness
```

## Theme Folder Structure for Fluffiness

```
fluffiness
|- fluffiness.breakpoints.yml
|- fluffiness.info.yml
|- fluffiness.libraries.yml
|- fluffiness.theme
|- config
|  |- install
|  |  |- fluffiness.settings.yml
|  |- schema
|  |  |- fluffiness.schema.yml
|- css
|  |- style.css
|- js
|  |- fluffiness.js
|- images
|  |- buttons.png
|- logo.svg
|- screenshot.png
|- templates
|  |- maintenance-page.html.twig
|  |- node.html.twig
```

# Theme Folder Structure for Bartik

```
bartik
|- bartik.breakpoints.yml
|- bartik.info.yml
|- bartik.libraries.yml
|- bartik.theme
|- color
|  |- color.inc
|  |- preview.css
|  |- preview.html
|  |- preview.js
|- config
|  |- schema
|  |  |- bartik.schema.yml
|- css
|  |- colors.css
|  |- layout.css
|  |- maintenance-page.css
|  |- print.css
|- images
|  |- add.png
|  |- required.svg
|  |- tabs-border.png
|- logo.svg
|- screenshot.png
|- templates
|  |- block--search-form-block.html.twig
|  |- block--system-branding-block.html.twig
|  |- block--system-menu-block.html.twig
|  |- block.html.twig
|  |- comment.html.twig
|  |- field--taxonomy-term-reference.html.twig
|  |- maintenance-page.html.twig
|  |- node.html.twig
|  |- page.html.twig
|  |- status-messages.html.twig
```

SEE: [Drupal 8 Theme Folder Structure](https://www.drupal.org/docs/8/theming-drupal-8/drupal-8-theme-folder-structure)