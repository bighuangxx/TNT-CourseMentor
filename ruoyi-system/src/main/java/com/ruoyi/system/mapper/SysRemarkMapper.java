package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.SysRemark;

/**
 * 评论Mapper接口
 * 
 * @author ruoyi
 * @date 2024-05-11
 */
public interface SysRemarkMapper 
{
    /**
     * 查询评论
     * 
     * @param remarkId 评论主键
     * @return 评论
     */
    public SysRemark selectSysRemarkByRemarkId(Long remarkId);

    /**
     * 查询评论列表
     * 
     * @param sysRemark 评论
     * @return 评论集合
     */
    public List<SysRemark> selectSysRemarkList(SysRemark sysRemark);

    /**
     * 新增评论
     * 
     * @param sysRemark 评论
     * @return 结果
     */
    public int insertSysRemark(SysRemark sysRemark);

    /**
     * 修改评论
     * 
     * @param sysRemark 评论
     * @return 结果
     */
    public int updateSysRemark(SysRemark sysRemark);

    /**
     * 删除评论
     * 
     * @param remarkId 评论主键
     * @return 结果
     */
    public int deleteSysRemarkByRemarkId(Long remarkId);

    /**
     * 批量删除评论
     * 
     * @param remarkIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSysRemarkByRemarkIds(Long[] remarkIds);
}
