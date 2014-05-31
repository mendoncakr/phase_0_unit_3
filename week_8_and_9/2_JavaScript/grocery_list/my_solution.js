// U3.W8-9: 


// I worked on this challenge by myself.

// 2. Pseudocode
// create object for grocery list
// create object for grocery item
// add items to grocery list
// remove items from list
// view list
// "check" items off



// 3. Initial Solution

var groceryList = {}

function addItem(item, quantity) {
	groceryList[item] = quantity;
}



function removeItem(item) {
	delete groceryList[item]
}

function viewList() {
	console.log("My Grocery List:")
	console.log("----------------")
	for (var item in groceryList) {
		var quantity = groceryList[item];
		console.log(item + " " + quantity + "x")
	}
}


addItem("apple", 5)	
addItem("orange", 10)
addItem("snacks", 10)
viewList()
removeItem("apple")
viewList





// 4. Refactored Solution






// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
function assert(test, message, test_number) {
	if (!test) {
		console.log(test_number + 'false');
		throw "ERROR: " + message;
	}
	console.log(test_number + "true");
	return true;
}

assert( 
	(groceryList.apple == undefined),
	"There should be no apples in the  list.",
	"1. "
)

assert( 
	(groceryList.orange == 10),
	"There should be 10 oranges in the list.",
	"2. "
)


// 5. Reflection 
// I've been having a hard time with javascript. It's hard to wrap my head around a lot of the syntax
// It's not as clear cut as Ruby and it really makes me apreciate how EASY Ruby syntax is. I found that  I spent
// a lot of time tinkering with the code without fully being confident in its ability to run.