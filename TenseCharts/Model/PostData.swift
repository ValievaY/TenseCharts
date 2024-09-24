//
//  PostData.swift
//  TenseCharts
//
//  Created by Apple Mac Air on 10.09.2024.
//

import Foundation
import SwiftUI

enum PostData {
    
    static let chartsTheme = [
        ChartsTheme(id: 1, title: "Present Simple", count: questionsData[1]?.count ?? 3),
        ChartsTheme(id: 2, title: "Present Continuous for Action at the Moment", count: questionsData[2]?.count ?? 3),
        ChartsTheme(id: 3, title: "Present Continuous for Current Projects", count: questionsData[3]?.count ?? 3),
        ChartsTheme(id: 4, title: "Present Continuous for Scheduled Events", count: questionsData[4]?.count ?? 3),
        ChartsTheme(id: 5, title: "Past Simple", count: questionsData[5]?.count ?? 3),
        ChartsTheme(id: 6, title: "Past Continuous for Exact Times in the Past", count: questionsData[6]?.count ?? 3),
        ChartsTheme(id: 7, title: "Past Continuous for Interrupted Action", count: questionsData[7]?.count ?? 3),
        ChartsTheme(id: 8, title: "Future with Going to for Future Plans", count: questionsData[8]?.count ?? 3),
        ChartsTheme(id: 9, title: "Future with Will for Promises and Predictions", count: questionsData[9]?.count ?? 3),
        ChartsTheme(id: 10, title: "Future with Going to for Future Intent", count: questionsData[10]?.count ?? 3),
        ChartsTheme(id: 11, title: "Present Perfect for Past to Present States and Actions", count: questionsData[11]?.count ?? 3),
        ChartsTheme(id: 12, title: "Present Perfect to Express Recent Events", count: questionsData[12]?.count ?? 3),
        ChartsTheme(id: 13, title: "Present Perfect for Unspecified Past Events", count: questionsData[13]?.count ?? 3),
        ChartsTheme(id: 14, title: "Present Perfect Continuous", count: questionsData[14]?.count ?? 3),
        ChartsTheme(id: 15, title: "Future Perfect", count: questionsData[15]?.count ?? 3),
        ChartsTheme(id: 16, title: "Future Perfect Continuous", count: questionsData[16]?.count ?? 3),
        ChartsTheme(id: 17, title: "Past Perfect Continuous", count: questionsData[17]?.count ?? 3),
        ChartsTheme(id: 18, title: "Past Perfect", count: questionsData[18]?.count ?? 3),
        ChartsTheme(id: 19, title: "Future Continuous", count: questionsData[19]?.count ?? 3),
    ]
    
    static let data = [
        1 : Post(id: 1,
             title: "Present Simple",
             textDescription: """
     The present simple is used to express daily routines and habits. Adverbs of frequency such as 'usually', 'sometimes', 'rarely', etc. are often used with the present simple.
     
     This tense is often used with the following time expressions:
     
     always, usually, sometimes, etc. ... every day
     ... on Sundays, Tuesdays, etc.
     """,
             positive: """
    Subject + Present Tense + object(s) + time Expression
    """,
             negative: """
    Subject + do / does + not (don't / doesn't) + verb + object(s) + time Expression
    """,
             question: """
    (Question Word) + do / does + subject + verb + object(s) + time Expression
   """,
             image: "1"),
        
        2 : Post(id: 2,
             title: "Present Continuous for Action at the Moment",
             textDescription: """
     One use of the present continuous tense is for action that is occurring at the moment of speaking. Remember that only action verbs can take the continuous form.
     
     This tense is often used with the following time expressions:
     
     ... at the moment
     ... now
     ... today
     ... this morning / afternoon / evening
     """,
             positive: """
    Subject + be + verb + ing + object(s) + time Expression
    """,
             negative: """
    Subject + be + not (isn't, aren't) + verb + ing + object(s) + time Expression
    """,
             question: """
    (Question Word) + be + subject + verb + ing + object(s) + time Expression
    """,
             image: "2"),
    
        3 : Post(id: 3,
             title: "Present Continuous for Current Projects",
             textDescription: """
     Use the present continuous to describe projects and actions that are happening around the present moment in time. Remember that these projects have begun in the recent past and will end in the near future. This usage is especially popular for talking about current projects at work or for specific hobbies.
     
     This tense is often used with the following time expressions:
     
     ... at the moment
     ... now
     ... this week / month
     """,
             positive: """
    Subject + be + verb + ing + object(s) + time Expression
    """,
             negative: """
    Subject + be + not (isn't, aren't) + verb + ing + object(s) + time Expression
    """,
             question: """
    (Question Word) + be + subject + verb + ing + object(s) + time Expression
    """,
             image: "3"),
        
        4 : Post(id: 4,
             title: "Present Continuous for Scheduled Events",
             textDescription: """
     One use of the present continuous tense is for scheduled future events. This usage is especially useful when talking about appointments and meetings for work.
     
     This tense is often used with the following time expressions:
     
     ... tomorrow
     ... on Friday, Monday, etc.
     ... today
     ... this morning / afternoon / evening ... next week / month
     ... in December, March, etc.
     """,
             positive: """
    Subject + be + verb + ing + object(s) + time Expression
    """,
             negative: """
    Subject + be + not (isn't, aren't) + verb + ing + object(s) + time Expression
    """,
             question: """
    (Question Word) + be + subject + verb + ing + object(s) + time Expression
    """,
             image: "4"),
        
        5 : Post(id: 5,
             title: "Past Simple",
             textDescription: """
     The past simple is used to express something that happened a past point in time. Remember to always use a past time expression, or a clear contextual clue when using the past simple. If you do not indicate when something happened, use the present perfect for unspecified past.
     
     This tense is often used with the following time expressions:
     
     ... ago
     ... in + year / month ...yesterday
     ...last week / month / year ... when ....
     """,
             positive: """
    Subject + Past Tense + object(s) + time Expression
    """,
             negative: """
    Subject + did + not (didn't) + verb + object(s) + time Expression
    """,
             question: """
    (Question Word) + did + subject + verb + object(s) + time Expression
    """,
             image: "5"),
        
        6 : Post(id: 6,
             title: "Past Continuous for Exact Times in the Past",
             textDescription: """
     The past continuous tense is used to describe what was happening at a specific moment in time in the past. Do not use this form when referring to longer periods of time in the past such as 'last March', 'two years ago', etc. Use the past continuous with times of the day in the past.
     
     This tense is often used with the following time expressions:
     
     ... at 5.20, three o'clock, etc.
     """,
             positive: """
    Subject + was / were + verb + ing + object(s) + time Expression
    """,
             negative: """
    Subject + was / were + not (wasn't, weren't) + verb + ing + object(s) + time Expression
    """,
             question: """
    (Question Word) + was / were + subject + verb + ing + object(s) + time Expression
    """,
             image: "6"),
        
        7 : Post(id: 7,
             title: "Past Continuous for Interrupted Action",
             textDescription: """
     Use the past continuous to express what was happening when something important happened. This form is almost always used with the time clause '... when xyz happened'. It is also possible to use this form with '... while something was happening' to express two past actions that were occurring simultaneously.
     
     This tense is often used with the following time expressions:
     
     ... when xyz happened
     ... while xyz was happening.
     """,
             positive: """
    Subject + was / were + verb + ing + object(s) + time Expression
    """,
             negative: """
    Subject + was / were + not (wasn't, weren't) + verb + ing + object(s) + time Expression
    """,
             question: """
    (Question Word) + was / were + subject + verb + ing + object(s) + time Expression
    """,
             image: "7"),
        
        8 : Post(id: 8,
             title: "Future with Going to for Future Plans",
             textDescription: """
     The future with 'going to' is used to express future plans or scheduled events. It is often used instead of the present continuous for future scheduled work events. Either form can be used for this purpose.
     
     This tense is often used with the following time expressions:
     
     ... next week / month
     ... tomorrow
     ... on Monday, Tuesday, etc.
     """,
             positive: """
    Subject + be + going to + verb + object(s) + time Expression
    """,
             negative: """
    Subject + be not (isn't, aren't) + going to + verb + object(s) + time Expression
    """,
             question: """
    (Question Word) + be + subject + going to + verb + object(s) + time Expression
    """,
             image: "8"),
        
        9 : Post(id: 9,
             title: "Future with Will for Promises and Predictions",
             textDescription: """
     The future with 'will' is used to make future predictions and promises. Often the precise moment the action will occur is unknown or not defined.
     
     This tense is often used with the following time expressions:
     
     ... soon
     ... next month / year / week
     """,
             positive: """
    Subject + will + verb + object(s) + time Expression
    """,
             negative: """
    Subject + will not (won't) + verb + object(s) + time Expression
    """,
             question: """
    (Question Word) + will + subject + verb + object(s) + time Expression
    """,
             image: "9"),
        
        10 : Post(id: 10,
             title: "Future with Going to for Future Intent",
             textDescription: """
     The future with 'going to' is used for future intent. Remember that you can express a future intent without expressing the exact future time that something will occur. This use of the future with 'going to' can be used to discuss future study plans, career plans, and more.
     
     This tense is often used with the following time expressions:
     
     ... next week / month
     ... tomorrow
     ... on Monday, Tuesday, etc.
     """,
             positive: """
    Subject + be + going to + verb + object(s) + time Expression
    """,
             negative: """
    Subject + be not (isn't, aren't) + going to + verb + object(s) + time Expression
    """,
             question: """
    (Question Word) + be + subject + going to + verb + object(s) + time Expression
    """,
             image: "10"),
        
        11 : Post(id: 11,
             title: "Present Perfect for Past to Present States and Actions",
             textDescription: """
     Use the present perfect to express a state or repeated action that began in the past and continues into the moment of speaking. The present perfect or the present perfect continuous can often be interchanged. The main difference between these two forms is that the present perfect continuous is generally used to express the length of the current activity up to the present moment in time.
     
     This tense is often used with the following time expressions:
     
     ... for + amount of time
     ... since + specific point in time
     """,
             positive: """
    Subject + have / has + past participle + object(s) + time Expression
    """,
             negative: """
    Subject + have / has not (haven't, hasn't) + past participle + object(s) + time Expression
    """,
             question: """
    (Question Word) + have / has + subject + past participle + object(s) + time Expression
    """,
             image: "11"),
        
        12 : Post(id: 12,
             title: "Present Perfect to Express Recent Events",
             textDescription: """
     The present perfect is often used to express recent events that affect the present moment. These sentences generally use the time expressions 'just', 'yet', 'already', or 'recently' to express this connection. Remember that if you give a specific time in the past, the past simple is required.
     
     This tense is often used with the following time expressions:
     
     just
     yet already recently
     """,
             positive: """
    Subject + have / has + just / recently + past participle + object(s)
    """,
             negative: """
    Subject + have / has not (haven't, hasn't) + past participle + object(s) + time Expression
    """,
             question: """
    (Question Word) + have / has + subject + past participle + object(s) + time Expression
    """,
             image: "12"),
        
        13 : Post(id: 13,
             title: "Present Perfect for Unspecified Past Events",
             textDescription: """
     The present perfect is often used to express events that occurred in the past at an unspecified moment. This form is often used to express cumulative life experiences up to the present moment. Remember that if you use a specific past time expression, choose the past simple.
     
     This tense is often used with the following time expressions:
     
     twice, three times, four times, etc. ever
     never
     """,
             positive: """
    Subject + have / has + past participle + object(s)
    """,
             negative: """
    Subject + have / has not (haven't, hasn't) + past participle + object(s) + time Expression
    """,
             question: """
    (Question Word) + have / has + subject + (ever) + past participle + object(s)
    """,
             image: "13"),
        
        14 : Post(id: 14,
             title: "Present Perfect Continuous",
             textDescription: """
     The present perfect continuous is used to express how long a current activity has been going on. It is often used in context to provide a reason for a present result. Remember that continuous forms can only be used with action verbs.
     
     This tense is often used with the following time expressions:
     
     ...since + specific point in time ... for + amount of time
     """,
             positive: """
    Subject + has / have + been + verb + ing + object(s) + time Expression
    """,
             negative: """
    Subject + has / have not (hasn't / haven't) + been + verb + ing + object(s) + time Expression
    """,
             question: """
    (Question Word) + has / have + subject + been + verb + ing + object(s) + (time Expression)
    """,
             image: "14"),
        
        15 : Post(id: 15,
             title: "Future Perfect",
             textDescription: """
     Use the future perfect tense to express what will happened by a certain time in the future. The future perfect tense is often used to express achievements or work done by a future point in time.
     
     This tense is often used with the following time expressions:
     
     ... by Monday, Tuesday, etc.
     ... by the time ...
     ... by five o'clock, two-thirty, etc.
     """,
             positive: """
    Subject + will + have + past participle + object(s) + time Expression
    """,
             negative: """
    Subject + will not (won't) + have + past participle + object(s) + time Expression
    """,
             question: """
    (Question Word) + will + subject + have + past participle + object(s) + time Expression
    """,
             image: "15"),
        
        16 : Post(id: 16,
             title: "Future Perfect Continuous",
             textDescription: """
     The future perfect continuous is used to express the duration of an action up to a future point in time. This tense is not commonly used in English.
     
     This tense is often used with the following time expressions:
     
     ... by / ... by the time ...
     """,
             positive: """
    Subject + will + have + been + verb + ing + object(s) + time Expression
    """,
             negative: """
    Subject + will not (won't) + have + been + verb + ing + object(s) + time Expression
    """,
             question: """
    (Question Word) + will + subject + have + been + verb + ing + object(s) + time Expression
    """,
             image: "16"),
        
        17 : Post(id: 17,
             title: "Past Perfect Continuous",
             textDescription: """
     The past perfect continuous is used to describe how long an activity had been going on before something else happened. It is often used to provide context, or a reason for a specific action.
     
     This tense is often used with the following time expressions:
     
     ... for X hours, days, months, etc ... since Monday, Tuesday, etc.
     """,
             positive: """
    Subject + had + been + verb + ing + object(s) + time Expression
    """,
             negative: """
    Subject + had not (hadn't) + been + verb + ing + object(s) + time Expression
    """,
             question: """
    (Question Word) + had + subject + been + verb + ing + object(s) + time Expression
    """,
             image: "17"),
        
        18 : Post(id: 18,
             title: "Past Perfect",
             textDescription: """
     The past perfect is used to express something that happened before another point in time. It is often used to provide context, or an explanation for a specific action or result.
     
     This tense is often used with the following time expressions:
     
     ... before
     already
     once, twice, three times, etc. ... by the time

     """,
             positive: """
    Subject + had + past participle + object(s) + time Expression
    """,
             negative: """
    Subject + had not (hadn't) + past participle + object(s) + time Expression
    """,
             question: """
    (Question Word) + had + subject + past participle + object(s) + time Expression
    """,
             image: "18"),
        
        19 : Post(id: 19,
             title: "Future Continuous",
             textDescription: """
     The future continuous is used to talk about an activity that will be in progress at a specific point in time in the future. For example, We'll be having lunch on the beach this time next week.
     
     This tense is often used with the following time expressions:
     
     ...this time tomorrow / next week, month, year ...tomorrow / Monday, Tuesday, etc. / at X o'clock
     ... in two, three, four, etc. / weeks, months, years time
     """,
             positive: """
    Subject + will + be + verb + ing + object(s) + time Expression
    """,
             negative: """
    Subject + will not (won't) + be + verb + ing + object(s) + time Expression
    """,
             question: """
    (Question Word) + will + subject + be + verb + ing + object(s) + time Expression
    """,
             image: "19")
    ]
    
    static let questionsData = [
        1 : [Test(correct: [2], answers: ["She's watching TV at the moment.", "I have lived in Portland for four years.", "Frank usually takes a bus to work."]),
             Test(correct: [0], answers: ["They don't often go to Chicago.", "Peter hasn't finished his homework yet", "I haven't played golf many times"]),
             Test(correct: [0], answers: ["How often do you play golf?", "Have you ever been to France?", "Which account are you working on this week?"])
             ],
        2 : [Test(correct: [1], answers: ["We're working on the Smith account this month.", "She's watching TV at the moment.", "I'm meeting our CEO at three o'clock this afternoon."]),
             Test(correct: [2], answers: ["Shelley isn't attending the meeting tomorrow.", "He isn't studying French this semester.", "They aren't having fun this morning."]),
             Test(correct: [1], answers: ["Which account are you working on this week?", "What are you doing?", "When are you discussing the situation with Tom?"])
            ],
        3 : [Test(correct: [0], answers: ["We're working on the Smith account this month.", "She's watching TV at the moment.", "I'm meeting our CEO at three o'clock this afternoon."]),
             Test(correct: [1], answers: ["Shelley isn't attending the meeting tomorrow.", "He isn't studying French this semester.", "They aren't having fun this morning."]),
             Test(correct: [0], answers: ["Which account are you working on this week?", "What are you doing?", "When are you discussing the situation with Tom?"])
            ],
        4 : [Test(correct: [2], answers: ["We're working on the Smith account this month.", "She's watching TV at the moment.", "I'm meeting our CEO at three o'clock this afternoon."]),
             Test(correct: [0], answers: ["Shelley isn't attending the meeting tomorrow.", "He isn't studying French this semester.", "They aren't having fun this morning."]),
             Test(correct: [2], answers: ["Which account are you working on this week?", "What are you doing?", "When are you discussing the situation with Tom?"])
            ],
        5 : [Test(correct: [0], answers: ["I went to the doctor's yesterday.", "I have lived in Portland for four years.", "She had already eaten by the time the children came home."]),
             Test(correct: [0], answers: ["Shelley isn't attending the meeting tomorrow.", "They hadn't finished their homework before the teacher asked them to hand it in.", "Max hasn't played tennis since 1999."]),
             Test(correct: [2], answers: ["Where have you worked since 2002?", "Where had you gone before the class began?", "When did you buy that pullover?"])
            ],
        6 : [Test(correct: [1], answers: ["She had been waiting for two hours when he finally arrived.", "We were meeting with Jane at two o'clock yesterday afternoon.", "Sharon was watching TV when she received the telephone call."]),
             Test(correct: [1], answers: ["They hadn't been working long when the boss asked them to change their focus.", "They weren't playing tennis at five o'clock on Saturday.", "We weren't doing anything important when you arrived."]),
             Test(correct: [0], answers: ["What were you doing at two-thirty yesterday afternoon?", "What were you doing when Tom gave you the bad news?", "How long had Tom been working on that project when they decided to give it to Pete?"])
        ],
        7 : [Test(correct: [2], answers: ["She had been waiting for two hours when he finally arrived.", "We were meeting with Jane at two o'clock yesterday afternoon.", "Sharon was watching TV when she received the telephone call."]),
             Test(correct: [2], answers: ["They hadn't been working long when the boss asked them to change their focus.", "They weren't playing tennis at five o'clock on Saturday.", "We weren't doing anything important when you arrived."]),
             Test(correct: [1], answers: ["What were you doing at two-thirty yesterday afternoon?", "What were you doing when Tom gave you the bad news?", "How long had Tom been working on that project when they decided to give it to Pete?"])
        ],
        8 : [Test(correct: [1], answers: ["Anna is going to study medicine at university.", "Tom is going to fly to Los Angeles next on Tuesday.", "I'm meeting our CEO at three o'clock this afternoon."]),
             Test(correct: [0], answers: ["They aren't going to attend the conference next month.", "They aren't going to develop any new projects for the next few years.", "Shelley isn't attending the meeting tomorrow."]),
             Test(correct: [0], answers: ["When are you going to meet Jack?", "Why are you going to change your job?", "When are you discussing the situation with Tom?"])
        ],
        9 : [Test(correct: [2], answers: ["We will have been studying for two hours by the time he arrives.", "They will have finished the report by tomorrow afternoon.", "The government will increase taxes soon."]),
             Test(correct: [2], answers: ["Mary won't have answered all the questions by the end of this hour.", "He won't have been working long by two o'clock.", "She won't help us much with the project."]),
             Test(correct: [1], answers: ["What will you have done by the end of this month?", "Why will they reduce taxes?", "How long will you have been working on that project by the time he arrives?"])
        ],
        10 : [Test(correct: [0], answers: ["Anna is going to study medicine at university.", "Tom is going to fly to Los Angeles next on Tuesday.", "I'm meeting our CEO at three o'clock this afternoon."]),
              Test(correct: [1], answers: ["They aren't going to attend the conference next month.", "They aren't going to develop any new projects for the next few years.", "Shelley isn't attending the meeting tomorrow."]),
              Test(correct: [2], answers: ["When are you going to meet Jack?", "When are you discussing the situation with Tom?", "Why are you going to change your job?"])
        ],
        11 : [Test(correct: [1], answers: ["I went to the doctor's yesterday.", "I have lived in Portland for four years.", "She had already eaten by the time the children came home."]),
              Test(correct: [2], answers: ["Shelley isn't attending the meeting tomorrow.", "They hadn't finished their homework before the teacher asked them to hand it in.", "Max hasn't played tennis since 1999."]),
              Test(correct: [0], answers: ["Where have you worked since 2002?", "Where had you gone before the class began?", "When did you buy that pullover?"])
             ],
        12 : [Test(correct: [2], answers: ["Peter has visited Europe three times in his life.", "I have lived in Portland for four years.", "Henry has just gone to the bank."]),
              Test(correct: [1], answers: ["I haven't played golf many times.", "Peter hasn't finished his homework yet.", "Max hasn't played tennis since 1999."]),
              Test(correct: [2], answers: ["Where have you worked since 2002?", "Have you ever been to France?", "Have you spoken to Andy yet?"])
             ],
        13 : [Test(correct: [0], answers: ["Peter has visited Europe three times in his life.", "I have lived in Portland for four years.", "Henry has just gone to the bank."]),
              Test(correct: [0], answers: ["I haven't played golf many times.", "Peter hasn't finished his homework yet.", "Max hasn't played tennis since 1999."]),
              Test(correct: [1], answers: ["Where have you worked since 2002?", "Have you ever been to France?", "Have you spoken to Andy yet?"])
             ],
        14 : [Test(correct: [0], answers: ["He's been cleaning house for two hours.", "We were meeting with Jane at two o'clock yesterday afternoon.", "She had been waiting for two hours when he finally arrived."]),
              Test(correct: [2], answers: ["They hadn't been working long when the boss asked them to change their focus.", "They weren't playing tennis at five o'clock on Saturday.", "Janice hasn't been studying for too long."]),
              Test(correct: [0], answers: ["How long have you been working in the garden?", "What were you doing when Tom gave you the bad news?", "How long had Tom been working on that project when they decided to give it to Pete?"])
        ],
        15 : [Test(correct: [1], answers: ["We will have been studying for two hours by the time he arrives.", "They will have finished the report by tomorrow afternoon.", "The government will increase taxes soon."]),
             Test(correct: [0], answers: ["Mary won't have answered all the questions by the end of this hour.", "He won't have been working long by two o'clock.", "She won't help us much with the project."]),
             Test(correct: [0], answers: ["What will you have done by the end of this month?", "Why will they reduce taxes?", "How long will you have been working on that project by the time he arrives?"])
        ],
        16 : [Test(correct: [0], answers: ["We will have been studying for two hours by the time he arrives.", "They will have finished the report by tomorrow afternoon.", "Peter will be doing his homework this time tomorrow."]),
             Test(correct: [1], answers: ["Mary won't have answered all the questions by the end of this hour.", "He won't have been working long by two o'clock.", "Sharon won't be working in New York in three weeks time."]),
             Test(correct: [2], answers: ["What will you have done by the end of this month?", "What will you be doing this time next year?", "How long will you have been working on that project by the time he arrives?"])
        ],
        17 : [Test(correct: [0], answers: ["She had been waiting for two hours when he finally arrived.", "We were meeting with Jane at two o'clock yesterday afternoon.", "Sharon was watching TV when she received the telephone call."]),
              Test(correct: [0], answers: ["They hadn't been working long when the boss asked them to change their focus.", "They weren't playing tennis at five o'clock on Saturday.", "We weren't doing anything important when you arrived."]),
              Test(correct: [2], answers: ["What were you doing at two-thirty yesterday afternoon?", "What were you doing when Tom gave you the bad news?", "How long had Tom been working on that project when they decided to give it to Pete?"])
        ],
        18 : [Test(correct: [2], answers: ["I went to the doctor's yesterday.", "I have lived in Portland for four years.", "She had already eaten by the time the children came home."]),
              Test(correct: [1], answers: ["Shelley isn't attending the meeting tomorrow.", "They hadn't finished their homework before the teacher asked them to hand it in.", "Max hasn't played tennis since 1999."]),
              Test(correct: [1], answers: ["Where have you worked since 2002?", "Where had you gone before the class began?", "When did you buy that pullover?"])
             ],
        19 : [Test(correct: [2], answers: ["We will have been studying for two hours by the time he arrives.", "They will have finished the report by tomorrow afternoon.", "Peter will be doing his homework this time tomorrow."]),
             Test(correct: [2], answers: ["Mary won't have answered all the questions by the end of this hour.", "He won't have been working long by two o'clock.", "Sharon won't be working in New York in three weeks time."]),
             Test(correct: [1], answers: ["What will you have done by the end of this month?", "What will you be doing this time next year?", "How long will you have been working on that project by the time he arrives?"])
        ]
    ]
}
