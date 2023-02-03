//
//  StroyBrain.swift
//   Destini
//
//  Created by George on 04.02.2023.
//

import Foundation
   
   struct StoryBrain {
       
       var storyNumber = 0
       
       let stories = [
           Story(
               title: "Перед вами распутье:",
               choice1: "Пойти налево.", choice1Destination: 5,
               choice2: "Пойти направо.", choice2Destination: 1
           ),
           Story(
               title: "Вы пришли на болото.",
               choice1: "Пойти через болото.", choice1Destination: 2,
               choice2: "Пойти назад.", choice2Destination: 0
           ),
           Story(
               title: "Вы увязли.",
               choice1: "Пытаться выбраться.", choice1Destination: 4,
               choice2: "Не двигаться и ждать помощи.", choice2Destination: 3
           ),
           Story(
               title: "Никого нет.",
               choice1: "Пытаться выбраться.", choice1Destination: 4,
               choice2: "Не двигаться и ждать помощи.", choice2Destination: 3
           ),
           Story(
               title: "Вы вылезли обратно.",
               choice1: "Пытаться снова протий через болото.", choice1Destination: 2,
               choice2: "Пойти назад к распутью.", choice2Destination: 0
           ),
           
           Story(
               title: "Вы долго идете по прямой дороге.",
               choice1: "Идти дальше.", choice1Destination: 5,
               choice2: "Развернуться назад и пойти на распутье.", choice2Destination: 0
           )
       ]
       
       func getStoryTitle() -> String {
           return stories[storyNumber].title
       }
       
       func getChoice1() -> String {
           return stories[storyNumber].choice1
       }
       
       func getChoice2() -> String {
           return stories[storyNumber].choice2
       }
       
       mutating func nextStory(userChoice: String) {
           
           let currentStory = stories[storyNumber]
           if userChoice == currentStory.choice1 {
               storyNumber = currentStory.choice1Destination
           } else if userChoice == currentStory.choice2 {
               storyNumber = currentStory.choice2Destination
           }
       }
       
   }
