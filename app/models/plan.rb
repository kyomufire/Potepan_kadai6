class Plan < ApplicationRecord
    validates :title, presence: true, length: { maximum: 20 }
    validates :start_date, presence: true
    validates :end_date, presence: true
    validates :schedule, length: { maximum: 500 }
    validate :start_end_check

    def start_end_check
        if self.start_date.present? && self.end_date.present?
            errors.add(:end_date, "は開始日より前の日付は登録できません。") unless
            self.start_date <= self.end_date
        end
    end
end
