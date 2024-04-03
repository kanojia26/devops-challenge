# DevOps Challenge 

Rules

You can copy, search, google, duckduckgo, stackoverflow, github or otherwise source your answers without losing marks, however

● If you copy something verbatim you must reference it (for example in an inline comment)

● If there are no comments explaining what it does you must add some

● You should strive to test that what you've copied to ensure it works and fulfills the
objective
Generally speaking, there will be marks for just achieving anything at all (unless you copied it without referencing), plus some for each sub-requirement, and then a few for style and explanation. Please don't spend too much time. A couple of hours should suffice - maybe a little more if you have to pick stuff up as you go along.
Challenges 1 to 3 are mandatory - you can skip any of the subsequent questions, but you need to write a short explanation as to why (e.g. I've never used this technology, and it's not on my CV; or I spent too much time on the other questions).
Challenges

1. Docker Whale: Write a Dockerfile to run Energi Node in a container. It should somehow verify the checksum of the downloaded release (there's no need to build the project), run as a normal user, it should run the client, and print its output to the console.
https://wiki.energi.world/en/downloads/core-node
The build should be security conscious, and ideally pass a container image security test such as ECR, or Trivy.
[20 pts]

2. K8S Awesomeness: Write a Kubernetes StatefulSet to run the above, using persistent volume claims and resource limits.
[10 pts]

3. All the continuouses: Write a simple build and deployment pipeline for the above using groovy / Jenkinsfile, Travis CI or Gitlab CI.
[15 pts]

4. Script kiddies: Source or come up with a text manipulation problem and solve it with at least two of awk, sed, tr. and / or grep. Check the question below first though, maybe.
[10 pts]

5. Script grown-ups: Solve the problem in question 4 using any programming language of your choice.
[15 pts]

6. Terraform lovers: write a Terraform module that creates the following resources in IAM:

● A role, with no permissions, which can be assumed by users within the same
account

● A policy, allowing users / entities to assume the above role

● A group, with the above policy attached

● A user, belonging to the above group

● All four entities should have the same name, or be similarly named in some
meaningful way given the context e.g. prod-ci-role, prod-ci-policy, prod-ci-group, prod-ci-user; or just prod-ci. Make the suffixes toggleable, if you wish.
[20 pts]

# Evaluation

Provide a link to an online source code repository such as Github or Gitlab. 10 points are reserved for style, and substance.
Total is 100.
Pass mark is 50.
Good luck!


------------------------------------------------------------------------------------------------------------

# Solution

Follow the Github Action for Testing Question 1,2,3 and 6. 

https://github.com/kanojia26/devops-challenge/actions

https://github.com/kanojia26/devops-challenge/actions/runs/8535821142


Solution: 4

Let's say you have a file named students.txt containing data about students, with each line representing a student's record in the format: Name, Age, Grade. Here's a sample data with 10 lines:
```bash
John, 18, A
Alice, 17, B
Bob, 16, C
Emma, 19, A
Michael, 17, B
Sophia, 18, A
David, 16, C
Olivia, 18, A
William, 17, B
Ella, 16, C
```


## Analysis
You can perform various analyses on this data using text manipulation tools like `awk`, `sed`, `grep`, etc.

For example, you can use `awk` to extract the names of students who are 18 years old:
```bash
awk -F ', ' '$2 == 18 {print $1}' students.txt

```
Output 

```bash
John
Sophia
Olivia
```

Similarly, you can use sed to achieve the same result:

```bash
sed -n '/18,/ s/,.*//p' students.txt

```

## Question 5
I will skip challenges 5. However, if needed, I can explain how I would approach them.
