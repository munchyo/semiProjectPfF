package semi.proj.PfF.product.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import semi.proj.PfF.common.model.vo.PageInfo;
import semi.proj.PfF.product.model.vo.Product;

@Repository
public class ProductDAO {

	public int selectCountPrList(SqlSessionTemplate sqlSession, Product productType) {
		if(productType.getproductType2() == null || productType.getproductType2().equals("��ü")) {
			return sqlSession.selectOne("productMapper.selectCountPrList", productType);
		} else {
			return sqlSession.selectOne("productMapper.selectCountPr2List", productType);
		}
	}

	public ArrayList<Product> selectPrList(SqlSessionTemplate sqlSession, PageInfo pi, Product productType) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		if(productType.getproductType2() == null || productType.getproductType2().equals("��ü")) {
			return (ArrayList)sqlSession.selectList("productMapper.selectPrList", productType, rowBounds);
		} else {
			return (ArrayList)sqlSession.selectList("productMapper.selectPr2List", productType, rowBounds);
		}
	}

	public ArrayList<String> selectType2(SqlSessionTemplate sqlSession, Product productType) {
		return (ArrayList)sqlSession.selectList("productMapper.selectType2", productType);
	}
	
}
