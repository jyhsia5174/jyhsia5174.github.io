## [2021 Weekly Challenge !!](https://docs.google.com/spreadsheets/d/1UiioTqCMDjRUGJ8NVoevSkdRdIhtB_1mg_VeIwtZpRg/edit?usp=sharing)

Seek More Challenge Score "The day we stop learning is the day we die" by Michael Scott, The Warlock

[Git Repo](https://github.com/jyhsia5174/jyhsia5174.github.io)

[Codeforces EDU List](https://codeforces.com/blog/entry/74315)

[Algo DashBoard](https://docs.google.com/spreadsheets/d/15wqCg_TNspMuxK2lcMUz89XOeDfa6TESQcPvyJmCrkc/edit#gid=0)

[Gauss Newton](https://jyhsia5174.github.io/gauss-newton.md)

[Calendar](https://calendar.google.com/calendar/u/0/r)

[2021 Reading Challenge](https://www.goodreads.com/user_challenges/26399475)

## Evaluation Result

"Understanding what is true is essential for success, and being radically transparent about everything, including mistakes and weaknesses, helps create the understanding that leads to improvements." by Ray Dalio.

Eval Name | Date | Score | lesson
-----|-----|-----|-----
Google Online Assessment | 2/23 | 6.92/10 | 
Google Online Assessment | 2/22 | 5.23/10 | 1. rewview binary search <br> 2. create better template for equalrange 
Shoppee OJ | 2/20 | 1/2 | Prepare more on parsing for delimits <br> Some problem my forbid using std lib <br> implement priority que fail
Google Online Assessment | 2/19 | 6.26/10 | segmentation tree implementation 
Google On-Site Interview | 2/18 | 4.83/10 | recurssion & dp relation
Google Phone Interview | 1/18 | 4.20/10 | none

## Plan & Note

### Week 8 (3/22)

- Plan

Goal: catch blind spot

Task | Reason | Consequence of no doing | Progress
-----|-----|----- |-----
List all basic data structure & practice it if I am not familiar with it | High-level review my week spot | growing blind spot | 
Redo problem over 100 readiness score. Target number is 45. | Review past failure and overcome it. | Not improving. | 
Mock 5 round | Don't hide from reality | Not improving | 1 / 5

- Reflection

1. review binary search template
2. create code template for equalrange
3. Fenwick tree / seg tree
4. [USACO](https://usaco.guide/)

- Rolling hash

```cpp
typedef long long int lli;
lli m = 10e9+9;
lli p = 31;

lli hash( const string &s ){
    lli res = 0;
    for(int i = 0; i < s; i++){
        res = (res * p + (s[i] - 'a' + 1) ) % m;
    }
    return res;
}
```

### Week 7 (3/15)

- Plan

task | reason | consequence of no doing
-----|-----|-----
Break the bubble (Do 2 sim-interview) | The fear of being wrong should be overcome | Growing Blindspot
Find seg tree & KMP problem | I need to practice for interview | 1. don't get a job
~~Take TA courses~~ | I already commited to CJ that I will take TA position. | 1. piss of CJ <br> leave lab
Compiel Gauss Newton PDF | I feel like I have to complete a thing if it has stared <br> feel guilty about taking money without doing research | 1. piss of CJ <br> leave lab
Suspended |-----|-----
Google Problem (40) | I need to practice for interview | 1. don't get a job

- Reflection

1. Each time think of recursive problem, think of dynamic programming.
2. The burn out principle work! Keep that rule.
3. Code book.


### Week 6 (Spring festival)

- I feel like that I stuck in between 'I should work' & 'I don't feel like to'.
1. Result: read books / youtube / netflix
2. Kind of feel guilty about not working. (Expetation / Reality mismatched )

- Overestimated my ability to overcome the enviroment factor (Comformity)
```
Conformity is the act of matching attitudes, beliefs, and behaviors to group norms, politics or being like-minded. Norms are implicit, specific rules, shared by a group of individuals, that guide their interactions with others.
```

- I do not have a strong why to take spring festival. This may leads to that I don't feel that I 'live' my life.

- Binary Search
```cpp
int left = 0, right = nums.size() - 1;
while(left <= right){
    // Prevent (left + right) overflow
    int mid = left + (right - left) / 2;
    if(nums[mid] == target){ return mid; }
    else if(nums[mid] < target) { left = mid + 1; }
    else { right = mid - 1; }
}
/*
sub     len break?  mid lsub    llen    rsub    rlen
[0,-1]  -1  y
[0,0]   1   n       0   [0,-1]  -1      [1,0]   -1
[0,1]   2   n       0   [0,-1]  -1      [1,1]   1
[0,2]   3   n       1   [0,0]   1       [2,2]   1
[0,3]   4   n       1   [0,0]   1       [2,3]   2
[0,4]   5   n       2   [0,1]   2       [3,4]   2
*/
```

```cpp
int left = 0, right = nums.size();
while(left < right){
    // Prevent (left + right) overflow
    int mid = left + (right - left) / 2;
    if(nums[mid] == target){ return mid; }
    else if(nums[mid] < target) { left = mid + 1; }
    else { right = mid; }
}
/*
sub     len break?  mid lsub    llen    rsub    rlen 
[0,-1)  -1  y
[0,0)   0   y
[0,1)   1   n       0   [0, 0)  0       [1, 1)  0
[0,2)   2   n       1   [0, 1)  1       [2, 2)  0
[0,3)   3   n       1   [0, 1)  1       [2, 3)  1
[0,4)   4   n       2   [0, 2)  2       [3, 4)  1
*/
```

```cpp
int left = 0, right = nums.size() - 1;
while (left + 1 < right){
    // Prevent (left + right) overflow
    int mid = left + (right - left) / 2;
    if (nums[mid] == target) {
        return mid;
    } else if (nums[mid] < target) {
        left = mid;
    } else {
        right = mid;
    }
}
/*
sub     len break   mid lsub    lLen    rsub    rLen
[0,-1]  0   y
[0,0]   1   y
[0,1]   2   y
[0,2]   3   n       1   [0,1]   2       [1,2]   2
[0,3]   4   n       2   [0,2]   3       [2,3]   2
[0,4]   5   n       2   [0,2]   3       [2,4]   4
*/
```

### Week 5

- Algorithm

1. read problem and test cases!! Don't rush to write code.
2. KMP algo.
3. segmentation tree structure
4. reduced segmentation tree structure
5. binary search termitation condition

### Week 4 (Burnout)

- Unsuccessful defense against bunrout:

Consequences:

1. Unproductive at Fri, Sat and Sun.
2. Feel bad about myself.
3. Disrupted life style (poor sleep quality / bing-watch Netflix & Youtube / Insufficient excercise )

Possible sourece:
1. Gauss-Newton EXP
2. Interview meeting with Google HR.
3. Interview bomb from Shoppee.
4. Lab funding plan and reimbursement.
5. Unintended commitment toward software development.
6. Uncatched self-challenged progress.
7. Extensive working on CV, which is deeply related to my self-worth and validation.

Possible solution:

1. Seek out companion to reduce anxiety.
2. Prioritize and Execute. Remake a workable schedule.
3. Meditation and Exercise.

### Week 3

- The relation between level and node of tree:

level 0: 2^(0+1) - 1 = 1

level 1: 2^(1+1) - 1 = 2

...

level k: 2^(k+1) - 1

- Not familiar with recursion struction:

The function may contain (state) and in the function needs a terminatoin criteria.

"Backtracking is a rather typical recursive algorithm, and any recursive algorithm can be rewritten as a stack algorithm." from (https://www.cis.upenn.edu/~matuszek/cit594-2012/Pages/backtracking.html)


- Common prefix of a set of strings : Trie.

- LinkList-hashmap structure:

O(1) query from key

O(1) swap any two element order

O(1) remove head or tail element


- C++ random generator (TODO)


- encode integer to string (TODO) 297	Serialize and Deserialize Binary Tree


