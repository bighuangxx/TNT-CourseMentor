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
import com.ruoyi.system.domain.SysUserRemark;
import com.ruoyi.system.service.ISysUserRemarkService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 没用Controller
 *
 * @author ruoyi
 * @date 2024-05-12
 */
@RestController
@RequestMapping("/system/user-remark")
public class SysUserRemarkController extends BaseController
{
    @Autowired
    private ISysUserRemarkService sysUserRemarkService;

    /**
     * 查询没用列表
     */
    @PreAuthorize("@ss.hasPermi('system:remark:list')")
    @GetMapping("/list")
    public TableDataInfo list(SysUserRemark sysUserRemark)
    {
        startPage();
        List<SysUserRemark> list = sysUserRemarkService.selectSysUserRemarkList(sysUserRemark);
        return getDataTable(list);
    }

    /**
     * 导出没用列表
     */
    @PreAuthorize("@ss.hasPermi('system:remark:export')")
    @Log(title = "没用", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SysUserRemark sysUserRemark)
    {
        List<SysUserRemark> list = sysUserRemarkService.selectSysUserRemarkList(sysUserRemark);
        ExcelUtil<SysUserRemark> util = new ExcelUtil<SysUserRemark>(SysUserRemark.class);
        util.exportExcel(response, list, "没用数据");
    }

    /**
     * 获取没用详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:remark:query')")
    @GetMapping(value = "/{remarkId}")
    public AjaxResult getInfo(@PathVariable("remarkId") Long remarkId)
    {
        return success(sysUserRemarkService.selectSysUserRemarkByRemarkId(remarkId));
    }

    /**
     * 新增没用
     */
    @PreAuthorize("@ss.hasPermi('system:remark:add')")
    @Log(title = "没用", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SysUserRemark sysUserRemark)
    {
        return toAjax(sysUserRemarkService.insertSysUserRemark(sysUserRemark));
    }

    /**
     * 修改没用
     */
    @PreAuthorize("@ss.hasPermi('system:remark:edit')")
    @Log(title = "没用", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SysUserRemark sysUserRemark)
    {
        return toAjax(sysUserRemarkService.updateSysUserRemark(sysUserRemark));
    }

    /**
     * 删除没用
     */
    @PreAuthorize("@ss.hasPermi('system:remark:remove')")
    @Log(title = "没用", businessType = BusinessType.DELETE)
	@DeleteMapping("/{remarkIds}")
    public AjaxResult remove(@PathVariable Long[] remarkIds)
    {
        return toAjax(sysUserRemarkService.deleteSysUserRemarkByRemarkIds(remarkIds));
    }
    /**
     * 查询 likeOrReport 的值
     * @param remarkId 备注ID
     * @return likeOrReport 的值，如果没有返回0
     */


}
