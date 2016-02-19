# forest_fire

## My Problem
* I have a bunch of local git branches
* Oh no I have to delete them by chaining or one by one!!!

## My solution
* Create a forest_fire() command in my .bashrc (.bash_profile) that can delete these branches easily using regex

## Usage
* Create a .bash_profile or .bashrc if you currently do not have one.
* Copy and paste the text found in this repo's [.bash_profile](https://github.com/teebash/.forest_firerc/blob/master/.bash_profile) into your ~/.bash_profile
* Then run: `$ source .bash_profile`
* This new command can delete any/all branches except the one you're on
* NOTE: You may pass any form of regex in as params or none to remove all
 * EX1: `$ forest_fire [a-z]` this would delete all branches starting with any lowercase letter
 * EX2: `$ forest_fire [0-9]` this would delete all branches starting with any number
 * EX3: `$ forest_fire` this would delete all branches

### Given the following branches exist locally...
```sh
[project (new_feature_2016)]$ git branch
  96665
  966652
  9666527
  96665276
  96665276_o
  96665276_ov
  96665276_ove
  96665276_over
  96665276_overl
  96665276_overla
  96665276_overlap
  96665276_overlapp
  96665276_overlappi
  96665276_overlappin
  96665276_overlapping
  development
  master
* new_feature_2016
[project (new_feature_2016)]$
```
### I can remove them all that start with `9` by:
```sh
[project (new_feature_2016)]$ forest_fire 9
This deletes all of the following branches:
96665
966652
9666527
96665276
96665276_o
96665276_ov
96665276_ove
96665276_over
96665276_overl
96665276_overla
96665276_overlap
96665276_overlapp
96665276_overlappi
96665276_overlappin
96665276_overlapping
Are you sure? [y/N] y
Deleted branch 96665 (was 70c6d4a).
Deleted branch 966652 (was 70c6d4a).
Deleted branch 9666527 (was 70c6d4a).
Deleted branch 96665276 (was 70c6d4a).
Deleted branch 96665276_o (was 70c6d4a).
Deleted branch 96665276_ov (was 70c6d4a).
Deleted branch 96665276_ove (was 70c6d4a).
Deleted branch 96665276_over (was 70c6d4a).
Deleted branch 96665276_overl (was 70c6d4a).
Deleted branch 96665276_overla (was 70c6d4a).
Deleted branch 96665276_overlap (was 70c6d4a).
Deleted branch 96665276_overlapp (was 70c6d4a).
Deleted branch 96665276_overlappi (was 70c6d4a).
Deleted branch 96665276_overlappin (was 70c6d4a).
Deleted branch 96665276_overlapping (was 70c6d4a).
[project (new_feature_2016)]$ git branch
  development
  master
* new_feature_2016
```
