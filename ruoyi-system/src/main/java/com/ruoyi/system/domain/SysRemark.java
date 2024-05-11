package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.TreeEntity;

/**
 * 评论对象 sys_remark
 * 
 * @author ruoyi
 * @date 2024-05-11
 */
public class SysRemark extends TreeEntity
{
    private static final long serialVersionUID = 1L;

    /** id */
    private Long remarkId;

    /** 是否可编辑（只有3不可以） */
    private Long stat;

    /** 名称 */
    @Excel(name = "名称")
    private String remarkName;

    /** 删除标志（0代表存在 2代表删除） */
    private String delFlag;

    /** 评论内容 */
    @Excel(name = "评论内容")
    private String remarkContent;

    /** 得分 */
    @Excel(name = "得分")
    private Long point;

    /** 点赞数 */
    private Long likeCnt;

    /** 举报数 */
    private Long reportCnt;

    /** 预留接口 */
    private String reservedPort1;

    /** 预留接口 */
    private String reservedPort2;

    /** 预留接口 */
    private String reservedPort3;

    public void setRemarkId(Long remarkId) 
    {
        this.remarkId = remarkId;
    }

    public Long getRemarkId() 
    {
        return remarkId;
    }
    public void setStat(Long stat) 
    {
        this.stat = stat;
    }

    public Long getStat() 
    {
        return stat;
    }
    public void setRemarkName(String remarkName) 
    {
        this.remarkName = remarkName;
    }

    public String getRemarkName() 
    {
        return remarkName;
    }
    public void setDelFlag(String delFlag) 
    {
        this.delFlag = delFlag;
    }

    public String getDelFlag() 
    {
        return delFlag;
    }
    public void setRemarkContent(String remarkContent) 
    {
        this.remarkContent = remarkContent;
    }

    public String getRemarkContent() 
    {
        return remarkContent;
    }
    public void setPoint(Long point) 
    {
        this.point = point;
    }

    public Long getPoint() 
    {
        return point;
    }
    public void setLikeCnt(Long likeCnt) 
    {
        this.likeCnt = likeCnt;
    }

    public Long getLikeCnt() 
    {
        return likeCnt;
    }
    public void setReportCnt(Long reportCnt) 
    {
        this.reportCnt = reportCnt;
    }

    public Long getReportCnt() 
    {
        return reportCnt;
    }
    public void setReservedPort1(String reservedPort1) 
    {
        this.reservedPort1 = reservedPort1;
    }

    public String getReservedPort1() 
    {
        return reservedPort1;
    }
    public void setReservedPort2(String reservedPort2) 
    {
        this.reservedPort2 = reservedPort2;
    }

    public String getReservedPort2() 
    {
        return reservedPort2;
    }
    public void setReservedPort3(String reservedPort3) 
    {
        this.reservedPort3 = reservedPort3;
    }

    public String getReservedPort3() 
    {
        return reservedPort3;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("remarkId", getRemarkId())
            .append("parentId", getParentId())
            .append("ancestors", getAncestors())
            .append("stat", getStat())
            .append("remarkName", getRemarkName())
            .append("delFlag", getDelFlag())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remarkContent", getRemarkContent())
            .append("point", getPoint())
            .append("likeCnt", getLikeCnt())
            .append("reportCnt", getReportCnt())
            .append("reservedPort1", getReservedPort1())
            .append("reservedPort2", getReservedPort2())
            .append("reservedPort3", getReservedPort3())
            .toString();
    }
}
