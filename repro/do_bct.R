do_bct <- function(
    df,
    fgcol='#f6f5f5',
    bgcol='#1e1a1d',
    lim=150,
    highlight_nodes = c(),
    number_nodes = c(),
    legend_pos =c (0.85, 0.94),
    flip=FALSE
    ) {

    library(dplyr)
    library(ggraph)
    library(tidygraph)
    library(showtext)
    library(ggsci)
    library(stringr)
    library(paletteer)
    font_add_google("Tinos", "fnt")
    # font_add_google("IM Fell DW Pica", "fnt")

    showtext_auto()

    pal <- c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3", "#FF7F00", "grey50", "#A65628")
    # bgcol <- '#1e1a1d'
    # fgcol <- '#f6f5f5'
    # bgcol = '#f4f0e8'
    # fgcol = '#040300'
    # Seed for the layout
    set.seed(42)
    gr1 <- as_tbl_graph(df)
    # Plot
    p <- gr1 %>%
        # Add a node attribute called 'work' which is the poem name with
        # no numbers eg Pont. 3 4 -> Pont.
        activate(nodes) %>%
        mutate(work = str_replace_all(name, "\\s[0-9]+", "")) %>%
        # Layout with Fruchtermann Reingold
        ggraph(layout = "fr") +
        # fan2 does curved lines when nodes are linked in both directions
        # and also lets you interpolate colour along the edge
        geom_edge_fan2(
            aes(
                # Aesthetically filter out noisy minor edges.
                # This magic param is determined by experimentation
                # and depends on the number of samples etc.
                # Slightly hacky, but doesn't affect graph layout,
                # just makes the visualisation cleaner.
                filter = weight >= lim,
                width = weight,
                color = node.work,
                alpha = weight
            ),
            strength = 2,
            show.legend = FALSE
        ) +
        # Normal nodes
        geom_node_point(size = 2.2, aes(color = work), alpha = 1) +
        # Special nodes
        geom_node_point(
            aes(
                filter = work %in% highlight_nodes
            ),
            size = 5,
            shape = 17,
            color = fgcol,
            show.legend = FALSE
        ) +
        geom_node_point(
            aes(
                filter = work %in% highlight_nodes,
                color = work
            ),
            size = 4,
            shape = 17,
            show.legend = FALSE
        ) +
        geom_node_text(
            size = 2,
            family="fnt",
            aes(filter=work %in% number_nodes,label=str_extract(name,'\\d+')),
        ) +

        scale_fill_paletteer_d("ggsci::category20_d3") +
        scale_colour_paletteer_d("ggsci::category20_d3") +
        scale_edge_color_manual(values = pal_d3("category20")(20)) +
        scale_edge_width(range = c(0.2, 4)) +
        scale_edge_alpha(range = c(0.3, 1)) +
        guides(color = guide_legend(ncol = 3, byrow = TRUE, override.aes = aes(size = 4.5))) +

        theme_minimal() +
        theme(
            # plot.title = element_text(margin = margin(b = 50)),
            panel.border = element_blank(),
            panel.background = element_rect(fill = bgcol, color = bgcol),
            plot.background = element_rect(fill = bgcol, color = bgcol),
            legend.title = element_blank(),
            legend.position = legend_pos,
            legend.text = element_text(size = 10, color = fgcol),
            legend.spacing.x = unit(2, "mm"),
            legend.spacing.y = unit(-1.5, "mm"),
            axis.title.x = element_blank(),
            axis.text.x = element_blank(),
            axis.ticks.x = element_blank(),
            axis.title.y = element_blank(),
            axis.text.y = element_blank(),
            axis.ticks.y = element_blank(),
            text = element_text(family = "fnt"),
            panel.grid.minor = element_blank(),
            panel.grid.major = element_blank()
        )
    if(flip) return(p + coord_flip())
    return(p)
}