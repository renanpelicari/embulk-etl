private val header = """
    "date","sku","rating","comment"
""".trimIndent()

private val dates =
    listOf("2019-10-20", "2019-10-21", "2019-10-22", "2019-10-23", "2019-10-24", "2019-10-25")

private val skus =
    listOf("Duffy Lager", "Pawtucket Patriot Ale", "Heisler Gold Ale")

private val rating = listOf(0, 1, 2, 3, 4, 5)

private val commentsForLowRating = listOf(
    "",
    "beer was hot",
    "this beer is crappy",
    "price is too high",
    "didn't like",
    "beer was over"
)

private val commentsForMediumRating = listOf(
    "",
    "not so cold",
    "price is too high",
    "didn't like",
    "beer was over"
)

private val commentsForHighRating = listOf(
    "",
    "good beer",
    "very good",
    "price it's ok",
    "good cost benefit"
)

private fun getLine(): String {
    val date = getRandomDate()
    val sku = getRandomSku()
    val rating = getRandomRating()
    val comment = getRandomComment(rating)

    return """
        "$date","$sku","$rating","$comment"
    """.trimIndent()
}

private fun getRandomDate(): String = dates.random()

private fun getRandomSku(): String = skus.random()

private fun getRandomRating(): Int = rating.random()

private fun getRandomComment(rating: Int): String = when (rating) {
    in 0..1 -> commentsForLowRating.random()
    2 -> commentsForLowRating.plus(commentsForMediumRating).random()
    3 -> commentsForMediumRating.random()
    in 4..5 -> commentsForHighRating.random()
    else -> ""
}

fun main(args: Array<String>) {
  println(header)

  repeat((0..500).count()) {
      println(getLine())
  }
}