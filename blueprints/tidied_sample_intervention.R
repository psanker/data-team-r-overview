blueprint(
  "tidied_sample_intervention",
  description = "Basically the raw sample of intervention data, but with tidied names",
  command =
    raw_sample_intervention %>%

    # Drop the generated row number column
    select(-X1) %>%

    # Make column names snake_case
    janitor::clean_names() %>%

    # Rename `coded_id` to `participant_id` for clarity
    rename(participant_id = coded_id) %>%

    # Make `cohort` an index variable
    mutate(cohort = as.integer(ifelse(cohort == "A", 1, 2))) %>%

    # Make `intervention` and `female` integers
    mutate(
      intervention = as.integer(intervention),
      female = as.integer(intervention)
    ),

  codebook_export = TRUE
)
