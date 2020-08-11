# Load required scripts from R folder prior to loading plan
source(here::here("R/packages.R"))

# Load the plan
source(here::here("R/plan.R"))

# Attach blueprints to plan
suppressMessages(
the_plan <-
  the_plan %>%
  load_blueprints()
)

drake_config(
  the_plan
)
