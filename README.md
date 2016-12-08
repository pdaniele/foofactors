
<!-- README.md is generated from README.Rmd. Please edit that file -->
### Installation

``` r
devtools::install_github("pdaniele/foofactors")
```

Based off Jenny Bryan's coding/vignette, additions are my own and all I take credit for.

Factors are a very useful type of variable in R, but they can also drive you nuts. Especially the "stealth factor" that you think of as character.

Can we soften some of their sharp edges?

Binding two factors via `fbind()`:

``` r
library(foofactors)
a <- factor(c("character", "hits", "your", "eyeballs"))
b <- factor(c("but", "integer", "where it", "counts"))
```

Simply catenating two factors leads to a result that most don't expect.

``` r
c(a, b)
#> [1] 1 3 4 2 1 3 4 2
```

The `fbind()` function glues two factors together and returns factor.

``` r
fbind(a, b)
#> [1] character hits      your      eyeballs  but       integer   where it 
#> [8] counts   
#> Levels: but character counts eyeballs hits integer where it your
```

Often we want a table of frequencies for the levels of a factor. The base `table()` function returns an object of class `table`, which can be inconvenient for downstream work. Processing with `as.data.frame()` can be helpful but it's a bit clunky.

``` r
set.seed(1234)
x <- factor(sample(letters[1:5], size = 100, replace = TRUE))
table(x)
#> x
#>  a  b  c  d  e 
#> 25 26 17 17 15
as.data.frame(table(x))
#>   x Freq
#> 1 a   25
#> 2 b   26
#> 3 c   17
#> 4 d   17
#> 5 e   15
```

The `freq_out()` function returns a frequency table as a well-named `tbl_df`:

``` r
freq_out(x)
#> # A tibble: 5 × 2
#>        x     n
#>   <fctr> <int>
#> 1      a    25
#> 2      b    26
#> 3      c    17
#> 4      d    17
#> 5      e    15
```

Previous code is Jenny's. Mine from here on:

Ever want to know if your factors should be character? Then chr\_factor is your best friend! It checks if all of the elements of the vector are unique. Because if they are, you probably just want a character vector.

``` r
  x <- factor(c('Brown', 'Bears', 'Bite', 'Bananas')) ## Should be Character
  y <- factor(c('Apple', 'Orange', 'Apple', 'Orange')) ## Should be Factor
  
  chr_factor(x)
#> [1] TRUE
  chr_factor(y)
#> [1] FALSE
```

Just like that. Easy as pie. This seems silly when you're using such a small set of data, but ramp this up into a dataframe and it could be quite handy.

Sometimes we may want to flip the order of factors, and instead order them in descending order. If this is what you want, I have just the thing to satisfy your every desire (or at least do this one very tiny task).

``` r
x<- factor(c('a','b','c','d','e','f','g'))

levels(reorder_desc(x))
#> [1] "g" "f" "e" "d" "c" "b" "a"
```

Hooray, exactly what we want!

Next, supposed we want to order factors as they appear in the data. Oh my goodness, what an awful task this would be. But not with foofactors. Get your copy for only 3 payments of $99.99...Ok ok. If you want to order data as it appears or "as is" use order\_asis

``` r
#Feed it a vector, and it will spit out the factors with the order you want
order_asis(mtcars$cyl)
#>  [1] 6 6 4 6 8 6 8 4 4 6 6 8 8 8 8 8 8 4 4 4 4 8 8 8 8 4 4 4 8 6 8 4
#> Levels: 6 4 8

#As opposed to this by default
factor(mtcars$cyl)
#>  [1] 6 6 4 6 8 6 8 4 4 6 6 8 8 8 8 8 8 4 4 4 4 8 8 8 8 4 4 4 8 6 8 4
#> Levels: 4 6 8

#Do it descending just for fun
reorder_desc(factor(mtcars$cyl))
#>  [1] 6 6 4 6 8 6 8 4 4 6 6 8 8 8 8 8 8 4 4 4 4 8 8 8 8 4 4 4 8 6 8 4
#> attr(,"scores")
#>  4  6  8 
#> -1 -2 -3 
#> Levels: 8 6 4
```

Finally, one the biggest potential headaches for you are "Stealth Factors". They will sneak into your code and <strong>RUIN YOUR LIFE!</strong> or at least cause a minor annoyance. So I though it prudent to build a function that will inspect your dataframe for factors. Just use the any\_factors function to find any factors in your dataset (ha, get it?).

``` r
any_factors(iris)
#> [1] "Species"
#Bingo. Found that factor.
```
