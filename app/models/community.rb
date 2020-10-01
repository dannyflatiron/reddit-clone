class Community
    belongs_to :account
    validates_presence of :url, :name, :bio


end