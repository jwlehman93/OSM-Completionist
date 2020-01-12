//
//  MapViewModel.swift
//  Go Map!!
//
//  Created by Wolfgang Timme on 1/11/20.
//  Copyright © 2020 Bryce. All rights reserved.
//

import Foundation

@objc protocol MapViewModelDelegate: class {
    /// Asks the delegate to ask a multiple choice question.
    /// The delegate should allow the user to choose from one of the `choices`.
    /// Once the user made their choice, the delegate should execute the given `selectionHandler`, letting the view model take over again.
    ///
    /// - Parameters:
    ///   - question: The question to ask.
    ///   - choices: A list of answers to present.
    ///   - selectionHandler: Closure to execute when the user made their choice.
    func askMultipleChoiceQuestion(question: String,
                                   choices: [String],
                                   selectionHandler: @escaping (Int) -> Void)
    
    /// Asks the delegate to finish the quest for the object that is currently selected by applying a tag.
    /// - Parameters:
    ///   - key: The key of the tag.
    ///   - value: The value of the tag.
    func finishQuestForSelectedObjectByApplyingTag(key: String, value: String)
}

class MapViewModel: NSObject {
    // MARK: Public properties
    
    @objc weak var delegate: MapViewModelDelegate?
    
    // MARK: Private properties
    
    private let activeQuestBaseObjectMatcher: ActiveQuestBaseObjectMatching
    
    // MARK: Initializer
    
    init(activeQuestBaseObjectMatcher: ActiveQuestBaseObjectMatching) {
        self.activeQuestBaseObjectMatcher = activeQuestBaseObjectMatcher
    }
    
    override convenience init() {
        let staticQuestProvider = StaticQuestProvider()
        let activeQuestBaseObjectMatcher = ActiveQuestsBaseObjectMatcher(questProvider: staticQuestProvider)
        
        self.init(activeQuestBaseObjectMatcher: activeQuestBaseObjectMatcher)
    }
    
    // MARK: Public methods
    
    @objc func presentQuestInterface(for baseObject: OsmBaseObject) {
        let quests = activeQuestBaseObjectMatcher.quests(matching: baseObject)
        
        guard let firstQuest = quests.first else {
            /// We cannot display a quest interface if there were no quests for the given object.
            return
        }
        
        guard case let .multipleChoice(answers) = firstQuest.solution else {
            /// At the moment, the app only supports multiple choice quests.
            return
        }
        
        let choices: [String] = answers.map { answer in
            "\(answer.title) (\(answer.key)=\(answer.value))"
        }
        
        delegate?.askMultipleChoiceQuestion(question: firstQuest.question,
                                            choices: choices,
                                            selectionHandler: { [weak self] indexOfSelectedAnswer in
                                                guard answers.indices.contains(indexOfSelectedAnswer) else {
                                                    /// The index is out of range; ignore.
                                                    return
                                                }
                                                
                                                let selectedAnswer = answers[indexOfSelectedAnswer]
                                                
                                                self?.delegate?.finishQuestForSelectedObjectByApplyingTag(key: selectedAnswer.key,
                                                                                                          value: selectedAnswer.value)
        })
    }
}
