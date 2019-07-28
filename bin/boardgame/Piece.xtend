package boardgame

abstract class Piece {
	protected Position position
	Board board

	new(Board board) {
		this.board = board
		position = null
	}

	def protected Board getBoard() {
		return board
	}
}
