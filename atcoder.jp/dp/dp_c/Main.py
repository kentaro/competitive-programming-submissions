from sys import stdin

n = int(stdin.readline().rstrip())
ary = []
for _ in range(n):
  ary.append([ int(i) for i in stdin.readline().rstrip().split(" ")])

def the_algorithm(n, ary):
    dp = [ary[0]]
    for _ in range(n - 1):
        dp.append([0, 0, 0])

    for i in range(1, n):
        dp[i][0] = max(dp[i-1][1] + ary[i][0], dp[i-1][2] + ary[i][0])
        dp[i][1] = max(dp[i-1][0] + ary[i][1], dp[i-1][2] + ary[i][1])
        dp[i][2] = max(dp[i-1][0] + ary[i][2], dp[i-1][1] + ary[i][2])

    return max(dp[n-1][0], dp[n-1][1], dp[n-1][2])
  
print(the_algorithm(n, ary))