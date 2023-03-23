require './student'
require './person'
require './classroom'

describe Student do
  student = Student.new(18, 'John', parent_permission: true)
  student2 = Student.new(17, 'Jane', parent_permission: false)
  let(:classroom) { Classroom.new('History') }
  context 'should create instance of Student Class' do
    it 'returns correct name' do
      expect(student.name).to eq('John')
    end

    it 'returns correct age' do
      expect(student.age).to eq(18)
    end

    it 'should return correct data' do
      expect(student.play_hooky).to eq '¯(ツ)/¯'
    end
    it 'should check if the student can use services' do
      expect(student.can_use_services?).to eq(true)
    end
    it 'should check if the student-2 can use services' do
      expect(student2.can_use_services?).to eq false
    end
    it 'should set the classroom property to the provided value' do
      student.add_classroom(classroom)
      expect(student.classroom.label).to eq('History')
    end

    it "should add the student to the classroom's list of students" do
      student.add_classroom(classroom)
      expect(classroom.students).to include(student)
    end
    # describe "#add_classroom" do
    #   let(:classroom) { Classroom.new("History") }

    #   it "should set the classroom property to the provided value" do
    #     student.add_classroom(classroom)
    #     expect(student.classroom.label).to eq("History")
    #   end

    #   it "should add the student to the classroom's list of students" do
    #     student.add_classroom(classroom)
    #     expect(classroom.students).to include(student)
    #   end

    #   it "should not add the student to the classroom's list of students if they are already in the list" do
    #     classroom.add_student(student)
    #     student.add_classroom(classroom)
    #     expect(classroom.students.count(student)).to eq(1)
    #   end
    # end
  end
end
