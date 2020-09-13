library(MortalityLaws)
library(jsonlite)


models <- c("gompertz","gompertz0","invgompertz","makeham","makeham0","opperman","thiele","wittstein","perks","weibull","invweibull","vandermaen","vandermaen2","strehler_mildvan","quadratic","beard","beard_makeham","ggompertz","siler","HP","HP2","HP3","HP4","rogersplanck","martinelle","kostaki","carriere1","carriere2","kannisto","kannisto_makeham")

for (m in models) {
  results <- do.call(m,list(x=20:100))
  results$modelname <- m
  results$param_names <- names(results$par)

    # outputs to wherever working directory is
  write(toJSON(results),paste(m,".json"))  
}