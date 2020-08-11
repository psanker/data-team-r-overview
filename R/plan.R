the_plan <- drake_plan(
  # ------ 1. Loading ------
  raw_sample_intervention = read_csv(file_in(!!here::here("data/sample_intervention_dataset.csv")))

  # ------ 2. Blueprints ------
  # 1. tidied_sample_intervention: Cleaned up variable names and no factors

)
