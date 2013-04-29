library(arules)

data <- list(
    c("JavaScript: The Good Parts", "JavaScript パターン", "jQueryクックブック" ),
    c("CSS完全ガイド第2版", "JavaScript第6版", "jQueryクックブック" ),
    c("ハイパフォーマンスJavaScript", "入門HTML5", "ハイパフォーマンスWebサイト"),
    c("JavaScript: The Good Parts", "CSS完全ガイド第2版" ),
    c("JavaScript: The Good Parts", "ハイパフォーマンスJavaScript", "ハイパフォーマンスWebサイト"),
    c("ハイパフォーマンスJavaScript", "ハイパフォーマンスWebサイト", "続・ハイパフォーマンスWebサイト")
)
data.tran <- as(data, "transactions")
# result.apriori <- apriori(data.tran)
result.apriori <- apriori(data.tran, parameter=list(support=0.2))
inspect(result.apriori)


# JavaScript: The Good Parts
# JavaScript パターン
# jQueryクックブック
# CSS完全ガイド第2版
# JavaScript第6版
# ハイパフォーマンスJavaScript
# 入門HTML5
# ハイパフォーマンスWebサイト
# 続・ハイパフォーマンスWebサイト
