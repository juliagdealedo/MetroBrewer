# List of Color Palettes and the order in which they are printed


#' Complete list of palettes.
#'
#' Use \code{names(MetroPalettes)} to return all possible palette names.
#' Use \code{\link{metro.brewer}} to construct palettes.
#'
#' @export
#'
  MetroPalettes <- list(

    Madrid = list (
      c("#35a8e6", "#e50616", "#fad23e", "#ad634c",
        "#7fb830", "#9d9e9b", "#f39308", "#ed5e97",
        "#99257a", "#1169bd", "#155c2b", "#afa619"  ),
      c(1, 2, 3, 4, 5, 6, 7,  8, 9, 10, 11, 12)
    ),

    Barcelona = list (
      c("#E51D27", "#9F3688", "#38A84A", "#FABB00",
        "#0974BD", "#6F7DC1", "#A66114", "#E073A5",
        "#F49834", "#05A0E4", "#B1CC4E", "#B781B6"),
      c(1, 2, 3, 4, 5, 6, 7,  8, 9, 10, 11, 12)
      ),

    Beijing = list(
      c("#c13931", "#146097", "#008e9c", "#a61c80",
        "#d29708", "#fac671", "#009b6b", "#8ec31f",
        "#009bc0", "#ed796a", "#f6e613", "#d5a7a1",
        "#6a357e", "#76a22d", "#00a9a9", "#d6abc1",
        "#e36022", "#dd82b3", "#e40077", "#e36022" ),
      c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
        11, 12, 13, 14, 15, 16, 17, 18, 19, 20)
      ),

    Cairo = list(
      c("#ff2600", "#ffac00", "#00cc00"),
      c(1, 2, 3)
      ),

    Caracas = list(
      c("#d7283d", "#b8d16c", "#235775", "#f4c86b", "#714a88",
        "#fcba43", "#55070c", "#866440", "#2da79c", "#23a7df",
        "#169659", "#892c58", "#0d5e34"),
      c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13)
      ),

    Delhi = list(
      c("#ed3237", "#fff212", "#3e4095",
        "#00a859", "#45274a", "#dc6c7e", "#893487",
        "#96989a", "#f58634", "#73cddd", "#0abcc9"),
      c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11)
      ),

    Hiroshima = list(
      c("#eb5c01", "#e6001b", "#1e4b9f", "#44b245",
        "#fee000", "#015a49", "#e06ea6", "#848068"),
      c(1, 2, 3, 4, 5, 6, 7, 8)
    ),

    HongKong = list(
      c("#53b7e8", "#00ab4e", "#ed1d24", "#007dc5", "#f7943e", "#00888a",
        "#7d499d", "#a3238f", "#923011", "#f173ac", "#bac429"),
      c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11)
    ),

    Istanbul = list(
      c("#e21f1d", "#009a44", "#00a9e2", "#e61b75",
        "#693065", "#cbab78", "#f29ebf", "#3f7abe",
        "#ffd300", "#ad5591"),
      c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    ),

    Istanbul_train = list(
      c("#044c7e", "#91aba0", "#9d562a", "#f07c49",
        "#7b72b3", "#e57b7d"),
      c(1, 2, 3, 4, 5, 6)
    ),

    London = list (
      c("#ae520e", "#ee2622", "#fdd005", "#098137",
        "#f468a1", "#94989a", "#960154", "#231f20",
        "#263d96", "#2d9edf", "#87d6b5" ),
      c(1, 2, 3, 4, 5, 6, 7,  8, 9, 10, 11, 12)
      ),

    Montreal = list (
      c("#009640", "#F07D00", "#fad23e", "#0075BE"),
      c(1, 2, 3, 4)
      ),

    Paris = list(
      c("#F6BF42", "#1E57C1", "#6E6D1F", "#91C7E3",
        "#921F6B", "#ED652B", "#97D97F", "#EF89B3",
        "#97D97F", "#C787BB", "#D2D144", "#D29834",
        "#694A26", "#2E6745", "#97CAE4", "#5B157D" ),
      c(1, 2, 3, 4, 5, 6, 7,  8, 9, 10, 11, 12, 13, 14, 15, 16)
      ),

    Rome = list(
      c("#E27439", "#0570B5", "#008355", "#4F545A"),
      c(1, 2, 3, 4)
      ),

    Sydney = list (
      c("#168388", "#00acc2", "#603913", "#262262", "#9e1f63"),
      c(1, 2, 3, 4, 5)
      ),

    Sydney_train = list(
      c("#f28f20", "#0198ce", "#de4926", "#005ba5",
        "#c2268d", "#456cab", "#6f818e", "#01954b",
        "#d22030"),
      c(1, 2, 3, 4, 5, 6, 7,  8, 9)
      ),

    Vienna = list (
      c("#e20a16", "#a762a3", "#ee7d00", "#009540", "#9d6930", "#fd91b5"),
      c(1, 2, 3, 4, 5)
      )
)



# Function for generating palettes

#' Metro Palette Generator
#'
#' Color palettes inspired by subway and train maps. Complete palette colors and
#' the maps that inspired them can be found \href{https://github.com/juliagdealedo/MetroBrewer}{on Github}.
#'
#' @param palette_name Name of Palette. Choices are:
#' @param n Number of desired colors. If number of requested colors is beyond the scope of the palette,
#' colors are automatically interpolated. If n is not provided, the length of the palette is used.
#' @param direction Sets order of colors. Default palette is 1. If direction is -1, palette color order is reversed
#' @param override_order Colors are picked from palette to maximize readability and aesthetics. This means
#' that colors are not always selected in sequential order from the full palette. If override_order is set to TRUE,
#' colors are selected in sequential order from the full palette instead. Default is FALSE.
#' @param return_hex Default is FALSE. If TRUE, hex codes of colors will be returned in addition to the palette.
#' @return A vector of colors.
#' @examples
#' metro.brewer("Madrid")
#'
#' metro.brewer("London", direction=-1)
#'
#' metro.brewer("Sydney", 4, override_order=TRUE)
#'
#'
#' @keywords colors
#' @export
metro.brewer <- function(palette_name, n, direction = c(1, -1), override_order=FALSE, return_hex=FALSE) {

  `%notin%` <- Negate(`%in%`)

  palette <- MetroPalettes[[palette_name]]

  if (is.null(palette)|is.numeric(palette_name)){
    stop("Palette does not exist.")
  }

  if (missing(n)) {
    n <- length(palette[[1]])
  }

  if (missing(direction)) {
    direction <- 1
  }

  if (direction %notin% c(1, -1)){
    stop("Direction not valid. Please use 1 for standard palette or -1 for reversed palette.")
  }

  # if (missing(type)) {
    # if(n > length(palette[[1]])){type <- "continuous"}
    else{type <- "discrete"}
  # }

  # type <- match.arg(type)


  if ( n > length(palette[[1]])) {
    stop("Number of requested colors greater than what discrete palette can offer, \n use continuous instead.")
  }

  # continuous <-  if(direction==1){grDevices::colorRampPalette(palette[[1]])(n)
  # }else{
  #   grDevices::colorRampPalette(rev(palette[[1]]))(n)}

  discrete <- if(direction==1 & override_order==FALSE){
    palette[[1]][which(palette[[2]] %in% c(1:n)==TRUE)]
  }else if(direction==-1 & override_order==FALSE){
    rev(palette[[1]][which(palette[[2]] %in% c(1:n)==TRUE)])
  } else if(direction==1 & override_order==TRUE){
    palette[[1]][1:n]
  } else{
    rev(palette[[1]])[1:n]
  }

  out <- switch(type,
                continuous = continuous,
                discrete = discrete
  )
  if(return_hex==T){print(out)}
  structure(out, class = "palette", name = palette_name)
}


# Function for printing palette

#' @importFrom grDevices rgb
#' @importFrom graphics rect par image text
#' @export

print.palette <- function(x, ...) {
  n <- length(x)
  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))

  image(1:n, 1, as.matrix(1:n), col = x,
        ylab = "", xaxt = "n", yaxt = "n", bty = "n")

  rect(0, 0.92, n + 1, 1.08, col = rgb(1, 1, 1, 0.8), border = NA)
  text((n + 1) / 2, 1, labels = attr(x, "name"), cex = 4, family = "mono")
}








