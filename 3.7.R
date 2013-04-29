ts(1:100, frequency=60)
ts(1:12, frequency=4)
ts(1:12, frequency=12)
ts_data <- ts(1:12, frequency=12)
print(ts_data, calendar=FALSE)
ldeaths
print(ldeaths, calendar=FALSE)
ts.plot(ldeaths)
spectrum(ldeaths)
spec_result <- spectrum(ldeaths)
max_index <- which.max(spec_result$spec)
spec_result$freq[max_index]
