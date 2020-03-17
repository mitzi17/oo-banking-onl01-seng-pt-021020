class Transfer
  
  attr_reader :sender, :receiver, :amount
  attr_accessor :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = 'pending'
    @amount = amount
  end
  
  def valid?
    sender.valid? && receiver.valid?
  end
  
  def execute_transaction
   if self.status =='pending' && sender.balance > amount && self.valid?
    self.sender.balance -= self.amount
    self.receiver.balance += self.amount
    self.status="complete"
  else
    self.status = "rejected"
    "Transaction rejected. Please check your account balance."
  end
  
  def reverse_transfer
    
    
  end
  
  end
  
  
  

  
end
