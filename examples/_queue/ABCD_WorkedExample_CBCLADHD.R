
#ABCD worked example when the outcome variable is highly skewed.
#CBCL ADHD summary score was the outcome of interest. This variable is both 
#overdispersed and zero-inflated. 

#overdispersment and zero-inflation can be verified using packages like the 
#DHARMa package in R.

#glmmTMB was used to model CBCL ADHD. Alternative packages that can also be 
#used include the brms and glmmAdapative package.

#examples include a fixed effect for interview age and sex (reference = female). 
#interview age was scaled to improve model run time. 

#a random intercept was included for the family structure. A random intercept
#was not included for study site after review of the intraclass correlation 
#coefficient. 

#a random slope was included for the study visit. A fixed effect was also 
#included for study visit. 

#zero inflated models included the same covariates.

#parallel processing was used to speed up the model run time. 

#comparison of different distributions is not included here.

#dataset annual_ABCD includes only participants that completed all five
#annual visits included in this example.

library(glmmTMB)

#Generalized Poisson Model
model_GenPois <- glmmTMB(CBCL_ADHD ~ 1 +  interview_age_scaled+ sex+ 
                                 factor(visit)+(1+visit| rel_family_id.bl), 
                               family=genpois(link="log"), data=annual_ABCD, 
                               REML=FALSE, control = glmmTMBControl(parallel = 16))
summary(model_GenPois)

# AIC      BIC   logLik deviance df.resid 
# 79022.9  79111.3 -39500.5  79000.9    22686 
# 
# Random effects:
#   
# Conditional model:
# Groups           Name        Variance Std.Dev. Corr 
# rel_family_id.bl (Intercept) 1.131451 1.06370       
# visit       0.003188 0.05646  0.52 
# Number of obs: 22697, groups:  rel_family_id.bl, 3839
# 
# Dispersion parameter for genpois family (): 1.35 
# 
# Conditional model:
#   Estimate Std. Error z value Pr(>|z|)    
# (Intercept)           0.17217    0.04665   3.691 0.000223 ***
#   interview_age_scaled -0.03025    0.02763  -1.095 0.273508    
# sexMale or other      0.44528    0.02899  15.360  < 2e-16 ***
#   factor(visit)2       -0.05625    0.02392  -2.352 0.018685 *  
#   factor(visit)3       -0.13310    0.03928  -3.388 0.000703 ***
#   factor(visit)4       -0.12992    0.05528  -2.350 0.018767 *  
#   factor(visit)5       -0.26450    0.07611  -3.475 0.000510 ***
#   ---
#   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

confint(model_GenPois)
#                                           2.5 %       97.5 %    Estimate
# (Intercept)                             0.08074753  0.263595111  0.17217132
# interview_age_scaled                   -0.08439481  0.023894316 -0.03025025
# sexMale or other                        0.38845944  0.502097890  0.44527867
# factor(visit)2                         -0.10312356 -0.009370729 -0.05624714
# factor(visit)3                         -0.21009339 -0.056107249 -0.13310032
# factor(visit)4                         -0.23827997 -0.021569977 -0.12992498
# factor(visit)5                         -0.41366540 -0.115334243 -0.26449982
# Std.Dev.(Intercept)|rel_family_id.bl    1.01893360  1.110426218  1.06369666
# Std.Dev.visit|rel_family_id.bl          0.04007919  0.079544844  0.05646320
# Cor.visit.(Intercept)|rel_family_id.bl  0.12468497  0.735743276  0.51826929

#Interpretation:In the model without the ZI term, a 1-SD increase in interview 
# age was associated with a -0.03 (95% CI: -0.08, 0.024, p-value=0.27) decrease 
# in CBCL ADHD score. This was non-significant. Being male (reference=female) was 
# associated with a 0.445-point increase in CBCL ADHD score (95% CI: 0.39, 0.5, 
#p-value <0.0001). 
###################################

#Truncated Generalized Poisson Model

system.time(Model_ZIGenPois <- glmmTMB(CBCL_ADHD ~ 1 +  interview_age_scaled+ sex+ 
                                 factor(visit)+(1+visit| rel_family_id.bl), 
                               family=truncated_genpois(link="log"), 
                               ziformula=~1+interview_age_scaled+sex+
                                 factor(visit)+(1+visit| rel_family_id.bl), 
                               data=annual_ABCD, REML=FALSE, 
                               control = glmmTMBControl(parallel = 16)))
summary(Model_ZIGenPois)
# 
# AIC      BIC   logLik deviance df.resid 
# 79625.2  79793.8 -39791.6  79583.2    22676 
# 
# Random effects:
#   
#   Conditional model:
#   Groups           Name        Variance Std.Dev. Corr  
# rel_family_id.bl (Intercept) 0.527960 0.72661        
# visit       0.006645 0.08152  -0.13 
# Number of obs: 22697, groups:  rel_family_id.bl, 3839
# 
# Zero-inflation model:
#   Groups           Name        Variance Std.Dev. Corr  
# rel_family_id.bl (Intercept) 5.4876   2.3426         
# visit       0.0303   0.1741   -0.19 
# Number of obs: 22697, groups:  rel_family_id.bl, 3839
# 
# Dispersion parameter for truncated_genpois family (): 0.918 
# 
# Conditional model:
#   Estimate Std. Error z value Pr(>|z|)    
# (Intercept)           0.794327   0.038909  20.415  < 2e-16 ***
#   interview_age_scaled -0.001617   0.023456  -0.069 0.945023    
# sexMale or other      0.265877   0.023273  11.424  < 2e-16 ***
#   factor(visit)2       -0.045439   0.020887  -2.175 0.029598 *  
#   factor(visit)3       -0.112715   0.033906  -3.324 0.000886 ***
#   factor(visit)4       -0.115127   0.047470  -2.425 0.015298 *  
#   factor(visit)5       -0.225027   0.065257  -3.448 0.000564 ***
#   ---
#   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# 
# Zero-inflation model:
#   Estimate Std. Error z value Pr(>|z|)    
# (Intercept)          -0.732068   0.125658  -5.826 5.68e-09 ***
#   interview_age_scaled  0.168785   0.076922   2.194   0.0282 *  
#   sexMale or other     -0.855249   0.075684 -11.300  < 2e-16 ***
#   factor(visit)2        0.058312   0.078384   0.744   0.4569    
# factor(visit)3        0.099109   0.116703   0.849   0.3957    
# factor(visit)4       -0.004995   0.158497  -0.032   0.9749    
# factor(visit)5        0.153363   0.213659   0.718   0.4729    
# ---
#   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

confint(model_GenPois)
#                                                 2.5 %       97.5 %     Estimate
# cond.(Intercept)                             0.71806763  0.870586558  0.794327093
# cond.interview_age_scaled                   -0.04758974  0.044354810 -0.001617467
# cond.sexMale or other                        0.22026337  0.311490861  0.265877117
# cond.factor(visit)2                         -0.08637730 -0.004500448 -0.045438875
# cond.factor(visit)3                         -0.17917018 -0.046259908 -0.112715044
# cond.factor(visit)4                         -0.20816738 -0.022087578 -0.115127478
# cond.factor(visit)5                         -0.35292823 -0.097125540 -0.225026884
# zi.(Intercept)                              -0.97835316 -0.485782066 -0.732067612
# zi.interview_age_scaled                      0.01802060  0.319550245  0.168785425
# zi.sexMale or other                         -1.00358585 -0.706911770 -0.855248812
# zi.factor(visit)2                           -0.09531900  0.211942241  0.058311622
# zi.factor(visit)3                           -0.12962424  0.327842283  0.099109023
# zi.factor(visit)4                           -0.31564372  0.305653414 -0.004995152
# zi.factor(visit)5                           -0.26540081  0.572126628  0.153362908
# cond.Std.Dev.(Intercept)|rel_family_id.bl    0.68920090  0.766046386  0.726608461
# cond.Std.Dev.visit|rel_family_id.bl          0.06931989  0.095858934  0.081516447
# cond.Cor.visit.(Intercept)|rel_family_id.bl -0.26272840  0.018587402 -0.125843307
# zi.Std.Dev.(Intercept)|rel_family_id.bl      2.12346014  2.584294792  2.342572725
# zi.Std.Dev.visit|rel_family_id.bl            0.11122580  0.272458002  0.174081472
# zi.Cor.visit.(Intercept)|rel_family_id.bl   -0.50192209  0.192978655 -0.188385330

# Interpretation: In the model with the ZI term: In those with a CBCL ADHD score 
# > 0, a 1-SD increase in interview age was associated with -0.002-point decrease 
# in CBCL ADHD score (95% -0.05, 0.044, p value = 0.94). In those with a CBCL ADHD 
# score > 0, being male was associated with a 0.27-point increase in CBCL ADHD score 
# (95% CI: 0.22, 0.31, p-value < 0.0001). 
# 
# In the model with the ZI term: In those with a CBCL ADHD score = 0, a 1-SD 
# increase in interview age was associated with 0.17-point increase in 
# CBCL ADHD score (95% 0.018, 0.32, p value = 0.0282). In those with a CBCL 
# ADHD score = 0, being male was associated with a -0.86-point decrease in 
# CBCL ADHD score (95% CI: -1.00, -0.71, p-value < 0.0001). 



