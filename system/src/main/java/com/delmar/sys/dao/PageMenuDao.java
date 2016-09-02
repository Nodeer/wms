/******************************************************************************
 * 版权所有 刘大磊 2013-07-01												      *
 *	作者：刘大磊								                                      *
 * 电话：13336390671                                                          * 
 * email:ldlqdsd@126.com						                          *
 *****************************************************************************/

package com.delmar.sys.dao;

import java.util.List;

import com.delmar.sys.model.PageMenu;
import com.delmar.core.dao.CoreDao;

/**
 * @author 刘大磊 2015-01-13 09:38:51
 */
public interface PageMenuDao extends CoreDao<PageMenu> {

	/**
	 * @param userId
	 * @return
	 */
	List<PageMenu> getPageMenusbyUserId(Integer userId);

}
