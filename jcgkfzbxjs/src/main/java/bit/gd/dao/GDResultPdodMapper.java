package bit.gd.dao;

import bit.gd.pojo.GDResultPdod;

public interface GDResultPdodMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GDResultPdod record);

    int insertSelective(GDResultPdod record);

    GDResultPdod selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GDResultPdod record);

    int updateByPrimaryKey(GDResultPdod record);
}