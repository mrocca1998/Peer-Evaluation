module PeerEvaluationsHelper
  def setup_review(user, group)
    review = Review.new(params[:review])
    Membership.where(group_id: group.id).each do |membership|
      review.scores.build(author_id: user.id, recipient_id: membership.student_id)
    end
    review
  end
end
