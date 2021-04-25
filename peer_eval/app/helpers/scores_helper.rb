module ScoresHelper
  def average_score(project, user)
    sum = 0.0
    count = 0.0
    scores = Score.where(recipient_id: user)
    puts scores.length
    scores.each do |score|
      if (Review.find_by(id: score.review_id).project_id == project)
        sum += score.rating
        count += 1
      end
    end
    return sum/count
  end

  def setup_grade(student, project)
    grade = Grade.find_by(student_id: student.id, project_id: project.id)
    if grade == nil
      Grade.new(params[:grade])
    else
      grade
    end
  end
end
