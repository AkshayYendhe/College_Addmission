//
//  College_Student_Struct.swift
//  College_Addmission
//
//  Created by Akshay Yendhe on 25/12/22.
//

import Foundation

struct Student{
    var studentName : String
    var studentMarks : Double
}
struct College{
    var collegeName : String
    var city : String
    let cutOfPercentage : Double = 60.0
    var isPrivate : Bool
}
func checkAddmission(student : Student, college : College) -> String{
    if student.studentMarks >= college.cutOfPercentage {
        return "Name :- \(student.studentName) \n Marks :- \(student.studentMarks)\n can take addmission to \(college.collegeName) \(college.city)"
    }
    else{
        return "\(student.studentName) Please take addmission to Private College"
    }
}
