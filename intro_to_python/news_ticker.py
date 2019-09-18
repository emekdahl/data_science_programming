# HINT: modify the headlines list to verify your loop works with different inputs
headlines = ["Local Bear Eaten by Man",
             "Legislature Announces New Laws",
             "Peasant Discovers Violence Inherent in System",
             "Cat Rescues Fireman Stuck in Tree",
             "Brave Knight Runs Away",
             "Papperbok Review: Totally Triffic"]

news_ticker = ""
# write your loop here
length = len(news_ticker)
items = []
for headline in headlines:
    print("current length: {}".format(length))
    if length >= 140:
        print("  breaking from the loop now!")
        break
    elif length < 140:
        headline_length = len(headline)
        if length + headline_length > 140:
            index_needed = 140 - length -1
            headline = headline[0:index_needed]
        news_ticker = news_ticker + " " + headline
        length = len(news_ticker)


print(news_ticker)