package boardgame
class Board {
	int rows
	int columns
	Piece[][] pieces
	 new(int rows, int columns) {
		this.rows=rows 
		this.columns=columns 
		pieces=/* FIXME Only one dimensional arrays are supported. new Piece[rows][columns]*/ 
	}
	def int getRows() {
		return rows 
	}
	def void setRows(int rows) {
		this.rows=rows 
	}
	def int getColumns() {
		return columns 
	}
	def void setColumns(int columns) {
		this.columns=columns 
	}
	def Piece piece(int row, int column) {
		return {val _rdIndx__pieces=column {val _rdIndx_pieces=row pieces.get(_rdIndx_pieces)}.get(_rdIndx__pieces)} 
	}
	def Piece piece(Position position) {
		return {val _rdIndx__pieces=position.getColumn() {val _rdIndx_pieces=position.getRow() pieces.get(_rdIndx_pieces)}.get(_rdIndx__pieces)} 
	}
	def void placePiece(Piece piece, Position position) {
		{ val _wrVal__pieces={val _rdIndx_pieces=position.getRow() pieces.get(_rdIndx_pieces)} val _wrIndx__pieces=position.getColumn() _wrVal__pieces.set(_wrIndx__pieces,piece)} 
		piece.position=position 
	}
}