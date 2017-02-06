require('minitest/autorun')
require('minitest/rg')
require_relative('./library')

class TestLibrary < MiniTest::Test


    array_of_books [{ 
       title: "lord_of_the_rings",
       rental_details: { 
        student_name: "Jeff", 
        date: "01/12/16"
       }
     },
   { 
      title: "moneyball",
      rental_details: { 
       student_name: "Sue", 
       date: "01/10/16"
      }
    },
  { 
     title: "Rags to Richie",
     rental_details: { 
      student_name: "Sarah", 
      date: "12/08/16"
     }
   }]

def test_get_title
  books=Library.new(@array) #I'm looking to add the array and use it to search through - needs work though!
  assert_equal(@array, books.title)
end












end