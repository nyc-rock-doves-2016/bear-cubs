helpers do
  def check_answer(answer, user_guess)
    # self.find_by(user_guess: self.user_guess)
    answer == user_guess
  end
  #   if self.user_guess == self.card.answer
  #     self.update_attributes(is_correct?: "true")
  #   else
  #     self.update_attributes(is_correct?: "false")
  #   end
  # end
end
