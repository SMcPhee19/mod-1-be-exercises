require 'rspec'
require './lib/student'

# Add the 2 requires you will need here

RSpec.describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      student = Student.new('Penelope')
      
      expect(student).to be_instance_of(Student)
      # write the code to initialize a new student object
    end

    it 'has attributes' do
      student = Student.new('Penelope')
      student_2 = Student.new('Logan')


      expect(student.name).to eq('Penelope')
      expect(student_2.name).to eq('Logan')
      expect(student.cookies).to eq( [] )
      expect(student_2.cookies).to eq ( [] )
      # test it has cookies
    end 
  end

  describe '#add_cookie' do
    it 'adds a cookie to a students cookie array' do
      student = Student.new('Penolope')

      student.add_cookie('Chocolate Chunk')
      student.add_cookie('Snickerdoodle')

      expect(student.cookies).to eq(['Chocolate Chunk', 'Snickerdoodle'])
    end
  end
end
