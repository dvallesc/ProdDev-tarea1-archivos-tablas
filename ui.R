
library(shiny)

shinyUI(fluidPage(

    titlePanel("Cargar Archivos y Dataframes"),
    tabsetPanel(tabPanel("Cargar Archivo",
                         sidebarLayout(
                             sidebarPanel(
                                 h2("Subir Archivo"),
                                 fileInput("upload_file_1", 
                                           label = "cargar archivo...", 
                                           buttonLabel = "Cargar")
                                 ),
                                mainPanel(
                                    tableOutput("contenido_archivo_1")
                                    )
                             )
                         ),
                tabPanel("Cargar Archivo DT",
                         sidebarLayout(
                             sidebarPanel(
                                 h2("Subir Archivo"),
                                 fileInput("upload_file_2", 
                                           label = "Seleccionar un archivo...", 
                                           buttonLabel = "Cargar")
                             ),
                             mainPanel(
                                 DT::dataTableOutput("contenido_archivo_2")
                             )
                         )
                ),
                tabPanel("DT Option",
                         h2("Formato Columna"),
                         hr(),
                         fluidRow(column(width=12,
                                         DT::dataTableOutput("tabla1")
                                         )
                                  ),
                         h2("Opciones"),
                         hr(),
                         fluidRow(column(width=12,
                                         DT::dataTableOutput("tabla2")
                                         )
                                  ),
                         fluidRow(column(width=12,
                                         DT::dataTableOutput("tabla3")
                                        )
                                )
                         
                         ),
                tabPanel("Clics en tabla",
                         fluidRow(
                             column(width=12,
                                    h2("clic en una fila"),
                                    dataTableOutput("tabla4"),
                                    verbatimTextOutput("tabla_4_single_click")
                                    )
                                ),
                         fluidRow(
                             column(width=12,
                                    h2("clic en varias fila"),
                                    dataTableOutput("tabla5"),
                                    verbatimTextOutput("tabla_5_single_click")
                             )
                         ),
                         
                         fluidRow(
                             column(width=12,
                                    h2("clic en una columna"),
                                    dataTableOutput("tabla6"),
                                    verbatimTextOutput("tabla_6_single_click")
                             )
                         ),
                         
                         fluidRow(
                             column(width=12,
                                    h2("clic en varias columnas"),
                                    dataTableOutput("tabla7"),
                                    verbatimTextOutput("tabla_7_multi_click")
                                 )
                             ),
                         
                         fluidRow(
                             column(width=12,
                                    h2("clic en una celda"),
                                    dataTableOutput("tabla8"),
                                    verbatimTextOutput("tabla_8_single_click")
                             )
                         ),
                         
                         fluidRow(
                             column(width=12,
                                    h2("clic en varias celdas"),
                                    dataTableOutput("tabla9"),
                                    verbatimTextOutput("tabla_9_multi_click")
                                 )
                             )
                     )
)
)
)

