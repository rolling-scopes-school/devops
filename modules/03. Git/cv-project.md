# "CV. Markdown"

## Task

Your task is to create a markdown document. Familiarize yourself with markdown syntax and functionality using this guide: https://guides.github.com/features/mastering-markdown/

The document should contain your resume, structured specifically for a Junior DevOps Engineer position. 

Here are some tips and requirements:

```
What should a Junior DevOps Engineer Resume contain?

! Important: Write your resume in English if you are able to

1. First Name, Last Name (real ones)
2. Contact Info (include several ways to contact you)
3. Summary (your career goals, aspirations, and what's important to you in a role. Showcase your enthusiasm and ability to learn quickly. As a junior, you are expected to constantly absorb new knowledge from a variety of sources).
4. Skills (e.g., knowledge in cloud platforms like AWS, GCP or Azure, containerization tools like Docker, scripting languages like Python or Bash, Infrastructure as Code (IaC) tools like Terraform, CI/CD tools like Jenkins, version control systems like Git etc.)
5. Code and Configuration Examples (latest samples of your work. If available, include Infrastructure as Code (IaC) examples, scripts, or other relevant configurations you've done).
6. Experience (for a Junior DevOps Engineer, this includes all relevant experiences: internships, projects from courses, freelance projects, or personal projects. Include links to the source code, if available)
7. Education (include relevant courses, seminars, lectures, online learning. A degree in Computer Science or similar is common, but not always required. Certifications in relevant tools or platforms can be very beneficial)
8. English (provide information about your English language skills and any practice you've had, how long it lasted, etc.)

```

**NOTE!** You are recommended to use real data. However, using fictitious data is also acceptable.

The document should be deployed on GitHub Pages (https://pages.github.com/), it will happen automatically as soon as you create a `gh-pages` branch. After that your page will be available at URL like this one: https://your-github-account.github.io/rsschool-cv/cv

### Repository Requirements:

1. Make a public repository called `rsschool-cv` on your GitHub account.
2. There should be only one file in the `main` branch - a `README.md` file with a link like this https://your-github-account.github.io/rsschool-cv/cv in it
3. The CV document itself called `cv.md` should be in the branch `gh-pages`.
4. Once you are done, open a Pull Request `gh-pages`->`main`. **Do not merge this Pull Request!**

### Commits Requirements

- A minimum of 3 commits
- [Commit names according to the guideline](https://docs.rs.school/#/en/git-convention)

### PR (Pull Request) Requirements

1. PR name should contain **the task name as "Markdown & Git"** and probably additional info.
2. Changes **must not contain commented code, unnecessary files, changes from other branches and generated files** like \*.bundle.js. Please review your changes before contributing. .editorconfig, .gitignore, etc. can be included.
3. Comments in the PR are a good practice.
4. [How to write the perfect Pull Request](https://github.com/blog/1943-how-to-write-the-perfect-pull-request)

### Criteria

- +50 points if the requirements for the task are met
- +50 points if repository, commit and PR requirements are met

### FAQ

1. Question: I’ve got 0 for the task  
   Answer: The page with your CV is absent at: https://your-github-account.github.io/rsschool-cv/cv

2. Question: I’ve got 50 and status "Failed repository requirements: ...."  
   Answer: You do not have "rsschool-cv" repository with "gh-pages" branch and "cv.md" file there. Or there is no “README.md” file in "main" branch.

3. Question: I’ve got 50 and status "Failed commit requirements: ...."  
   Answer: Your "gh-pages" branch has less then 3 commits or not all commits are made according to the rules: https://docs.rs.school/#/en/git-convention All commits that do not follow the rules will be written in the status.
   You can check your commits here: https://github.com/your-github-account/rsschool-cv/commits/gh-pages
   "Merge ..." or "Initial commit" commits were ignored.

4. Question: I’ve got 50 and status "Failed PR requirements:...."  
   Answer: The main reason, in the majority of cases, is that you haven’t made a Pull Request from ‘gh-pages’ to ‘main’. The other reason - there is no task title ("Markdown & Git") in your Pull Request. To look at your PR you can here: https://github.com/your-github-account/rsschool-cv/pulls?utf8=%E2%9C%93&q=is%3Apr
