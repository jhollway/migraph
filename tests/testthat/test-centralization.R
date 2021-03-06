test_that("two mode degree centralisation calculated correctly", {
  expect_equal(round(graph_degree(southern_women, normalized = FALSE)$nodes1,4), 0.1813)
  expect_equal(round(graph_degree(southern_women, normalized = FALSE)$nodes2,4), 0.5097)
  expect_equal(round(graph_degree(southern_women, directed = "in")$nodes1,4), 0.2308)
  expect_equal(round(graph_degree(southern_women, directed = "in")$nodes2,4), 0.4661)
  expect_equal(round(graph_degree(southern_women, normalized = TRUE)$nodes1,4), 0.2268)
  expect_equal(round(graph_degree(southern_women, normalized = TRUE)$nodes2,4), 0.4744)
})

test_that("two mode closeness centralisation calculated correctly", {
  expect_equal(round(graph_closeness(southern_women, normalized = TRUE)$nodes1,4), 0.2843)
  expect_equal(round(graph_closeness(southern_women, normalized = TRUE)$nodes2,4), 0.4418)
  expect_equal(round(graph_closeness(southern_women, directed = "in")$nodes1,4), 0.2135)
  expect_equal(round(graph_closeness(southern_women, directed = "in")$nodes2,4), 0.5285)
  expect_equal(round(graph_closeness(mpn_elite_usa_advice, normalized = TRUE)$nodes1,4), 0.2026)
  expect_equal(round(graph_closeness(mpn_elite_usa_advice, normalized = TRUE)$nodes2,4), 0.3609)
  expect_equal(round(graph_closeness(mpn_elite_usa_advice, directed = "in")$nodes1,4), 0.1561)
  expect_equal(round(graph_closeness(mpn_elite_usa_advice, directed = "in")$nodes2,4), 0.4183)
})

test_that("two mode betweenness centralisation calculated correctly", {
  expect_equal(round(graph_betweenness(southern_women, normalized = FALSE)$nodes1,4), 0.0580)
  expect_equal(round(graph_betweenness(southern_women, normalized = FALSE)$nodes2,4), 0.2073)
  expect_equal(round(graph_betweenness(southern_women, directed = "in")$nodes1,4), 0.0668)
  expect_equal(round(graph_betweenness(southern_women, directed = "in")$nodes2,4), 0.1982)
  expect_equal(round(graph_betweenness(southern_women, normalized = TRUE)$nodes1,4), 0.0586)
  expect_equal(round(graph_betweenness(southern_women, normalized = TRUE)$nodes2,3), 0.207)
  expect_equal(round(graph_betweenness(mpn_elite_usa_advice, normalized = FALSE)$nodes1,4), 0.1624)
  expect_equal(round(graph_betweenness(mpn_elite_usa_advice, normalized = FALSE)$nodes2,4), 0.4020)
  expect_equal(round(graph_betweenness(mpn_elite_usa_advice, directed = "in")$nodes1,4), 0.1391)
  expect_equal(round(graph_betweenness(mpn_elite_usa_advice, directed = "in")$nodes2,4), 0.4147)
  expect_equal(round(graph_betweenness(mpn_elite_usa_advice, normalized = TRUE)$nodes1,4), 0.1624)
  expect_equal(round(graph_betweenness(mpn_elite_usa_advice, normalized = TRUE)$nodes2,3), 0.0000)
})

test_that("one-mode centralisation is calculated correctly", {
  expect_equal(graph_degree(mpn_elite_mex), 0.44)
  expect_equal(round(graph_closeness(mpn_elite_mex), 3), 0.42)
  expect_equal(round(graph_betweenness(mpn_elite_mex), 3), 0.218)
})
