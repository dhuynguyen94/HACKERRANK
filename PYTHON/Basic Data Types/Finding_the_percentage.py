'''
   Name of problem: Finding the percentage
   Link of Problem: https://www.hackerrank.com/challenges/finding-the-percentage/problem?isFullScreen=true
'''
if __name__ == '__main__':
    n = int(input())
    student_marks = {}
    for _ in range(n):
        name, *line = input().split()
        scores = list(map(float, line))
        student_marks[name] = scores
    query_name = input()
    sum_for_score = 0
    for i in range(len(student_marks[query_name])):
        sum_for_score += student_marks[query_name][i]
    ans = 0
    ans = sum_for_score/len(student_marks[query_name])
    print('{0:.2f}'.format(ans))  