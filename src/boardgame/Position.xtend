package boardgame

class Position {
	int row
	int column

	new(int row, int column) {
		this.row = row
		this.column = column
	}

	def int getRow() {
		return row
	}

	def void setRow(int row) {
		this.row = row
	}

	def int getColumn() {
		return column
	}

	def void setColumn(int column) {
		this.column = column
	}

	override String toString() {
		return '''«row», «column»'''
	}
}
