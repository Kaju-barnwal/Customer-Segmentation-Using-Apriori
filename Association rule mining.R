#library required packages
installed.packages(c("arules","arulesViz","RColorBrewer"))
library(arules)
library(arulesViz)
library(RColorBrewer)

a=data("Groceries")
class(Groceries)
head(Groceries,3)
summary(Groceries)
#inspect(Groceries)
inspect(head(Groceries,3))
# F_I = Frequent items
F_I=eclat(Groceries,parameter = list(supp=0.01,maxlen=10))
inspect(head(F_I,10))

itemFrequencyPlot(Groceries,topN = 20, type = "absolute", col = "steelblue", main = "Top 10 Items")

arules::itemFrequencyPlot(Groceries,topN=20,main='Item Frequency',
                          ylab="Item Frequency(Relative)",type='relative')


rules=apriori(Groceries,parameter = list(supp=0.002,conf=0.5))
summary(rules)
inspect(rules[1:20])

# Only keep rules where LHS has exact no. of item
rules_single <- rules[size(lhs(rules)) == 1]
inspect(rules_single)

rules_two <- rules[size(lhs(rules)) == 2]
inspect(rules_two[1:10])

cat("Number of rules generated:", length(rules), "\n")



# support = P(LHS ∩ RHS) = fraction of all baskets containing both sides.
# confidence = P(RHS | LHS) = support(LHS ∩ RHS) / support(LHS).
# coverage = support(LHS) = fraction of baskets that contain the LHS.
# lift = confidence / support(RHS) = support(LHS ∩ RHS) / (support(LHS) × support(RHS)).


inspect(rules[1:min(10, length(rules))])
top_lift_rules <- sort(rules, by = "lift", decreasing = TRUE)
inspect(top_lift_rules[1:min(10, length(top_lift_rules))])


top_confidence_rules <- sort(rules, by = "confidence", decreasing = TRUE)
inspect(top_confidence_rules[1:min(10, length(top_confidence_rules))])

top_support_rules <- sort(rules, by = "support", decreasing = TRUE)
inspect(top_support_rules[1:min(10, length(top_support_rules))])

rule_s<- sort(rules)

plot(rule_s[1:10], method="graph", control=list(layout="circle"),shading = "lift", col = c("skyblue", "orange", "lightgreen"))  # circular layout


plot(rules, method = "scatterplot", measure = c("support", "confidence"), shading = "lift", main = "Scatter Plot of Association Rules")


