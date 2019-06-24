## Verbs

- `d` : Delete
- `c` : Change
- `y` : Yank (copy)
- `v` : Visually Select (`V` for line, vs. character)

## Modifiers

- `i` : Inside
- `a` : Around
- `[NUMBER]` : Number (1, 2, 10, 1233212321)
- `t` : Searches for something and stops before it
- `f` : Searches for that thing and lands on it
- `/` : Find a string (literal or regex)

## Nouns

- `w` : Word
- `s` : Sentence
- `)` : Sentence (same as `s`)
- `p` : Paragraph
- `}` : Paragraph (same as `p`)
- `t` : Tag (i.e HTML or XML)
- `b` : Block (think of programming blocks)

You can also use Nouns as a Motion, meaning that you can move around your content using them as the size of your jump.

## Composing the Above

- `d2w` : Delete two words
- `cis` : Change the Inside - Sentence ( Delete the current one and enter insert mode)
- `yip` : Yank Inside the Paragraph (Copy the paragraph you are in)
- `ct<` : Change to Open Bracket ( change all the text from where you are to the next open bracket )


## Handy

- `:w` Write changes to the file
- `:q!` Quit Vim and do not save changes
- `:wq` Write changes to the file and exit vim
- `:saveas ~/some/path/` Save your file to the location specified
- `ZZ` Faster way to do `:wq`