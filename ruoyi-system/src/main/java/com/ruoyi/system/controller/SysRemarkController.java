package com.ruoyi.system.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.SysRemark;
import com.ruoyi.system.service.ISysRemarkService;
import com.ruoyi.common.utils.poi.ExcelUtil;

/**
 * 评论Controller
 * 
 * @author ruoyi
 * @date 2024-05-11
 */
@RestController
@RequestMapping("/system/remark")
public class SysRemarkController extends BaseController
{
    @Autowired
    private ISysRemarkService sysRemarkService;

    /**
     * 查询评论列表
     */
    @PreAuthorize("@ss.hasPermi('system:remark:list')")
    @GetMapping("/list")
    public AjaxResult list(SysRemark sysRemark)
    {
        List<SysRemark> list = sysRemarkService.selectSysRemarkList(sysRemark);
        return success(list);
    }

    /**
     * 导出评论列表
     */
    @PreAuthorize("@ss.hasPermi('system:remark:export')")
    @Log(title = "评论", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SysRemark sysRemark)
    {
        List<SysRemark> list = sysRemarkService.selectSysRemarkList(sysRemark);
        ExcelUtil<SysRemark> util = new ExcelUtil<SysRemark>(SysRemark.class);
        util.exportExcel(response, list, "评论数据");
    }

    /**
     * 获取评论详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:remark:query')")
    @GetMapping(value = "/{remarkId}")
    public AjaxResult getInfo(@PathVariable("remarkId") Long remarkId)
    {
        return success(sysRemarkService.selectSysRemarkByRemarkId(remarkId));
    }

    /**
     * 新增评论
     */
    @PreAuthorize("@ss.hasPermi('system:remark:add')")
    @Log(title = "评论", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SysRemark sysRemark)
    {
        return toAjax(sysRemarkService.insertSysRemark(sysRemark));
    }

    /**
     * 修改评论
     */
    @PreAuthorize("@ss.hasPermi('system:remark:edit')")
    @Log(title = "评论", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SysRemark sysRemark)
    {
        return toAjax(sysRemarkService.updateSysRemark(sysRemark));
    }

    /**
     * 删除评论
     */
    @PreAuthorize("@ss.hasPermi('system:remark:remove')")
    @Log(title = "评论", businessType = BusinessType.DELETE)
	@DeleteMapping("/{remarkIds}")
    public AjaxResult remove(@PathVariable Long[] remarkIds)
    {
        return toAjax(sysRemarkService.deleteSysRemarkByRemarkIds(remarkIds));
    }
}
