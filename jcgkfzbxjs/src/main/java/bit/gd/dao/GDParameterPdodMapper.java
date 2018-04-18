package bit.gd.dao;

import bit.gd.pojo.GDParameterPdod;

import java.util.List;

public interface GDParameterPdodMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GDParameterPdod record);

    int insertSelective(GDParameterPdod record);

    GDParameterPdod selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GDParameterPdod record);

    int updateByPrimaryKey(GDParameterPdod record);

    List<GDParameterPdod> selectByRecord(GDParameterPdod record);
}