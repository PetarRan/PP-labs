
import java.util.Hashtable;
public class KWTable {

	private Hashtable<String, Integer> mTable;
	public KWTable()
	{
		mTable = new Hashtable<String, Integer>();
		mTable.put("program", (sym.PROGRAM));
		mTable.put("begin", (sym.BEGIN));
		mTable.put("end", (sym.END));
		mTable.put("integer", (sym.INTEGER));
		mTable.put("real", (sym.REAL));
		mTable.put("char", (sym.CHAR));
		mTable.put("or", (sym.OR));
		mTable.put("boolean", (sym.BOOLEAN));
		mTable.put("while", (sym.WHILE));
		mTable.put("else", (sym.ELSE));
		mTable.put("and", (sym.AND));
		mTable.put("true", (sym.TRUE));
		mTable.put("false", (sym.FALSE));

	}
	
	/**
	 * Vraca ID kljucne reci 
	 */
	public int find(String keyword)
	{
		Object symbol = mTable.get(keyword);
		if (symbol != null)
			return ((Integer)symbol).intValue();
		return sym.ID; // Sym Identifier if its not in the table!
	}
	

}
