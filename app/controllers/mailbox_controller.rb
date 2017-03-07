class MailboxController < ApplicationController

	def inbox
		@inbox = mailbox.inbox
		@active = :inbox
	end

	def sent
		@send = mailbox.sentbox
		@active = :sent
	end

	def trash
		@trash = mailbox.trash
		@active = :trash
	end
end
