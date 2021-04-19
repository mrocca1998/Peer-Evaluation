module PeerEvaluationsHelper
  def setup_review(review, user, group)
    puts group.id
    Membership.where(group_id: group.id).each do |membership|
      puts membership.student_id
      review.scores.build(author_id: user.id, recipient_id: membership.student_id)
    end
    review
  end
end
