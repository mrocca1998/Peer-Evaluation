module PeerEvaluationsHelper
  def setup_review(review, user, group)
    if review.scores.empty?
      Membership.where(group_id: group.id).each do |membership|
        review.scores.build(author_id: user.id, recipient_id: membership.student_id)
      end
    end
    review
  end
end
