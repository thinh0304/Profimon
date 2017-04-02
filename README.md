# README

# Name of Application: Profimon

# Abstract

Profimon is a game that allows you to battle the professors at SFU and collect various badges through these battles. You play as a student who takes a series of courses and battle professors to complete your degree. Each user will complete a profile page at the beginning of their journey. Then, in each round, a user can select a course to take and battle the professor to obtain a grade for that course. The user has a variety of skills in their arsenal to choose from during these battles. These skills may include studying, reading the textbook, and even cheating on an exam. Some skills expend more stamina than others, forcing the user to mix safe and risky strategies in their quest to obtain a degree. There will also be skills unique to each faculty. A Profimon can fight back with their set of skills, which can range from asking the student a question during lecture to giving a final exam. A student can collect badges on their way to graduation by earning high grades from a specific group of professors based on their faculty.

# Competitive Analysis

Profimon can be most closely compared to the Pokemon main series’ gameplay. The battles in Profimon are like Pokemon’s because of their turn-based nature where the player chooses which skills to use, and the player’s stats determine both the effectiveness of their skills and the professors’ moves. This is similar to Pokemon’s battle system where one of four moves is chosen each turn. There will also be a limit on how many times each skill can be performed in a single class/battle, similar to the number of Power Points required for each move in Pokemon. The player will be able to increase their stats/power and acquire new skills as they make progress in the game. Like the Pokemon games, the player engages in battles to make progress through the game, earning badges along the way and eventually completing the game.

However, the quest structure is different from that of Pokemon. In contrast to Pokemon, the player fights alone as their student avatar. More freedom is granted over which class to take (which resembles the freedom of which job to accept next in the Mystery Dungeon series), and a variety of paths will lead to a winning state of the game. There are also penalties for those who fail courses (i.e. lose the battles), which draws parallels to other roguelike games such as The Binding of Isaac. However, unlike The Binding of Isaac, where players have to start all over upon failing a quest, gameplay is allowed to continue upon failing a course in Profimon (up to a certain number of courses), allowing them to either try again or choose a different course. Players of Profimon will also have the option to retake a completed course (a limited number of times) to improve their overall grade, resulting in greater freedom.

Though users can continue playing the game after having failed a course, having a higher cumulative GPA in Profimon allows the user to upgrade their skills and increase the maximum amount of stamina they can have. This will increase the chances of the player succeeding in later rounds. The ability to upgrade skills is derived from role-playing games such as Fable, where you can spend your points on power-ups that let you do more damage, have more health, etc. The presence of the “stamina” bar also mimics the “mana bar” mechanic commonly seen in RPGs, where a pool of points is spent to use special skills. In our case, most actions will cost stamina. Combining the basic elements of Pokemon’s gameplay with a variety of features from roguelikes and other role-playing games makes Profimon a unique experience specifically tailored towards SFU students.

# Target Audience

Our target audience consists of SFU students and potential SFU students. They range from ages 18 to 30 and are located in the Lower Mainland. Our targets may be of any gender and nationality. These students are looking for a casual gaming experience and enjoy a variety of entertainment. They are somewhat familiar with battle-based games such as Pokemon or Digimon, and most of them will be familiar with the different faculties and course offerings within SFU.

# Value to Our Users

Our web app will be a game that provides entertainment value to users. It will have additional appeal to those who attend SFU and are familiar with the courses and instructors, as they will recognize them in the game. The ability to battle profs they recognize may act as a stress reliever for some students. The game will also help students learn more about the different course offerings available at SFU.

# Epics and Stories of Our Application

## User Creation/Login
One epic of our application would be creating a new user in Profimon. A player needs to create an account before they can start playing Profimon. One story within the epic of user creation is the process of signing up, in which the user provides their username, password and email address. The user then submits this information by clicking the “Submit” button. A verification email will be sent to the email address provided, and once this account has been verified, the user then needs to login. The player will then have the option to set up a public profile and choose which faculty they belong to (another story). If the user decides to end their playing session at any moment, they will have the ability to logout without losing their progress by hitting the “Log Out” button.

## Engaging in Battles
Battling Profimons and earning badges is another epic of our application. To battle a Profimon, a player must first have an account (see User Creation/Login for more details). After login is complete, one story is that a player can choose a particular course and browse through a menu for the current course offerings. The user can then select to battle a Profimon in a particular course to earn a grade for the course. The player will use skills to battle the Profimon (another story), and the Profimon can counter with their own set of skills. At the end of each battle, a player will be awarded a grade for that course. One other story associated with the battles would be the ability to earn badges, which are awarded for achieving high grades for a group of courses in the same faculty.

## Administration and Maintenance
As an administrator, one epic would be the ability to view and maintain the databases within the Profimon game. One story associated with this epic would be the ability to view the statistics associated with each Profimon and course as well as the library of available skills. Admin users can also create their own Profimons and set the statistics and list of skills for these Profimons. Another story would be the ability to add to the list of available skills. Admin users will have access to all the features that regular users have access to.

# APIs Used

The application will make use of the SFU Course Outlines REST API to retrieve data about the course offerings. To determine the strength of each Profimon, we will use data from the SFU Gatekeeper Course Analysis spreadsheet to calculate a difficulty score for each course. We will then put the difficulty scores onto a Google Sheets spreadsheet and turn it into an API, which our application can read (only the difficulty scores that we calculate will be included in the API, not any of the actual data in the Gatekeeper Course Analysis spreadsheet).

# Amount of Work Required

We believe the amount of work required in this proposal is adequate for five group members due to the complexity of implementing certain features in the game. We have identified three epics for the application, and implementing the epic of battling Profimons requires us to not only build the features and skills available to the user, but also construct the Profimons and determine their different skills and strengths. Building the Profimons will require a similar amount of work as implementing an additional epic. Furthermore, we will need to build a library of skills in order to have skills that are specific to certain subjects/faculties. Due to the number of different subjects/faculties at SFU, we expect this library to be quite large, likely consisting of over 100 different possible skills.
