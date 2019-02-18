## CSS File Organization

- Uses SMACSS categorization of css rules:

1. BASE - CSS Reset / Normalize + raw HTML element styling
2. LAYOUT - Macro arrangment of webpage. including grid systems.
3. COMPONENT - discrete, reusable UI elements, like buttons.
4. STATE - styles that deal with client-side changes to componets.
5. THEME - purely visual styling ("look and feel") for a component.

## MODULES

All a module's css files should be placed in the `css/` folder of the module and broken into one or more of the following files: 

- `module_name.module.css` - minimal styles needed to get the module's functionality working. Includes Layout, Component and State styles.
- `module_name.theme.css` - Holds extra styles to make things look pleasing. usually theme styles.
- `module_name.admin.css` - minimal styles needed to get Admin view of the module working. includes Layout, Component and State styles. On Admin screens, we can also load the `module_name.module.css` in addition to this file.
- `module_name.admin.theme.css` - this file holds any additional visually pleasing parts to the admin experience. usually just theme styles.

Modules should never have any Base styles. Druapl Core modules do not have any base styles, instead Drupal Core uses the Normalize.css library augmented with `drupal.base.css` library.

If a module attatches a CSS file to a template file, the CSS file should be named the same as the template file. For example: `system-plugin-ui-form.html.twig` CSS file should be named `system-plugin-ui-form.css`

## THEMES

- Always seperate BASE, LAYOUT and COMPONENT styles into their own files, Drupal will aggregate the files into a single one, so there is no performance hit with doing this.
- For complex themes, consider seperating each Component or Component Family in its own file.
- State Rules, including Media Queries should be included in the file of the component that they are concerned with.
- Theme Rules may or may not have their own file(s). Starter Themes are encourage to separate their theme CSS into seperate files. Otherwise include theme rulse with their corresponding component.

Most themes have the following:
```
css:
  base: base.css
  layout: layout.css
  component: components.css
```
Optionally, these can be further broken out:
```
css:
  base: 
    - css/base/normalize.css
    - css/base/elements.css
  layout:
    - css/layout/layout.css
    - css/layout/layout--medium.css
    - css/layout/layout--wide.css
  component:
    - css/components/button.css
    - css/components/dropdown.css
    - css/components/pagination.css
    - css/components/tabs.css
  theme:
    - css/theme--light.css
    - css/theme--dark.css
```

SEE: [CSS file organization (for Drupal 8)](https://www.drupal.org/node/1887922)